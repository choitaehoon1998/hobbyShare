package com.hobbyshare.domain;


public class FashionItemOption {
	private int fashionItemOptionNo;
	private int fashionItemNo;
	private String optionName;
	private int optionSize;
	private int stock;
	public int getFashionItemOptionNo() {
		return fashionItemOptionNo;
	}
	public void setFashionItemOptionNo(int fashionItemOptionNo) {
		this.fashionItemOptionNo = fashionItemOptionNo;
	}
	public int getFashionItemNo() {
		return fashionItemNo;
	}
	public void setFashionItemNo(int fashionItemNo) {
		this.fashionItemNo = fashionItemNo;
	}
	public String getOptionName() {
		return optionName;
	}
	public void setOptionName(String optionName) {
		this.optionName = optionName;
	}
	public int getOptionSize() {
		return optionSize;
	}
	public void setOptionSize(int optionSize) {
		this.optionSize = optionSize;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	@Override
	public String toString() {
		return "FashionItemOption [fashionItemOptionNo=" + fashionItemOptionNo + ", fashionItemNo=" + fashionItemNo
				+ ", optionName=" + optionName + ", optionSize=" + optionSize + ", stock=" + stock + "]";
	}
	
	
	
	
}
