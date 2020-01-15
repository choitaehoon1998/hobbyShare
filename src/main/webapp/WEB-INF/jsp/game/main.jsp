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


    .summoner-profile-icon-img {
      display: inline-block;
      margin-top: 0;
      margin-left: 0;
      width: 128px;
      height: 128px;
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
      width: 300px;
      height: 128px;
      margin-left: 10px;
      vertical-align: top;
      border: 4px solid #B71C1C;
    }

    .summoner-profile-option {
      display: inline-block;
      width: 277px;
      height: 128px;
      margin-left: 10px;
      vertical-align: top;
      border: 4px solid #B71C1C;
    }

    .summoner-profile-tier {
      display: inline-block;
      margin-top: 0;
      margin-left: 0;
      width: 100px;
      height: 100px;
    }

    .summoner-profile-tier-info {
      display: inline-block;
      vertical-align: top;
    }

    .summoner-profile-name {
      font-size: 24px;
      margin-left: 10px;
    }

    .summoner-profile-option-select {
      width: 100%;
      border: none;
      background: none;
      padding: 14px 60px 14px 35px;
      font-size: 16px;
      line-height: 15px;
      color: #B71C1C;
      outline: none;
      box-sizing: border-box;
      -webkit-appearance: none;
      background: url(/img/game/list_img.png) no-repeat 5% 50%;
      background-size: 15px;
    }

  </style>
</head>

