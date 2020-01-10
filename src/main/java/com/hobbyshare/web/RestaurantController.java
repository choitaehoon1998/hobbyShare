package com.hobbyshare.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hobbyshare.dao.RestaurantDao;
import com.hobbyshare.domain.Restaurant;
import com.hobbyshare.domain.RestaurantReview;

@Controller
@RequestMapping("/restaurant")
public class RestaurantController {
	
	@Autowired
	RestaurantDao restaurantDao;
	
	@GetMapping("form")
	private void form() throws Exception{
	}
	
	@PostMapping("add")
	private void add(
			String file, String name, String address, String tel, String conts) 
					throws Exception{
		Restaurant restaurant = new Restaurant();
		restaurant.setMemberNo(0);
		restaurant.setRestaurantName(name);
		restaurant.setAddress(address);
		restaurant.setTel(tel);
		restaurantDao.add(restaurant);
		
		RestaurantReview restaurantReview = new RestaurantReview();
		restaurantReview.setMemberNo(0);
		restaurantReview.setRestaurantNo(1);
		restaurantReview.setContent(conts);
		restaurantReview.setRating(2);
		restaurantDao.addReview(restaurantReview);
	}
	
}
