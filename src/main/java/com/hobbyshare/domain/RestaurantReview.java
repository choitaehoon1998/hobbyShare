package com.hobbyshare.domain;

import java.sql.Date;

public class RestaurantReview {
	private int restaurantReviewNo;
	private int restaurantNo;
	private int memberNo;
	private int rating;
	private String content;
	private Date createDate;
	private String filePath;
	
	@Override
	public String toString() {
		return "RestaurantReview [restaurantReviewNo=" + restaurantReviewNo + ", restaurantNo=" + restaurantNo
				+ ", memberNo=" + memberNo + ", rating=" + rating + ", content=" + content + ", createDate="
				+ createDate + ", filePath=" + filePath + "]";
	}
	public int getRestaurantReviewNo() {
		return restaurantReviewNo;
	}
	public void setRestaurantReviewNo(int restaurantReviewNo) {
		this.restaurantReviewNo = restaurantReviewNo;
	}
	public int getRestaurantNo() {
		return restaurantNo;
	}
	public void setRestaurantNo(int restaurantNo) {
		this.restaurantNo = restaurantNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	
}
