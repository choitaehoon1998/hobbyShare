package com.hobbyshare.domain;

import java.io.Serializable;
import java.sql.Date;

public class SoccerProductComment implements Serializable{
  private static final long serialVersionUID = 1L;
  
  private int commentNo;
  private int memberNo;
  private int soccerProductNo;
  private String content;
  private Date createdDate;
  
  @Override
  public String toString() {
    return "SoccerProductComment [commentNo=" + commentNo + ", memberNo=" + memberNo
        + ", soccerProductNo=" + soccerProductNo + ", content=" + content + ", createdDate="
        + createdDate + "]";
  }
  public int getCommentNo() {
    return commentNo;
  }
  public void setCommentNo(int commentNo) {
    this.commentNo = commentNo;
  }
  public int getMemberNo() {
    return memberNo;
  }
  public void setMemberNo(int memberNo) {
    this.memberNo = memberNo;
  }
  public int getSoccerProductNo() {
    return soccerProductNo;
  }
  public void setSoccerProductNo(int soccerProductNo) {
    this.soccerProductNo = soccerProductNo;
  }
  public String getContent() {
    return content;
  }
  public void setContent(String content) {
    this.content = content;
  }
  public Date getCreatedDate() {
    return createdDate;
  }
  public void setCreatedDate(Date createdDate) {
    this.createdDate = createdDate;
  }
  
}
