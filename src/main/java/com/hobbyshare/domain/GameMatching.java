package com.hobbyshare.domain;

import java.sql.Date;

public class GameMatching {
  private int gameMatchingNo;
  private int summonerNo;
  private String wantedPosition;
  private String wantedGender;
  private String wantedVoice;
  private Date createdDate;

  public int getGameMatchingNo() {
    return gameMatchingNo;
  }

  public void setGameMatchingNo(int gameMatchingNo) {
    this.gameMatchingNo = gameMatchingNo;
  }

  public int getSummonerNo() {
    return summonerNo;
  }

  public void setSummonerNo(int summonerNo) {
    this.summonerNo = summonerNo;
  }

  public String getWantedPosition() {
    return wantedPosition;
  }

  public void setWantedPosition(String wantedPosition) {
    this.wantedPosition = wantedPosition;
  }

  public String getWantedGender() {
    return wantedGender;
  }

  public void setWantedGender(String wantedGender) {
    this.wantedGender = wantedGender;
  }

  public String getWantedVoice() {
    return wantedVoice;
  }

  public void setWantedVoice(String wantedVoice) {
    this.wantedVoice = wantedVoice;
  }

  public Date getCreatedDate() {
    return createdDate;
  }

  public void setCreatedDate(Date createdDate) {
    this.createdDate = createdDate;
  }

  @Override
  public String toString() {
    return "GameMatching [createdDate=" + createdDate + ", gameMatchingNo=" + gameMatchingNo + ", summonerNo="
        + summonerNo + ", wantedGender=" + wantedGender + ", wantedPosition=" + wantedPosition + ", wantedVoice="
        + wantedVoice + "]";
  }

}
