package com.hobbyshare.web.json;

import java.util.List;
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
import com.hobbyshare.service.SoccerProductCommentService;

@RestController("json.SoccerProductCommentController")
@RequestMapping("/json/soccerproductcomment")
@SessionAttributes("loginUser")
public class SoccerProductCommentController {

  @Resource private MemberService memberService;
  @Resource private SoccerProductCommentService soccerProductCommentService;
  
  @PostMapping("add")
  public JsonResult add(
      SoccerProductComment soccerProductComment, @ModelAttribute("loginUser") Member loginUser) {
    try {
      Member member = memberService.get(loginUser.getMemberNo());
      soccerProductComment.setMemberNo(member.getMemberNo());
      soccerProductCommentService.insert(soccerProductComment);
      return new JsonResult().setState(JsonResult.SUCCESS);
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  
  @GetMapping("list")
  public JsonResult list() {
    try {
      System.out.println("들어옴?");
      List<SoccerProductComment> comments = soccerProductCommentService.list();
      return new JsonResult().setState(JsonResult.SUCCESS).setResult(comments);
    } catch(Exception e ) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
}
