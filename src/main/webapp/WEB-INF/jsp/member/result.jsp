<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>

<head>
  <title>회원가입 완료</title>
  <style>
    html {
      background-color: #EEEEEE;
      float: left;
      width: 100%;
    }
    .user_account_form {
      max-width: 400px;
      margin: 0 auto;
      padding: 60px 20px;
    }

    .rounded_frame {
      border: 1px solid #D9D9DE;
      border-radius: 5px;
      background-color: #ffffff;
      padding: 20px;
    }
    .login-button {
      margin-top: 15px;
      text-align: center;
      display: inline-block;
      width: 49%;
      border-radius: 5px;
      background-color: #B71C1C;
      color: #ffffff;
      padding-top: 10px;
      padding-bottom: 10px;
      font-weight: bold;
      font-size: 14px;
      border: 0;
    }
    .main-button {
      margin-top: 15px;
      text-align: center;
      display: inline-block;
      width: 49%;
      border-radius: 5px;
      background-color: #B71C1C;
      color: #ffffff;
      padding-top: 10px;
      padding-bottom: 10px;
      font-weight: bold;
      font-size: 14px;
      border: 0;
    }
    </style>
    </head>
    <body>
        <div class="user_account_form">
            <div class="rounded_frame">
        <h1 style="text-align: center;"> 회원가입 완료 </h1>
        <button type="button" class="login-button" id="loginButton">로그인</button>
        <button type="button" class="main-button" id="mainButton">메인화면</button>
        </div>
        </div>

    </body>
    </html>