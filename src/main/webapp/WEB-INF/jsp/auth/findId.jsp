<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>hobbyshare - findId</title>
<link rel="stylesheet" href="/css/member/findid.css">
</head>
<body>
  <div class="find_id_page">
    <div class="find_id_header">
    </div>
    <div class="find_id_content">
      <form class="findid-form" name="findIdForm" onsubmit="return checkAll();">
        <div class="find_id_box">
		      <h2>이메일 찾기</h2>
          <h5>회원정보에 등록한 휴대전화로 찾기</h5>
          <div class="txtb">
	          <input type="text" name="name" onblur="nameCheck();" />
	          <span data-placeholder="User Name"></span>
          </div>
          <div id="name_chk" class="vali_check"></div>
          
          <div class="txtb">
            <input type="tel" name="tel" onblur="telCheck();" />
            <span data-placeholder="User Tel"></span>
          </div>
          <div id="tel_chk" class="vali_check"></div>
          <input type="submit" class="findbtn" value="Find Email" onclick="find_id();" />
        </div>
      </form>
    </div>
  </div>

  <script src="/node_modules/jquery/dist/jquery.min.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <script type="text/javascript">
    function checkAll() {
      var checkCnt = 0;
      if (nameCheck()) {
        checkCnt++;
      }
      if (telCheck()) {
        checkCnt++;
      }
      return checkCnt == 2 ? true : false;
    }
  
    function nameCheck() {
      var nCheckFlag = false;
      if (findIdForm.name.value == "") {
        document.getElementById("name_chk").innerHTML = "이름을 입력하세요.";
        $("#name_chk").css("color", "red");
      } else {
        document.getElementById("name_chk").innerHTML = "";
        nCheckFlag = true;
      }
      return nCheckFlag;
    }
    
    function telCheck() {
      var tCheckFlag = false;
      if (findIdForm.tel.value == "") {
        document.getElementById("tel_chk").innerHTML = "휴대 전화 번호를 입력하세요."
        $("#tel_chk").css("color", "red");
      } else {
        document.getElementById("tel_chk").innerHTML = "";
        tCheckFlag = true;
      }
      return tCheckFlag;
    }
    
    function find_id() {
    	var userName = $("input[name=name]").val();
      var userTel = $("input[name=tel]").val();
     $.ajax({
       url : "searchId", 
       type: 'post',
       data: "name="+userName+"&tel="+userTel,
       success : function(data) {
          if (data == "") {
        	  swal("이메일 찾기 결과", "가입되지 않은 정보입니다", "warning");
          } else {
        	  swal({
              title: "이메일 찾기 결과",
              text: "당신의 이메일은 " + data + "입니다",
              icon: "success",
              button: "로그인",
            })
            .then((result) => {
                location.href = "/hobbyshare/auth/signin";
              });
          }
       }
     });
    }
  </script>
</body>
</html>