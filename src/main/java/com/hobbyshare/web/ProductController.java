package com.hobbyshare.web;


import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product")
public class ProductController {
  
  @GetMapping("form")
  public String form(HttpSession session) { 
    return "product/form";
  }
  @GetMapping("manage")
  public void manage(HttpSession session) {
    session.getAttribute("maeand");

  }
}