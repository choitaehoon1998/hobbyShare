package com.hobbyshare.domain;

import java.sql.Date;

public class FashionFeedbackRecommend {
	private int fashionFeedbackNo;
	private int memberNo;
	private Date registeredDate;

	public int getFashionFeedbackNo() {
		return fashionFeedbackNo;
	}
	public void setFashionFeedbackNo(int fashionFeedbackNo) {
		this.fashionFeedbackNo = fashionFeedbackNo;
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
		return "FashionFeedbackRecommend [fashionFeedbackNo=" + fashionFeedbackNo + ", memberNo=" + memberNo
				+ ", registeredDate=" + registeredDate + "]";
	}

}