<body onload="tierImgCheck();">
  <div class="user_info_form">
    <div class="rounded_frame">
      <h1>내정보</h1>

      <div class="summoner-profile-icon">
        <img src="${summoner.profileIcon}" class="summoner-profile-icon-img">
        <div class="summoner-profile-level">${summoner.summonerLevel}</div>
      </div>

      <div class="summoner-profile-info">
        <h class="summoner-profile-name">${summoner.name}</h>
        <div>
          <input type="hidden" id="summonerTierId" value="${summoner.tier}">
          <img src="/img/game/Emblem_Unranked.png" class="summoner-profile-tier" id="summonerTierImgId">
          <div class="summoner-profile-tier-info">
            <p>솔로랭크</p>
            <b style="color: #B71C1C;">${summoner.tier} ${summoner.rank}</b>
            <span>${summoner.leaguePoints} LP</span><br>
            <span id="winRateId">
              <input type="hidden" id="winsId" value="${summoner.wins}">
              <input type="hidden" id="lossesId" value="${summoner.losses}">
            </span>
          </div>
        </div>
      </div>

      <div class="summoner-profile-option">
        <form>
          <input type="hidden" name="summonerNo" value="${summoner.summonerNo}" form="gameMatchingForm">
          <select name="wantedPosition" class="summoner-profile-option-select" form="gameMatchingForm">
            <option value="all" selected> 포지션 상관없이 구함
            <option value="top"> 탑 구함
            <option value="jungle"> 정글 구함
            <option value="mid"> 미드 구함
            <option value="bot"> 원딜 구함
            <option value="support"> 서폿 구함
          </select>
          <select name="wantedGender" class="summoner-profile-option-select" form="gameMatchingForm">
            <option value="all" selected> 성별 상관없이 구함
            <option value="man"> 남자만 구함
            <option value="woman"> 여자만 구함
          </select>
          <select name="wantedVoice" class="summoner-profile-option-select" form="gameMatchingForm">
            <option value="all" selected> 보이스 유무 상관없이 구함
            <option value="voiceYes"> 보이스 가능 유저만 구함
            <option value="voiceNo"> 보이스 불가능 유저만 구함
          </select>
        </form>
      </div>

      <form action="updateSummoner" method="post">
        <input type="hidden" class="form-control" name="memberNo" id="memberNo" value="${summoner.memberNo}">
        <button type="submit" class="update-button" id="updateButton">내정보 업데이트</button>
      </form>

      <form action="addGameMatching" method="post" id="gameMatchingForm">
        <button type="submit" class="duo-button" id="duoButton">듀오 신청하기</button>
      </form>
    </div>
  </div>

  <div class="user_list_form">
    <div class="rounded_frame">
      <h1>듀오목록</h1>

      <table>
        <tr>
          <th>매칭번호</th>
          <th>소환사번호</th>
          <th>요구포지션</th>
          <th>요구성별</th>
          <th>요구보이스</th>
          <th>등록일시</th>
        </tr>
        <c:forEach items="${gameMatchings}" var="gameMatchings">
          <tr>
            <td>${gameMatchings.gameMatchingNo}</td>
            <td>${gameMatchings.summonerNo}</td>
            <td class="wantedPositionImgClass">${gameMatchings.wantedPosition}</td>
            <td class="wantedGenderImgClass">${gameMatchings.wantedGender}</td>
            <td class="wantedVoiceImgClass">${gameMatchings.wantedVoice}</td>
            <td>${gameMatchings.createdDate}</td>
          </tr>
        </c:forEach>
      </table>

    </div>
  </div>

  <script src="/node_modules/jquery/dist/jquery.min.js"></script>

  <script>

    function tierImgCheck() {
      var summonerTier = document.getElementById("summonerTierId").value;
      var summonerTierImg = document.getElementById("summonerTierImgId")
      if (summonerTier == "UNRANKED") {
        summonerTierImg.src = "/img/game/Emblem_Unranked.png";
      }
      if (summonerTier == "IRON") {
        summonerTierImg.src = "/img/game/Emblem_Iron.png";
      }
      if (summonerTier == "BRONZE") {
        summonerTierImg.src = "/img/game/Emblem_Bronze.png";
      }
      if (summonerTier == "SILVER") {
        summonerTierImg.src = "/img/game/Emblem_Silver.png";
      }
      if (summonerTier == "GOLD") {
        summonerTierImg.src = "/img/game/Emblem_Gold.png";
      }
      if (summonerTier == "PLATINUM") {
        summonerTierImg.src = "/img/game/Emblem_Platinum.png";
      }
      if (summonerTier == "DIAMOND") {
        summonerTierImg.src = "/img/game/Emblem_Diamond.png";
      }
      if (summonerTier == "MASTER") {
        summonerTierImg.src = "/img/game/Emblem_Master.png";
      }
      if (summonerTier == "GRANDMASTER") {
        summonerTierImg.src = "/img/game/Emblem_Grandmaster.png";
      }
      if (summonerTier == "CHALLENGER") {
        summonerTierImg.src = "/img/game/Emblem_Challenger.png";
      }

      var wantedPositionImg = $(".wantedPositionImgClass");
      for (var i = 0; i < wantedPositionImg.length; i++) {
        if (wantedPositionImg[i].innerHTML == "top") {
          wantedPositionImg[i].innerHTML = "<img src='/img/game/Position_Grandmaster-Top.png'>";
        } else if (wantedPositionImg[i].innerHTML == "jungle") {
          wantedPositionImg[i].innerHTML = "<img src='/img/game/Position_Grandmaster-Jungle.png'>";
        } else if (wantedPositionImg[i].innerHTML == "mid") {
          wantedPositionImg[i].innerHTML = "<img src='/img/game/Position_Grandmaster-Mid.png'>";
        } else if (wantedPositionImg[i].innerHTML == "bot") {
          wantedPositionImg[i].innerHTML = "<img src='/img/game/Position_Grandmaster-Bot.png'>";
        } else if (wantedPositionImg[i].innerHTML == "support") {
          wantedPositionImg[i].innerHTML = "<img src='/img/game/Position_Grandmaster-Support.png'>";
        } else if (wantedPositionImg[i].innerHTML == "all") {
          wantedPositionImg[i].innerHTML = "<img src='/img/game/Options_All.png'>";
        }
      }

      var wantedVoiceImg = $(".wantedVoiceImgClass");
      for (var i = 0; i < wantedVoiceImg.length; i++) {
        if (wantedVoiceImg[i].innerHTML == "voiceYes") {
          wantedVoiceImg[i].innerHTML = "<img src='/img/game/Options_Voice_Yes.png'>";
        } else if (wantedVoiceImg[i].innerHTML == "voiceNo") {
          wantedVoiceImg[i].innerHTML = "<img src='/img/game/Options_Voice_No.png'>";
        } else if (wantedVoiceImg[i].innerHTML == "all") {
          wantedVoiceImg[i].innerHTML = "<img src='/img/game/Options_All.png'>";
        }
      }

      var wantedGenderImg = $(".wantedGenderImgClass");
      for (var i = 0; i < wantedGenderImg.length; i++) {
        if (wantedGenderImg[i].innerHTML == "man") {
          wantedGenderImg[i].innerHTML = "<img src='/img/game/Options_Gender_Man.png'>";
        } else if (wantedGenderImg[i].innerHTML == "woman") {
          wantedGenderImg[i].innerHTML = "<img src='/img/game/Options_Gender_Woman.png'>";
        } else if (wantedGenderImg[i].innerHTML == "all") {
          wantedGenderImg[i].innerHTML = "<img src='/img/game/Options_All.png'>";
        }
      }

      // 랭크 승률계산
      var winsVal = parseInt($("#winsId").val());
      var lossesVal = parseInt($("#lossesId").val());
      var ratingCal = parseInt(winsVal / (winsVal + lossesVal) * 100);
      var ratingVal = ratingCal.toFixed(2);
      if (isNaN(ratingVal)){
        document.getElementById("winRateId").innerHTML = "랭크정보 없음"
      } else{
        document.getElementById("winRateId").innerHTML = "승률 " + ratingVal + "% (" + winsVal + "승 " + lossesVal + "패)";
      }
    }

  </script>

</body>

</html>