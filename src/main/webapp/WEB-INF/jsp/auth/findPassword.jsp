<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>hobbyshare - findPassword</title>
</head>
<body>

  <div class="find_pw_page">
    <div class="find_pw_header">
      <h2>비밀번호 찾기</h2>
    </div>
    <div class="find_pw_content">
      <form name="findpwForm" onsubmit="return checkAll();">
        <div class="find_pw_box">
          <label for="name">이름</label>
          <input type="text" class="nameBox" id="name" name="name" onblur="nameCheck();"/> <br>
          <div id="name_chk" class="vali_check"></div>
          <label for="email">이메일</label>
          <input type="email" class="emailBox" id="email" name="email" onblur="emailCheck();" />
          <div id="email_chk" class="vali_check"></div>
        </div>
        <div class="find_pw_button">
        <input type="button" class="btn" value="비밀번호 찾기" onclick="find_pw();" />
        </div>
      </form>
    </div>
  </div>
  
  <script src="/node_modules/jquery/dist/jquery.min.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <script>
    function checkAll() {
      var checkCnt = 0;
      if (nameCheck()) {
        checkCnt++;
      }
      if (emailCheck()) {
        checkCnt++;
      }
      return checkCnt == 2 ? true : false;
    }
    
    function emailCheck() {
      var eCheckFlag = false;
      console.log("emailCheck");
      if (findpwForm.email.value == "") { // 빈 값 검사
        document.getElementById("email_chk").innerHTML = "이메일을 입력하세요.";
        $("#email_chk").css('color', 'red');
      } else {
        document.getElementById("email_chk").innerHTML = "";
        eCheckFlag = true;
      }
      return eCheckFlag;
    }
    
    function nameCheck() {
    	var nCheckFlag = false;
      if (findpwForm.name.value == "") {
        document.getElementById("name_chk").innerHTML = "이름을 입력하세요.";
        $("#name_chk").css("color", "red");
      } else {
        document.getElementById("name_chk").innerHTML = "";
        nCheckFlag = true;
      }
      return nCheckFlag;
    }
    
    
  </script>

<!--   비밀번호 찾기 -->
<script>
function find_pw(){
	var userName = $('#name').val();
  var userMail = $('#email').val();
    
  $.ajax({
    url : 'searchPassword',
    type : 'post',
    data : "email=" + userMail + "&name=" + userName,
    success : function(result) {
      if(result == 1) {
        $.ajax({
          url : 'mailsend',
          type : 'post',
          data : "email=" + userMail,
          success : function(data) {
            swal({
            	console.log(data);
                  title: "비밀번호 찾기 결과",
                  text: "이메일로 비밀번호를 전송했습니다",
                  icon: "success",
                  button: "로그인",
              })
              .then((result) => {
                location.href = "/hobbyshare/auth/form";
              });
          }, error : function(){
            console.log("실패");  
          }
        });
      } else {
        swal("비밀번호 찾기 결과", "가입되지 않은 정보입니다", "warning");
      }
    }, error : function() {
        console.log("실패");
    }
  });
}
</script>

</body>
</html>