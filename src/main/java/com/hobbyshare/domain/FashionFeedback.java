package com.hobbyshare.domain;

import java.sql.Date;
import java.util.List;

public class FashionFeedback {
	private int fashionFeedbackNo;
	private String contents;
	private Date registerDate;
	private int memberNo;
	private int viewCount;
	private int category;
	private Member member; 
	private List<FashionFeedbackPhoto> fashionFeedbackPhoto ; 
	private List<FashionFeedbackEstimate> fashionFeedbackEstimate;
	private List<FashionFeedbackRecommend> fashionFeedbackRecommend ; 
	
	public int getFashionFeedbackNo() {
		return fashionFeedbackNo;
	}

	public void setFashionFeedbackNo(int fashionFeedbackNo) {
		this.fashionFeedbackNo = fashionFeedbackNo;
	}
	
	public Date getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getViewCount() {
		return viewCount;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public List<FashionFeedbackPhoto> getFashionFeedbackPhoto() {
		return fashionFeedbackPhoto;
	}

	public void setFashionFeedbackPhoto(List<FashionFeedbackPhoto> fashionFeedbackPhoto) {
		this.fashionFeedbackPhoto = fashionFeedbackPhoto;
	}

	public List<FashionFeedbackEstimate> getFashionFeedbackEstimate() {
		return fashionFeedbackEstimate;
	}

	public void setFashionFeedbackEstimate(List<FashionFeedbackEstimate> fashionFeedbackEstimate) {
		this.fashionFeedbackEstimate = fashionFeedbackEstimate;
	}

	public List<FashionFeedbackRecommend> getFashionFeedbackRecommend() {
		return fashionFeedbackRecommend;
	}

	public void setFashionFeedbackRecommend(List<FashionFeedbackRecommend> fashionFeedbackRecommend) {
		this.fashionFeedbackRecommend = fashionFeedbackRecommend;
	}

	@Override
	public String toString() {
		return "FashionFeedback [fashionFeedbackNo=" + fashionFeedbackNo + ", contents=" + contents + ", registerDate="
				+ registerDate + ", memberNo=" + memberNo + ", viewCount=" + viewCount + ", category=" + category
				+ ", member=" + member + ", fashionFeedbackPhoto=" + fashionFeedbackPhoto + ", fashionFeedbackEstimate="
				+ fashionFeedbackEstimate + ", fashionFeedbackRecommend=" + fashionFeedbackRecommend + "]";
	}

	
	
	
	
}
