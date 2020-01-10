package com.hobbyshare.dao;

import com.hobbyshare.domain.Restaurant;
import com.hobbyshare.domain.RestaurantReview;

public interface RestaurantDao {
	void add(Restaurant restaurant) throws Exception;
	void addReview(RestaurantReview restaurantReview) throws Exception;
}
