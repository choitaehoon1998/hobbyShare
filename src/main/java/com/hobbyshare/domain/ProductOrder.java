package com.hobbyshare.domain;

import java.sql.Date;

public class ProductOrder {
	private int productOrderNo;
	private int quantity;
	private int paymentState;
	private Date orderedDate;
	private int basketNo;
	private int fashionItemOptionNo;
	private int memberNo;
	private int trackingNo;
	
	public int getProductOrderNo() {
		return productOrderNo;
	}
	public void setProductOrderNo(int productOrderNo) {
		this.productOrderNo = productOrderNo;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPaymentState() {
		return paymentState;
	}
	public void setPaymentState(int paymentState) {
		this.paymentState = paymentState;
	}
	public Date getOrderedDate() {
		return orderedDate;
	}
	public void setOrderedDate(Date orderedDate) {
		this.orderedDate = orderedDate;
	}
	public int getBasketNo() {
		return basketNo;
	}
	public void setBasketNo(int basketNo) {
		this.basketNo = basketNo;
	}
	public int getFashionItemOptionNo() {
		return fashionItemOptionNo;
	}
	public void setFashionItemOptionNo(int fashionItemOptionNo) {
		this.fashionItemOptionNo = fashionItemOptionNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public int getTrackingNo() {
		return trackingNo;
	}
	public void setTrackingNo(int trackingNo) {
		this.trackingNo = trackingNo;
	}
	
	@Override
	public String toString() {
		return "ProductOrder [productOrderNo=" + productOrderNo + ", quantity=" + quantity + ", paymentState="
				+ paymentState + ", orderedDate=" + orderedDate + ", basketNo=" + basketNo + ", fashionItemOptionNo="
				+ fashionItemOptionNo + ", memberNo=" + memberNo + ", trackingNo=" + trackingNo + "]";
	}
}
