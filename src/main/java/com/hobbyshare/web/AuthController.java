package com.hobbyshare.web;

import java.util.HashMap;
import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.hobbyshare.domain.Member;
import com.hobbyshare.service.MemberService;

@Controller
@RequestMapping("/auth")
public class AuthController {

  @Resource
  private MemberService memberService;
  
  @GetMapping("signin")
  public void signin() {
  }
  
  @PostMapping("login")
  @ResponseBody
  public Member login(
      HttpServletResponse response,
      HttpSession session, 
      String email, 
      String password) throws Exception {
    
    Cookie cookie = new Cookie("email", email);
    cookie.setMaxAge(60 * 60 * 24 * 15);
    response.addCookie(cookie);
    
    HashMap<String, Object> params = new HashMap<>();
    params.put("email", email);
    params.put("password", password);
    
    Member member = memberService.login(params);
    session.setAttribute("loginUser", member);
    
    return member;
  }
  
  @GetMapping("findId")
  public void findID() {
  }
  
  @PostMapping("searchId")
  @ResponseBody
  public String searchId(String tel, String name)
      throws Exception {
    Member member = new Member();
    member.setTel(tel);
    member.setName(name);

    return memberService.findId(member);
  }
  
  @GetMapping("findPassword")
  public void findPassword() {
  }
  
  @GetMapping("logout")
  public String logout(HttpSession session) throws Exception {
    session.invalidate();
    return "redirect:/hobbyshare/index";
  }
  
  
//   @PostMapping("searchPassword")
//   @ResponseBody
//   private int searchPassword(String name, String mail) 
//       throws Exception {
//     Member member = new Member();
//     member.setName(name);
//     member.setEmail(mail);
//     
//     return memberService.findPw(member);
//   }
  
}
