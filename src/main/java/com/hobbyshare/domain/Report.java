package com.hobbyshare.domain;


import lombok.Data;

public @Data class Report {
   private int reportNo;
   private int memberNo;
   private int reportMemberNo;
   private String content;
   private String filePath;   
}