package com.hobbyshare.web;

import java.util.HashMap;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import com.hobbyshare.domain.Member;
import com.hobbyshare.domain.SoccerProduct;
import com.hobbyshare.service.MemberService;
import com.hobbyshare.service.SoccerProductService;

@Controller
@RequestMapping("/soccerproduct")
@SessionAttributes("loginUser")
public class SoccerProductController {
  
  @Resource private SoccerProductService soccerProductService;
  @Resource private PhotoFileWriter photoFileWriter;
  @Resource private MemberService memberService;
  
  @GetMapping("form")
  public void form(@ModelAttribute("loginUser") Member loginUser, Model model)
          throws Exception{
    Member member = memberService.get(loginUser.getMemberNo());
    model.addAttribute("member", member);
  }
  
  @PostMapping("add")
  public String add(@ModelAttribute("loginUser") Member loginUser, SoccerProduct soccerProduct, MultipartFile[] filePath) 
      throws Exception {
    Member member = memberService.get(loginUser.getMemberNo());
    soccerProduct.setMemberNo(member.getMemberNo());
    
    soccerProduct.setFiles(photoFileWriter.getPhotoFiles(filePath));
    System.out.println("======> " + soccerProduct.getFiles());
    soccerProductService.insert(soccerProduct);
    return "redirect:list";
  }
  
  @GetMapping("list")
  public void list(Model model) throws Exception {
//    if (loginUser != null) {
//      Member member = memberService.get(loginUser.getMemberNo());
//      model.addAttribute("member", member);
//    }
    List<SoccerProduct> soccerProducts = soccerProductService.list();
    model.addAttribute("soccerProducts", soccerProducts);
  }
  
  @GetMapping("detail")
  public void detail(Model model, int no, @ModelAttribute("loginUser") Member loginUser) throws Exception {
    if (loginUser != null) {
      Member member = memberService.get(loginUser.getMemberNo());
      model.addAttribute("member", member);
    }
    SoccerProduct soccerProduct = soccerProductService.get(no);
    model.addAttribute("soccerProduct", soccerProduct);
  }
  
  @GetMapping("delete")
  public String delete(int no) throws Exception {
    soccerProductService.delete(no);
    return "redirect:list";
  }
  
  @PostMapping("updateform")
  public void updateform(Model model, int no, @ModelAttribute("loginUser") Member loginUser) throws Exception {
    Member member = memberService.get(loginUser.getMemberNo());
    SoccerProduct soccerProduct = soccerProductService.get(no);
    System.out.println(soccerProduct);
    model.addAttribute("soccerProduct", soccerProduct);
    model.addAttribute("member", member);
  }
  
  @PostMapping("update")
  public String update(
//      SoccerProduct soccerProduct)
  SoccerProduct soccerProduct, MultipartFile[] filePath)
          throws Exception {
    HashMap<String, Object> map = new HashMap<String, Object>();
    map.put("title", soccerProduct.getTitle());
    map.put("price", soccerProduct.getPrice());
    map.put("content", soccerProduct.getContent());
    map.put("soccerProductNo", soccerProduct.getSoccerProductNo());
    soccerProduct.setFiles(photoFileWriter.getPhotoFiles(filePath));
    soccerProductService.insertphotos(soccerProduct);
    soccerProductService.update(map);
    return "redirect:detail?no=" + soccerProduct.getSoccerProductNo();
  }

}


