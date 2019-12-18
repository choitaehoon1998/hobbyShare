package com.hobbyshare.domain;

import java.sql.Date;

import lombok.Data;

public @Data class Community {
   private int communityNo;
   private int memberNo;
   private String title;
   private String content;
   private Date createdDate;
   private int categoryNo;
   private int viewCount;
   

}