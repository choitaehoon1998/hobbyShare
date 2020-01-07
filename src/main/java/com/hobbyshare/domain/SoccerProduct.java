package com.hobbyshare.domain;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class SoccerProduct implements Serializable {
  private static final long serialVersionUID = 1L;

  private int soccerProductNo;
  private int memberNo;
  private String title;
  private int price;
  private String content;
  private int status;
  private Date createdDate;
  private Member member;
  
  private List<PhotoFile> files;

  public Member getMember() {
    return member;
  }
  public void setMember(Member member) {
    this.member = member;
  }
  
  public List<PhotoFile> getFiles() {
    return files;
  }
  public void setFiles(List<PhotoFile> files) {
    this.files = files;
  }
  public int getSoccerProductNo() {
    return soccerProductNo;
  }
  public void setSoccerProductNo(int soccerProductNo) {
    this.soccerProductNo = soccerProductNo;
  }
  public int getMemberNo() {
    return memberNo;
  }
  public void setMemberNo(int memberNo) {
    this.memberNo = memberNo;
  }
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }
  public int getPrice() {
    return price;
  }
  public void setPrice(int price) {
    this.price = price;
  }
  public String getContent() {
    return content;
  }
  public void setContent(String content) {
    this.content = content;
  }
  public int getStatus() {
    return status;
  }
  public void setStatus(int status) {
    this.status = status;
  }
  public Date getCreatedDate() {
    return createdDate;
  }
  public void setCreatedDate(Date createdDate) {
    this.createdDate = createdDate;
  }
  @Override
  public String toString() {
    return "SoccerProduct [soccerProductNo=" + soccerProductNo + ", memberNo=" + memberNo
        + ", title=" + title + ", price=" + price + ", content=" + content + ", status=" + status
        + ", createdDate=" + createdDate + ", member=" + member + ", files=" + files + "]";
  }
  
}