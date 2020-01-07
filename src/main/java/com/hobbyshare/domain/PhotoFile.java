package com.hobbyshare.domain;

import java.io.Serializable;

public class PhotoFile implements Serializable {
  private static final long serialVersionUID = 1L;
  
  private int photoFileNo;
  private int soccerProductNo;
  private String filePath;
  
  public int getPhotoFileNo() {
    return photoFileNo;
  }
  public void setPhotoFileNo(int photoFileNo) {
    this.photoFileNo = photoFileNo;
  }
  public int getSoccerProductNo() {
    return soccerProductNo;
  }
  public void setSoccerProductNo(int soccerProductNo) {
    this.soccerProductNo = soccerProductNo;
  }
  public String getFilePath() {
    return filePath;
  }
  public void setFilePath(String filePath) {
    this.filePath = filePath;
  }
  @Override
  public String toString() {
    return "PhotoFile [photoFileNo=" + photoFileNo + ", soccerProductNo=" + soccerProductNo
        + ", filePath=" + filePath + "]";
  }
  
  
}
