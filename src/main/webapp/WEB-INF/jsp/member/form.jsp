<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>hobbyshare - Login</title>
  <style>
    body {
      background-color: #EEEEEE;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="content">
      <form name="signinForm" onsubmit="return checkAll();">
        이메일 <input type="email" id="email" name="email" placeholder="이메일" onblur="emailCheck();" /><br>
        <div id="email_chk" class="vali_check"> 이메일 입력 </div>
        비밀번호 <input type="password" id="password" name="password" placeholder="비밀번호" onblur="pwCheck();" /><br>
        <div id="pw_chk" class="vali_check"> 비밀번호 입력 </div>
        <input type="button" class="btn" value="로그인" onclick="signin_check();" />
      </form>
      
    </div>
  </div>
</body>
</html>










