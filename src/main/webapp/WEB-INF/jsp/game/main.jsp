<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>

<head>
  <title>게임메인</title>
  <style>
    html {
      background-color: #EEEEEE;
      float: left;
      width: 100%;
    }

    .user_info_form {
      max-width: 800px;
      margin: 0 auto;
      padding: 60px 20px 10px 20px;
    }

    .user_list_form {
      max-width: 800px;
      margin: 0 auto;
      padding: 10px 20px 60px 20px;
    }

    .form-control {
      width: 522px;
      border: 1px solid #d9d9de;
      border-radius: 6px;
      padding: 10px;
      margin-top: 3px;
      margin-bottom: 3px;
    }

    .rounded_frame {
      border: 1px solid #D9D9DE;
      border-radius: 5px;
      background-color: #ffffff;
      padding: 20px;
    }

    .duo-button,
    .update-button {
      margin-top: 15px;
      text-align: center;
      display: inline-block;
      width: 100%;
      border-radius: 5px;
      background-color: #B71C1C;
      color: #ffffff;
      padding-top: 10px;
      padding-bottom: 10px;
      font-weight: bold;
      font-size: 14px;
      border: 0;
    }

    .summoner-profile-icon {
      position: relative;
      display: inline-block;
      font-size: 0;
      line-height: 1;
      vertical-align: top;
      border: 4px solid #B71C1C;
    }

    .summoner-profile-level {
      position: absolute;
      right: -4px;
      bottom: -4px;
      padding: 6px 8px;
      color: #ffffff;
      font-size: 16px;
      text-align: center;
      background-color: #B71C1C;
    }

    .summoner-profile-info {
      display: inline-block;
      margin-left: 24px;
      vertical-align: top;
    }

    .summoner-profile-name {
    font-size: 24px;
}

  </style>
</head>

<body>
  <div class="user_info_form">
    <div class="rounded_frame">
      <h1>내정보</h1>

      <div class="summoner-profile-icon">
        <img src="${summoner.profileIcon}">
        <div class="summoner-profile-level">${summoner.summonerLevel}</div>
      </div>
      <div class="summoner-profile-info">
        <h class="summoner-profile-name">${summoner.name}</h>



            <div class="summoner-tier">
              <p>솔로랭크</p>
              <b>${summoner.tier} ${summoner.rank}</b>
              <span>${summoner.leaguePoints} LP</span><br>
              <span>승률 <fmt:formatNumber value="${summoner.wins/(summoner.wins+summoner.losses)*100}" pattern="##.##"/>% (${summoner.wins}승 ${summoner.losses}패)</span>
            </div>

      </div>

      <form action="updateSummoner" method="post">
        <input type="hidden" class="form-control" name="memberNo" id="memberNo" value="1">
        <!-- 회원번호 value = 0 -->
        <button type="submit" class="update-button" id="updateButton">갱신하기</button>
      </form>
      <button type="button" class="duo-button" id="duoButton">듀오신청</button>
    </div>
  </div>

  <div class="user_list_form">
    <div class="rounded_frame">
      <h1>듀오목록</h1>
    </div>
  </div>

  <script src="/node_modules/jquery/dist/jquery.min.js"></script>


</body>

</html>