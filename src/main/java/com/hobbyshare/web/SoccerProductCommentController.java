package com.hobbyshare.web;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.hobbyshare.domain.Member;
import com.hobbyshare.domain.SoccerProductComment;
import com.hobbyshare.service.MemberService;
import com.hobbyshare.service.SoccerProductCommentService;

@Controller
@RequestMapping("/soccerproductcomment")
public class SoccerProductCommentController {
  
  @Resource private SoccerProductCommentService soccerProductCommentService;
  @Resource private MemberService memberService;
  
  @GetMapping("form")
  public void form() {
  }
  
  @PostMapping("add")
  public String add(SoccerProductComment soccerProductComment,  int no, @ModelAttribute("loginUser") Member loginUser) throws Exception {
    System.out.println("aaaaa");
    Member member = memberService.get(loginUser.getMemberNo());
    soccerProductComment.setMemberNo(member.getMemberNo());
    soccerProductComment.setSoccerProductNo(no);
    soccerProductCommentService.insert(soccerProductComment);
    return "redirect: list";
  }
  
  @GetMapping("list")
  public void list(Model model) throws Exception {
    List<SoccerProductComment> comments = soccerProductCommentService.list();
    model.addAttribute("comments", comments);
  }
}








