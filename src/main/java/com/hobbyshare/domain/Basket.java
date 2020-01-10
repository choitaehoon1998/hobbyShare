package com.hobbyshare.domain;


public class Basket {
	private int basketNo;
	private int quantity;
	private int fashionOptionItemNo;
	private int memberNo;
	
	public int getBasketNo() {
		return basketNo;
	}
	public void setBasketNo(int basketNo) {
		this.basketNo = basketNo;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getFashionOptionItemNo() {
		return fashionOptionItemNo;
	}
	public void setFashionOptionItemNo(int fashionOptionItemNo) {
		this.fashionOptionItemNo = fashionOptionItemNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	
	@Override
	public String toString() {
		return "Basket [basketNo=" + basketNo + ", quantity=" + quantity + ", fashionOptionItemNo="
				+ fashionOptionItemNo + ", memberNo=" + memberNo + "]";
	}
	
	
	
	
}
