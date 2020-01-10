package com.hobbyshare.domain;


public class FashionItemPhoto {
	private int fashionItemPhotoNo;
	private int fashionItemNo;
	private String filePath;
	
	public int getFashionItemPhotoNo() {
		return fashionItemPhotoNo;
	}
	public void setFashionItemPhotoNo(int fashionItemPhotoNo) {
		this.fashionItemPhotoNo = fashionItemPhotoNo;
	}
	public int getFashionItemNo() {
		return fashionItemNo;
	}
	public void setFashionItemNo(int fashionItemNo) {
		this.fashionItemNo = fashionItemNo;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	@Override
	public String toString() {
		return "FashionItemPhoto [fashionItemPhotoNo=" + fashionItemPhotoNo + ", fashionItemNo=" + fashionItemNo
				+ ", filePath=" + filePath + "]";
	}
	
	
	
	
	
	
}
