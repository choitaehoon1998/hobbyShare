package com.hobbyshare.domain;

import java.sql.Date;

import lombok.Data;

public @Data class CommunityComment {
   private int communityCommentNo;
   private int communityNo;
   private int memberNo;
   private String content;
   private Date createdDate;

   

}