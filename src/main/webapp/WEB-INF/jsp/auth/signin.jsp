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
        <input type="email" id="email" name="email" placeholder="이메일" onblur="emailCheck();" /><br>
        <div id="email_chk" class="vali_check"></div>
        <input type="password" id="password" name="password" placeholder="비밀번호" onblur="pwCheck();" /><br>
        <div id="pw_chk" class="vali_check"></div>
        <input type="button" class="btn" value="로그인" onclick="signin_check();" />
      </form>
      <div class="find_info">
        <a target="_blank" href="hobbyshare/auth/findId" 
          onclick="window.open(this.href, '_blank', 'width=600px,height=600px,toolbars=no,scrollbars=no'); return false;">
          아이디 찾기</a>&nbsp;|
        <a href="hobbyshare/auth/findPassword"
          onclick="window.open(this.href, '_blank', 'width=600px,height=600px,toolbars=no,scrollbars=no'); return false;">
          비밀번호 찾기</a>&nbsp;|
        <a href="/hobbyshare/member/form">회원가입</a>
      </div>
    </div>
  </div>
  
  <script src="/node_modules/jquery/dist/jquery.min.js"></script>
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
	      $("#email_chk").css("color", "red");
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
    		$("#pw_chk").css("color", "red");
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
            dataType : "json",
            success : function(result) {
		          if (result == 1) {
		            window.location.href = "/hobbyshare/index";
		          } else {
		            document.getElementById("pw_chk").innerHTML = "가입하지 않은 아이디거나, 잘못된 비밀번호입니다.";
		            $("#pw_chk").css("color", "red");
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