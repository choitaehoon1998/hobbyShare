<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>hobbyshare - Login</title>
  <link rel="stylesheet" href="/css/auth/signin.css" >
</head>
<body>
  <div class="container">
    <div class="content">
      <form class="login-form" name="signinForm" onsubmit="return checkAll();">
        <h1>Login</h1>
        
        <div class="txtb">
          <input type="text" name="email" onblur="emailCheck();" />
          <span data-placeholder="User Email"></span>
        </div>
        <div id="email_chk" class="vali_check"></div>
        
        <div class="txtb">
          <input type="password" name="password" onblur="pwCheck();" />
          <span data-placeholder="Password"></span>
        </div>
        <div id="pw_chk" class="vali_check"></div>
        
        <input type="button" class="logbtn" value="Login" onclick="signin_check();" />
        
        <div class="bottom-text">
          <a href="findId">이메일 찾기&nbsp;&nbsp;</a>
          <a href="findPassword">비밀번호 찾기</a>&nbsp;&nbsp;
          <a href="/hobbyshare/member/form">회원가입</a>
        </div>
      </form>
    </div>
  </div>
  
  <script src="/node_modules/jquery/dist/jquery.min.js"></script>
  <script type="text/javascript">
    $(".txtb input").on("focus", function(){
    	$(this).addClass("focus");
    });
    
    $(".txtb input").on("blur", function(){
    	if ($(this).val() == "") {
	      $(this).removeClass("focus");
    	}
    });
  </script>
  
  <script>
    "use strict"
    
    function checkAll() {
      var checkCnt = 0;
      if (emailCheck()) {
        checkCnt++;
      }
      if (pwCheck()) {
        checkCnt++;
      }
      return checkCnt == 2 ? true : false;
    }
    
    function emailCheck() {
      var eCheckFlag = false;
      // 빈 값 검사 
      console.log(signinForm.email.value);
      if (signinForm.email.value == "") {
        document.getElementById("email_chk").innerHTML = "이메일을 입력하세요.";
        $("#email_chk").css("color", "#b71c1c");
      } else {
        document.getElementById("email_chk").innerHTML = "";
        eCheckFlag = true;
      }
      return eCheckFlag;
    }
    
    function pwCheck() {
      var pCheckFlag = false;
      // 빈 값 검사 
      if (signinForm.password.value == "") {
        document.getElementById("pw_chk").innerHTML = "비밀번호를 입력하세요.";
        $("#pw_chk").css("color", "#b71c1c");
      } else {
        document.getElementById("pw_chk").innerHTML = "";
        pCheckFlag = true;
      }
      return pCheckFlag;
    }
    
    function signin_check() {
       var userEmail = $("input[name=email]").val();
       var userPassword = $("input[name=password]").val();
       $.ajax({
           url : 'login', 
           type : 'post', 
           data : {email: userEmail, password: userPassword},
           success : function(result) {
	           if (result) {
	             window.location.href = "/hobbyshare/index";
	           } else if(result == ""){
	             document.getElementById("pw_chk").innerHTML = "가입하지 않은 아이디거나, 잘못된 비밀번호입니다.";
	             $("#pw_chk").css("color", "#b71c1c");
	           }
	         },
	         error : function() {
	           console.log("비밀번호 확인 실패");
	         }
        });
      }
  </script>
</body>
</html>