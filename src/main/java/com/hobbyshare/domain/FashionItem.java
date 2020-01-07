package com.hobbyshare.domain;

import java.util.List;

public class FashionItem {
	private int fashionItemNo;
	private String itemName;
	private int price;
	private int category;
	private List<FashionItemPhoto> fashionItemPhoto;
	private List<FashionItemOption> fashionItemOption;
	
	public int getFashionItemNo() {
		return fashionItemNo;
	}
	public void setFashionItemNo(int fashionItemNo) {
		this.fashionItemNo = fashionItemNo;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public List<FashionItemPhoto> getFashionItemPhoto() {
		return fashionItemPhoto;
	}
	public void setFashionItemPhoto(List<FashionItemPhoto> fashionItemPhoto) {
		this.fashionItemPhoto = fashionItemPhoto;
	}
	public List<FashionItemOption> getFashionItemOption() {
		return fashionItemOption;
	}
	public void setFashionItemOption(List<FashionItemOption> fashionItemOption) {
		this.fashionItemOption = fashionItemOption;
	}
	@Override
	public String toString() {
		return "FashionItem [fashionItemNo=" + fashionItemNo + ", itemName=" + itemName + ", price=" + price
				+ ", category=" + category + ", fashionItemPhoto=" + fashionItemPhoto + ", fashionItemOption="
				+ fashionItemOption + "]";
	}
	
	
	
	
}
