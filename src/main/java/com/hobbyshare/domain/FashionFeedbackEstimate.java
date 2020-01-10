package com.hobbyshare.domain;

import java.sql.Date;

public class FashionFeedbackEstimate {
	private int fashionFeedbackEstimateNo;
	private int fashionFeedbackNo;
	private String contents;
	private int rating;
	private int memberNo;
	private Date registeredDate;
	
	public int getFashionFeedbackEstimateNo() {
		return fashionFeedbackEstimateNo;
	}
	public void setFashionFeedbackEstimateNo(int fashionFeedbackEstimateNo) {
		this.fashionFeedbackEstimateNo = fashionFeedbackEstimateNo;
	}
	public int getFashionFeedbackNo() {
		return fashionFeedbackNo;
	}
	public void setFashionFeedbackNo(int fashionFeedbackNo) {
		this.fashionFeedbackNo = fashionFeedbackNo;
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
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public Date getRegisteredDate() {
		return registeredDate;
	}
	public void setRegisteredDate(Date registeredDate) {
		this.registeredDate = registeredDate;
	}
	
	@Override
	public String toString() {
		return "FashionFeedbackEstimate [fashionFeedbackEstimateNo=" + fashionFeedbackEstimateNo
				+ ", fashionFeedbackNo=" + fashionFeedbackNo + ", contents=" + contents + ", rating=" + rating
				+ ", memberNo=" + memberNo + ", registeredDate=" + registeredDate + "]";
	}

	
}
