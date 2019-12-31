<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>hobbyshare - findPassword</title>
<link rel="stylesheet" href="/css/auth/findpw.css">
</head>
<body>
  <div class="find_pw_page">
    <div class="find_pw_content">
      <form class="findpw-form" name="findPwForm" onsubmit="return checkAll();">
        <div class="find_pw_box">
		      <h2>비밀번호 찾기</h2>
		      <div class="txtb">
            <input type="text" name="name" onblur="nameCheck();" />
            <span data-placeholder="User Name"></span>
          </div>
          <div id="name_chk" class="vali_check"></div>

          <div class="txtb">
            <input type="email" name="email" onblur="emailCheck();" />
            <span data-placeholder="User email"></span>
          </div>
          <div id="email_chk" class="vali_check"></div>
          <input type="button" class="findbtn" value="Find Password" onclick="find_pw();" />
        </div>
      </form>
    </div>
  </div>
  
  <script src="/node_modules/jquery/dist/jquery.min.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
      if (findPwForm.email.value == "") { // 빈 값 검사
        document.getElementById("email_chk").innerHTML = "이메일을 입력하세요.";
        $("#email_chk").css('color', '#b71c1c');
      } else {
        document.getElementById("email_chk").innerHTML = "";
        eCheckFlag = true;
      }
      return eCheckFlag;
    }
    
    function nameCheck() {
    	var nCheckFlag = false;
      if (findPwForm.name.value == "") {
        document.getElementById("name_chk").innerHTML = "이름을 입력하세요.";
        $("#name_chk").css("color", "#b71c1c");
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