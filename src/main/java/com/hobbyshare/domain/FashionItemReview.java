package com.hobbyshare.domain;

import java.sql.Date;

public class FashionItemReview {
	private int fashionItemReviewNo;
	private int productOrderNo;
	private String contents;
	private int rating;
	private Date registeredDate;
	private String filePath;
	
	public int getFashionItemReviewNo() {
		return fashionItemReviewNo;
	}
	public void setFashionItemReviewNo(int fashionItemReviewNo) {
		this.fashionItemReviewNo = fashionItemReviewNo;
	}
	public int getProductOrderNo() {
		return productOrderNo;
	}
	public void setProductOrderNo(int productOrderNo) {
		this.productOrderNo = productOrderNo;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public Date getRegisteredDate() {
		return registeredDate;
	}
	public void setRegisteredDate(Date registeredDate) {
		this.registeredDate = registeredDate;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	
	@Override
	public String toString() {
		return "FashionItemReview [fashionItemReviewNo=" + fashionItemReviewNo + ", productOrderNo=" + productOrderNo
				+ ", contents=" + contents + ", rating=" + rating + ", registeredDate=" + registeredDate + ", filePath="
				+ filePath + "]";
	}
	
	
	
	
	
	
	
}
