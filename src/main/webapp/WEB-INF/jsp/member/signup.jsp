<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>

<head>
  <title>회원가입</title>
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

    .form-control {
      width: 336px;
      border: 1px solid #d9d9de;
      border-radius: 6px;
      padding: 10px;
      margin-top: 3px;
      margin-bottom: 3px;
    }

    .post-button {
      text-align: center;
      display: inline-block;
      width: 131px;
      border-radius: 5px;
      background-color: #B71C1C;
      color: #ffffff;
      padding-top: 8px;
      padding-bottom: 8px;
      font-weight: bold;
      font-size: 14px;
      border: 0;
    }

    .signup-button {
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

    .check-messege {
      margin-bottom: 6px;
    }

  </style>

</head>

<body>

  <div id='signup'>
    <div class="user_account_form">
      <div class="rounded_frame">
        <div class="row">
          <div class="col-md-6">
            <h1> 회원가입 </h1>
            <form action="add" method="post" onsubmit="return checkAll();">
              <div class="form-group">
                <label for="nickname">닉네임</label><br>
                <input type="text" class="form-control" name="nickname" id="nickname" placeholder="닉네임을 입력하세요">
                <div class="check-messege" id="nicknameCheck"></div>
              </div>
              <div class="form-group">
                <label for="name">이름</label><br>
                <input type="text" class="form-control" name="name" id="name" placeholder="이름을 입력하세요">
                <div class="check-messege" id="nameCheck"></div>
              </div>
              <div class="form-group">
                <label for="email">이메일</label><br>
                <input type="text" class="form-control" name="email" id="email" placeholder="이메일을 입력하세요">
                <div class="check-messege" id="emailCheck"></div>
              </div>
              <div class="form-group">
                <label for="password">비밀번호</label><br>
                <input type="password" class="form-control" name="password" id="password" placeholder="비밀번호를 입력하세요">
                <div class="check-messege" id="passwordCheck"></div>
              </div>
              <div class="form-group">
                <label for="passwordCheck">비밀번호 확인</label><br>
                <input type="password" class="form-control" id="passwordConfirm" placeholder="비밀번호를 입력하세요">
                <div class="check-messege" id="passwordConfirmCheck"></div>
              </div>
              <div class="form-group">
                <label for="phoneNumber">전화번호</label><br>
                <input type="text" class="form-control" name="tel" id="tel" placeholder="전화번호를 입력하세요">
                <div class="check-messege" id="telCheck"></div>

              </div>
              <div class="form-group">
                <label for="address">주소</label><br>
                <input type="text" class="form-control" name="post" id="post" placeholder="우편번호" style="width: 200px;" readonly>
                <button type="button" class="post-button" id="postButton" onclick="daumPostcode()">우편번호 찾기</button><br>
                <input type="text" class="form-control" name="basicAddress" id="basicAddress" placeholder="기본주소" readonly><br>
                <input type="text" class="form-control" name="detailAddress" id="detailAddress"
                  placeholder="상세주소를 입력하세요">
                <div class="check-messege" id="addressCheck"></div>
              </div>
              <div class="form-group">
                <label for="birth">생년월일</label><br>
                <input type="date" class="form-control" name="birth" id="birth">
                <div class="check-messege" id="birthCheck"></div>
              </div>
              <div class="form-check form-check-inline">
                <label>성별</label><br>
                <input class="form-check-input" type="radio" name="gender" id="man" value="1">
                <label class="form-check-label" for="man">남자</label>
                <input class="form-check-input" type="radio" name="gender" id="woman" value="2">
                <label class="form-check-label" for="woman">여자</label>
                <div class="check-messege" id="genderCheck"></div>
              </div>
              <button type="submit" class="signup-button" id="signupButton">등 록</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script src="/node_modules/jquery/dist/jquery.min.js"></script>

  <script>

    // 모든 공백 체크 정규식
    var empJ = /\s/g;
    // 닉네임 정규식
    var nickJ = /^[가-힣a-zA-Z0-9]{2,8}$/;
    // 이름 정규식
    var nameJ = /^[가-힣]{2,6}$/;
    // 이메일 검사 정규식
    var emailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    // 비밀번호 정규식
    var passwordJ = /^[A-Za-z0-9]{4,12}$/;
    // 휴대폰 번호 정규식
    var telJ = /^(010)([0-9]{4})([0-9]{4})$/;

    // submit 체크
    var submit_nickname = false;
    var submit_name = false;
    var submit_email = false;
    var submit_password = false;
    var submit_passwordConfirm = false;
    var submit_tel = false;
    var submit_address = false;
    var submit_birth = false;
    var submit_gender = false;
    

    // 닉네임 검사
    $("#nickname").blur(function () {
      var nickname = $('#nickname').val();
      $.ajax({
        url: '${pageContext.request.contextPath}/hobbyshare/member/nicknameCheck?nickname=' + nickname,
        type: 'get',
        success: function (data) {
          if (data == 1) {
            $("#nicknameCheck").text("사용중인 닉네임입니다");
            $("#nicknameCheck").css("color", "red");
            submit_nickname = false;
          } else {
            if (nickJ.test(nickname)) {
              $("#nicknameCheck").text("");
              submit_nickname = true;
            } else if (nickname == "") {
              $('#nicknameCheck').text("닉네임을 입력해주세요");
              $('#nicknameCheck').css('color', 'red');
              submit_nickname = false;
            } else {
              $('#nicknameCheck').text("잘못된 닉네임 양식입니다");
              $('#nicknameCheck').css('color', 'red');
              submit_nickname = false;
            }
          }
        }, error: function () {
          console.log("실패");
        }
      });
    });


    // 이름 검사
    $("#name").blur(function () {
      if (nameJ.test($(this).val())) {
        // console.log(nameJ.test($(this).val()));
        $("#nameCheck").text("");
        submit_name = true;
      } else {
        $("#nameCheck").text("이름을 확인해주세요");
        $("#nameCheck").css("color", "red");
        submit_name = false;
      }
    });

    // 이메일 검사
    $("#email").blur(function () {
      var email = $('#email').val();
      $.ajax({
        url: '${pageContext.request.contextPath}/hobbyshare/member/emailCheck?email=' + email,
        type: 'get',
        success: function (data) {
          if (data == 1) {
            $("#emailCheck").text("사용중인 이메일입니다");
            $("#emailCheck").css("color", "red");
            submit_email = false;
          } else {
            if (emailJ.test(email)) {
              $("#emailCheck").text("");
              submit_email = true;
            } else if (email == "") {
              $('#emailCheck').text("이메일를 입력해주세요");
              $('#emailCheck').css('color', 'red');
              submit_email = false;
            } else {
              $('#emailCheck').text("잘못된 이메일 양식입니다");
              $('#emailCheck').css('color', 'red');
              submit_email = false;
            }
          }
        }, error: function () {
          console.log("실패");
        }
      });
    });

    // 비밀번호 검사
    $("#password").blur(function () {
      if (passwordJ.test($(this).val())) {
        $("#passwordCheck").text("");
        submit_password = true;
      } else {
        $("#passwordCheck").text("비밀번호를 확인해주세요");
        $("#passwordCheck").css("color", "red");
        submit_password = false;
      }
    });

    // 비밀번호확인 검사
    $("#passwordConfirm").blur(function () {
      if ($("#password").val() == $("#passwordConfirm").val()) {
        $("#passwordConfirmCheck").text("");
        submit_passwordConfirm = true;
      } else if ($("#passwordConfirm").val() == "") {
        $("#passwordConfirmCheck").text("비밀번호를 입력해주세요");
        $("#passwordConfirmCheck").css("color", "red");
        submit_passwordConfirm = false;
      } else {
        $("#passwordConfirmCheck").text("비밀번호가 일치하지 않습니다");
        $("#passwordConfirmCheck").css("color", "red");
        submit_passwordConfirm = false;
      }
    });

    // 전화번호 검사
       $("#tel").blur(function () {
      var tel = $('#tel').val();
      $.ajax({
        url: '${pageContext.request.contextPath}/hobbyshare/member/telCheck?tel=' + tel,
        type: 'get',
        success: function (data) {
          if (data == 1) {
            $("#telCheck").text("사용중인 전화번호입니다");
            $("#telCheck").css("color", "red");
            submit_tel = false;
          } else {
            if (telJ.test(tel)) {
              $("#telCheck").text("");
              submit_tel = true;
            } else if (tel == "") {
              $('#telCheck').text("전화번호를 입력해주세요");
              $('#telCheck').css('color', 'red');
              submit_tel = false;
            } else {
              $('#telCheck').text("잘못된 전화번호 양식입니다");
              $('#telCheck').css('color', 'red');
              submit_tel = false;
            }
          }
        }, error: function () {
          console.log("실패");
        }
      });
    });

    // 생년월일 검사
    $("#birth").change(function () {
      var birth = $('#birth').val();
      if (birth != "") {
        $("#birthCheck").text("");
        submit_birth = true;
      } else {
        $("#birthCheck").text("생년월일을 확인해주세요");
        $("#birthCheck").css("color", "red");
        submit_birth = false;
      }
    });

    // 성별 검사
    // $('input[name=gender]:radio')
    $("#man").click(function() {
      $("#genderCheck").text("");
      submit_gender = true;
    });
    $("#woman").click(function() {
      $("#genderCheck").text("");
      submit_gender = true;
    });

    function checkAll() {
      var checkCnt = 0;
      if (submit_nickname == false) {
        $("#nicknameCheck").text("닉네임을 입력해주세요");
        $("#nicknameCheck").css("color", "red");
      }
    if (submit_nickname == true) {
      checkCnt++;
    }
    if (submit_name == false) {
      $("#nameCheck").text("이름을 입력해주세요");
      $("#nameCheck").css("color", "red");
    }
    if (submit_name == true) {
      checkCnt++;
    }
    if (submit_email == false) {
      $("#emailCheck").text("이메일을 입력해주세요");
      $("#emailCheck").css("color", "red");
    }
    if (submit_email == true) {
      checkCnt++;
    }
    if (submit_password == false) {
      $("#passwordCheck").text("비밀번호를 입력해주세요");
      $("#passwordCheck").css("color", "red");
    }
    if (submit_password == true) {
      checkCnt++;
    }
    if (submit_passwordConfirm == false) {
      $("#passwordConfirmCheck").text("비밀번호를 입력해주세요");
      $("#passwordConfirmCheck").css("color", "red");
    }
    if (submit_passwordConfirm == true) {
      checkCnt++;
    }
    if (submit_tel == false) {
      $("#telCheck").text("전화번호를 입력해주세요");
      $("#telCheck").css("color", "red");
    }
    if (submit_tel == true) {
      checkCnt++;
    }
    if (submit_address == false) {
      $("#addressCheck").text("주소를 입력해주세요");
      $("#addressCheck").css("color", "red");
    }
    if (submit_address == true) {
      $("#addressCheck").text("");
      checkCnt++;
    }
    if (submit_birth == false) {
      $("#birthCheck").text("생년월일을 입력해주세요");
      $("#birthCheck").css("color", "red");
    }
    if (submit_birth == true) {
      $("#birthCheck").text("");
      checkCnt++;
    }
    if (submit_gender == false) {
      $("#genderCheck").text("성별을 입력해주세요");
      $("#genderCheck").css("color", "red");
    }
    if (submit_gender == true) {
      $("#genderCheck").text("");
      checkCnt++;
    }
    console.log(checkCnt);
    return checkCnt == 9 ? true : false; 
    }

  </script>

  <!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
  <img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
  </div>
  
  <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script>
      // 우편번호 찾기 화면을 넣을 element
      var element_layer = document.getElementById('layer');
  
      function closeDaumPostcode() {
          // iframe을 넣은 element를 안보이게 한다.
          element_layer.style.display = 'none';
      }
  
      function daumPostcode() {
          new daum.Postcode({
              oncomplete: function(data) {
                  // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
  
                  // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                  // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                  var addr = ''; // 주소 변수
                  var extraAddr = ''; // 참고항목 변수
  
                  //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                  if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                      addr = data.roadAddress;
                  } else { // 사용자가 지번 주소를 선택했을 경우(J)
                      addr = data.jibunAddress;
                  }
  
                  // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                  if(data.userSelectedType === 'R'){
                      // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                      // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                      if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                          extraAddr += data.bname;
                      }
                      // 건물명이 있고, 공동주택일 경우 추가한다.
                      if(data.buildingName !== '' && data.apartment === 'Y'){
                          extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                      }
                      // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                      if(extraAddr !== ''){
                          extraAddr = ' (' + extraAddr + ')';
                      }
                      // 조합된 참고항목을 해당 필드에 넣는다.
                      // document.getElementById("sample2_extraAddress").value = extraAddr;
                  
                  } else {
                      // document.getElementById("sample2_extraAddress").value = '';
                  }
  
                  // 우편번호와 주소 정보를 해당 필드에 넣는다.
                  document.getElementById("post").value = data.zonecode;
                  document.getElementById("basicAddress").value = addr;
                  // 유효성 검사
                  $("#addressCheck").text("");
                  submit_address = true;
                  // 커서를 상세주소 필드로 이동한다.
                  document.getElementById("detailAddress").focus();

  
                  // iframe을 넣은 element를 안보이게 한다.
                  // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                  element_layer.style.display = 'none';
              },
              width : '100%',
              height : '100%',
              maxSuggestItems : 5
          }).embed(element_layer);
  
          // iframe을 넣은 element를 보이게 한다.
          element_layer.style.display = 'block';
  
          // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
          initLayerPosition();
      }
  
      // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
      // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
      // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
      function initLayerPosition(){
          var width = 300; //우편번호서비스가 들어갈 element의 width
          var height = 400; //우편번호서비스가 들어갈 element의 height
          var borderWidth = 5; //샘플에서 사용하는 border의 두께
  
          // 위에서 선언한 값들을 실제 element에 넣는다.
          element_layer.style.width = width + 'px';
          element_layer.style.height = height + 'px';
          element_layer.style.border = borderWidth + 'px solid';
          // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
          element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
          element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
      }
  </script>

</body>

</html>