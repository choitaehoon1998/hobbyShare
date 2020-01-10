package com.hobbyshare.web.json;

import javax.annotation.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.hobbyshare.domain.Member;
import com.hobbyshare.domain.SoccerProductComment;
import com.hobbyshare.service.MemberService;
import com.hobbyshare.service.SoccerProductService;

@RestController("json.SoccerProductController")
@RequestMapping("/json/soccerproduct")
@SessionAttributes("loginUser")
public class SoccerProductController {
  
  @Resource private MemberService memberService;
  @Resource private SoccerProductService soccerProductService;
  
  @GetMapping("deletephoto")
  public JsonResult deletephotos(int no) throws Exception{
    try {
      soccerProductService.deletephoto(no);
      return new JsonResult().setState(JsonResult.SUCCESS);
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  
  @PostMapping("add")
  public JsonResult add(
      SoccerProductComment soccerProductComment, int no, @ModelAttribute("loginUser") Member loginUser) {
    try {
      System.out.println(soccerProductComment);
      Member member = memberService.get(loginUser.getMemberNo());
      soccerProductComment.setMemberNo(member.getMemberNo());
      soccerProductComment.setSoccerProductNo(no);
//      soccerProductCommentService.insert(soccerProductComment);
      return new JsonResult().setState(JsonResult.SUCCESS);
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }

}
