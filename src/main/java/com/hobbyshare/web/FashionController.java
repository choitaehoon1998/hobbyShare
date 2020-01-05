package com.hobbyshare.web;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import com.hobbyshare.domain.FashionFeedback;
import com.hobbyshare.domain.FashionItem;
import com.hobbyshare.domain.Member;
import com.hobbyshare.service.FashionService;

@Controller
@RequestMapping("/fashion")
public class FashionController {
	@Resource 
	private FashionService fashionService;
	@Resource 
	private FashionFeedbackPhotoWriter fashionFeedbackPhotoWriter;
	
	@GetMapping("feedback")
	public void feedback(Model model) throws Exception {
		List<FashionFeedback> feedbacks =fashionService.list();
		model.addAttribute("feedbacks", feedbacks);
	}
	
	@GetMapping("feedbackform")
	public void feedbackform() throws Exception {

	}
	
	@Transactional
	@PostMapping("feedbackadd")
	public String feedbackadd(HttpSession session, MultipartFile[] filepath,FashionFeedback fashionFeedback ) throws Exception {
		 Member member =(Member)session.getAttribute("loginUser");
		 fashionFeedback.setMemberNo(member.getMemberNo());
		 fashionFeedback.setFashionFeedbackPhoto(fashionFeedbackPhotoWriter.getPhotoFiles(filepath));
		 
		 fashionService.insert(fashionFeedback);
		 
		 return "redirect:list";
	
	}

	@GetMapping("shop")
	public void shop(Model model)  throws Exception{
		List<FashionItem> fashionItems = fashionService.itemList();
		System.out.println(fashionItems);
		model.addAttribute("items",fashionItems);
	}

	@GetMapping("order")
	public void order() {
	}

	@GetMapping("payment")
	public void payment() {

	}

	@GetMapping("itemdetail")
	public void itemdetail(Model model) throws Exception {
		FashionItem fashionItem = fashionService.fashionItem();
		model.addAttribute("fashionItem",fashionItem );
	}


}