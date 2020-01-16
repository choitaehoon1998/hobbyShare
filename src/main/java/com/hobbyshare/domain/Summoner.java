package com.hobbyshare.domain;

import java.util.List;

public class Summoner {
    private int summonerNo;
    private int memberNo;
    private String name;
    private String id;
    private int summonerLevel;
    private String profileIcon;
    private String tier;
    private String rank;
    private int wins;
    private int losses;
    private int leaguePoints;

    public int getSummonerNo() {
        return summonerNo;
    }

    public void setSummonerNo(int summonerNo) {
        this.summonerNo = summonerNo;
    }

    public int getMemberNo() {
        return memberNo;
    }

    public void setMemberNo(int memberNo) {
        this.memberNo = memberNo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getSummonerLevel() {
        return summonerLevel;
    }

    public void setSummonerLevel(int summonerLevel) {
        this.summonerLevel = summonerLevel;
    }

    public String getProfileIcon() {
        return profileIcon;
    }

    public void setProfileIcon(String profileIcon) {
        this.profileIcon = profileIcon;
    }

    public String getTier() {
        return tier;
    }

    public void setTier(String tier) {
        this.tier = tier;
    }

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }

    public int getWins() {
        return wins;
    }

    public void setWins(int wins) {
        this.wins = wins;
    }

    public int getLosses() {
        return losses;
    }

    public void setLosses(int losses) {
        this.losses = losses;
    }

    public int getLeaguePoints() {
        return leaguePoints;
    }

    public void setLeaguePoints(int leaguePoints) {
        this.leaguePoints = leaguePoints;
    }

    @Override
    public String toString() {
        return "Summoner [id=" + id + ", leaguePoints=" + leaguePoints + ", losses=" + losses + ", memberNo=" + memberNo
                + ", name=" + name + ", profileIcon=" + profileIcon + ", rank=" + rank + ", summonerLevel="
                + summonerLevel + ", summonerNo=" + summonerNo + ", tier=" + tier + ", wins=" + wins + "]";
    }

}