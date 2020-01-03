package com.hobbyshare.domain;


public class FashionItem {
	private int fashionItemNo;
	private String itemName;
	private int price;
	private int category;
	
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
	@Override
	public String toString() {
		return "FashionItem [fashionItemNo=" + fashionItemNo + ", itemName=" + itemName + ", price=" + price
				+ ", category=" + category + "]";
	}

	
	
	
}
