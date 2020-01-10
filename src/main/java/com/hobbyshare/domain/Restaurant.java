package com.hobbyshare.domain;

public class Restaurant {
	private int restaurantNo;
	private int memberNo;
	private String restaurantName;
	private String address;
	private String tel;
	
	@Override
	public String toString() {
		return "Restaurant [restaurantNo=" + restaurantNo + ", memberNo=" + memberNo + ", restaurantName="
				+ restaurantName + ", address=" + address + ", tel=" + tel + "]";
	}
	public int getRestaurantNo() {
		return restaurantNo;
	}
	public void setRestaurantNo(int restaurantNo) {
		this.restaurantNo = restaurantNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getRestaurantName() {
		return restaurantName;
	}
	public void setRestaurantName(String restaurantName) {
		this.restaurantName = restaurantName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
}
