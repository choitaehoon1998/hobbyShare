package com.hobbyshare.domain;

import lombok.Data;

public @Data class CommunityPhoto {
   private int communityNo;
   private int communityPhotoNo;
   private String filePath; 
}