package com.hobbyshare.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class MainController {
   
  @GetMapping("/main")
  public void main() {
    
  }
  @GetMapping("/main2")
  public void main2() {
    
  }
}