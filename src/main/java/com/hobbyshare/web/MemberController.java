package com.hobbyshare.web;

import java.io.File;
import java.util.List;
import java.util.UUID;
import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import com.hobbyshare.domain.Member;
import com.hobbyshare.service.MemberService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

@Controller

@RequestMapping("/member")
public class MemberController {

 @Resource
 private MemberService memberService;

 @GetMapping("signup")
 public void signup() {
}

 @GetMapping("result")
 public void result() {
}

@PostMapping("add")
public String add(Member member) throws Exception {
  memberService.insert(member);
  return "redirect:result";
}

@GetMapping("nicknameCheck")
@ResponseBody
public int nicknameCheck(String nickname) throws Exception{
  return memberService.nicknameCheck(nickname);
}

@GetMapping("emailCheck")
@ResponseBody
public int emailCheck(String email) throws Exception{
  return memberService.emailCheck(email);
}

@GetMapping("telCheck")
@ResponseBody
public int telCheck(String tel) throws Exception{
  return memberService.telCheck(tel);
}

// @GetMapping("form")
// public void form() {
// }
//   @PostMapping("add")
//   public String add(Member member) throws Exception {
//     memberService.insert(member);
//     return "redirect:list";
//   }

//   @GetMapping("detail")
//   public void detail(Model model, @ModelAttribute("loginUser") Member loginUser) throws Exception {
//     Member member = memberService.get(loginUser.getMemberNo());
//     model.addAttribute("member", member);
//   }

//   @PostMapping("update")
//   public String update(Member member, MultipartFile file) throws Exception {
//     member.setPhoto(writeFile(file));
//     memberService.update(member);
//     return "redirect:myprofile";
//   }

//   @GetMapping("delete")
//   public String delete(int no) throws Exception {
//     memberService.delete(no);
//     return "redirect:/app/auth/logout";
//   }

}