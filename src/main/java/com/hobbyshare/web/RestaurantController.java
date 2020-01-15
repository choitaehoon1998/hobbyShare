package com.hobbyshare.web;

import java.io.File;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.hobbyshare.dao.RestaurantDao;
import com.hobbyshare.domain.Member;
import com.hobbyshare.domain.Restaurant;
import com.hobbyshare.domain.RestaurantReview;

@Controller
@RequestMapping("/restaurant")
public class RestaurantController {
	
	@Autowired
	RestaurantDao restaurantDao;
	
	String uploadDir;
	
	public RestaurantController(ServletContext sc) {
	    uploadDir = sc.getRealPath("/upload/restaurant");
	}
	
	@GetMapping("form")
	private void form() throws Exception{
	}
	
	@GetMapping("list")
	private void list(Model model) throws Exception{
		model.addAttribute("reviewList", restaurantDao.reviewList());
//		model.addAttribute("reviewListFile", (RestaurantReview) restaurantDao.reviewList());
	}
	
	@PostMapping("add")
	private String add(
			HttpSession session, MultipartFile filePath, 
			String name, String address, String tel, String conts) 
					throws Exception{
		
		Restaurant restaurant = new Restaurant();
		restaurant.setAddress(address);
		restaurant.setTel(tel);
		Restaurant reviewCheck = restaurantDao.reviewCheck(restaurant);
		RestaurantReview restaurantReview = new RestaurantReview();
		
		System.out.println(filePath);
		if (filePath != null) {
	      String filename = UUID.randomUUID().toString();
	      filePath.transferTo(new File(uploadDir + "/" + filename));
	      restaurantReview.setFilePath(filename);
	      System.out.println(filename);
		}
		
		if(reviewCheck == null) {
			restaurant.setMemberNo(((Member) session.getAttribute("loginUser")).getMemberNo());
			restaurant.setRestaurantName(name);
			restaurantDao.add(restaurant);
			
			Restaurant reviewCheckRe = restaurantDao.reviewCheck(restaurant);
			restaurantReview.setMemberNo(((Member) session.getAttribute("loginUser")).getMemberNo());
			restaurantReview.setRestaurantNo(reviewCheckRe.getRestaurantNo());
			restaurantReview.setContent(conts);
			restaurantReview.setRating(2);
			restaurantDao.addReview(restaurantReview);
		} else {
			restaurantReview.setMemberNo(((Member) session.getAttribute("loginUser")).getMemberNo());
			restaurantReview.setRestaurantNo(reviewCheck.getRestaurantNo());
			restaurantReview.setContent(conts);
			restaurantReview.setRating(2);
			restaurantDao.addReview(restaurantReview);
		}
		return "redirect:/hobbyshare/restaurant/list";
	}
	
}
