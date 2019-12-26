package com.hobbyshare.web.json;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.hobbyshare.domain.Member;
import com.hobbyshare.service.MemberService;

@RestController("json.AuthController")
@RequestMapping("/json/auth")
public class AuthController {
  
  @Resource
  private MemberService memberService;

  @PostMapping("login")
  public JsonResult login(
      HttpServletResponse response, 
      HttpSession session, 
      String email, 
      String password) {
    
    try {
      Cookie cookie = new Cookie("email", email);
      cookie.setMaxAge(60 * 60 * 24 * 15);
      response.addCookie(cookie);
      
      Member member = memberService.get(email, password);
      
      session.setAttribute("loginUser", member);
      
      if (member == null) {
        return new JsonResult().setState(JsonResult.FAILURE);
      }
      
      return new JsonResult().setState(JsonResult.SUCCESS).setResult(member);
    
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
}
