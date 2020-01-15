package com.hobbyshare.dao;

import java.util.List;

import com.hobbyshare.domain.Restaurant;
import com.hobbyshare.domain.RestaurantReview;

public interface RestaurantDao {
	void add(Restaurant restaurant) throws Exception;
	void addReview(RestaurantReview restaurantReview) throws Exception;
	List<Restaurant> reviewList() throws Exception;
	Restaurant reviewCheck(Restaurant restaurant) throws Exception;
}
