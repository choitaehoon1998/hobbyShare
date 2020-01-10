package com.hobbyshare.domain;


public class FashionFeedbackPhoto {
	private int fashionFeedbackPhotoNo;
	private String filePath;
	private int fashionFeedbackNo;
	
	public int getFashionFeedbackPhotoNo() {
		return fashionFeedbackPhotoNo;
	}
	public void setFashionFeedbackPhotoNo(int fashionFeedbackPhotoNo) {
		this.fashionFeedbackPhotoNo = fashionFeedbackPhotoNo;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public int getFashionFeedbackNo() {
		return fashionFeedbackNo;
	}
	public void setFashionFeedbackNo(int fashionFeedbackNo) {
		this.fashionFeedbackNo = fashionFeedbackNo;
	}
	@Override
	public String toString() {
		return "FashionFeedbackPhoto [fashionFeedbackPhotoNo=" + fashionFeedbackPhotoNo + ", filePath=" + filePath
				+ ", fashionFeedbackNo=" + fashionFeedbackNo + "]";
	}
	
	
	
	
}
