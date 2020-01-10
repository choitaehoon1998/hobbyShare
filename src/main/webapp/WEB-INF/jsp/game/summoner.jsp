<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      padding: 60px 20px;
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

    .reg-button {
      text-align: center;
      display: inline-block;
      width: 209px;
      border-radius: 5px;
      background-color: #B71C1C;
      color: #ffffff;
      padding-top: 8px;
      padding-bottom: 8px;
      font-weight: bold;
      font-size: 14px;
      border: 0;
    }

  </style>
</head>

<body>
  <div class="user_info_form">
    <div class="rounded_frame">
      <h1>소환사등록</h1>
      <form action="addSummoner" method="post">
      <div class="form-group">
        <input type="hidden" class="form-control" name="no" id="no" value="1">
        <!-- 회원번호 value = 0 -->
        <input type="text" class="form-control" name="summonerName" id="summonerName" placeholder="소환사이름을 입력하세요">
        <button type="submit" class="reg-button" id="regButton">소환사등록</button>
        <div class="check-messege" id="nameCheck"></div>
      </div>
    </form>
    </div>
  </div>

  <script src="/node_modules/jquery/dist/jquery.min.js"></script>


</body>

</html>