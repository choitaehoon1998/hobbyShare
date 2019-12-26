package com.hobbyshare.web;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
  public @ResponseBody int  login(String email, String password) 
      throws Exception {
    int cnt = memberService.loginCheck(email, password);
    return cnt;
  }
  /*
  @PostMapping("login")
  public String login(
    HttpServletResponse response, 
    HttpSession session, 
    String email, 
    String password) throws Exception {
  
    Cookie cookie = new Cookie("email", email);
    cookie.setMaxAge(60 * 60 * 24 * 15);
    response.addCookie(cookie);
    
    Member member = memberService.get(email, password);
    
    session.setAttribute("loginUser", member);
    return "redirect:../index";
  }
  */
}
