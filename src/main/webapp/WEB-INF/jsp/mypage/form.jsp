<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>

<style>
.mypage_menu {
	float: left;
	display: block;
	text-align: center;
}

.mypage_menu:hover {
	text-decoration: underline;
	background-color: rgb(250, 250, 250);
}

.mypage_member {
	border: 1px solid;
	padding: 10px 10px 10px 10px;
	width: 350px;
}

.mypage_box {
	padding-left: 30%;
}

.mypage_input {
	position: relative;
	padding-bottom: 10px;
}

.mypage_hidden {
	display: none;
}

.round {
  height: 150px;
  width: 150px;
  border-radius: 50%;
  margin-bottom: 10px;
}

#filePath {
  position: absolute;
	clip: rect(0, 0, 0, 0);
}
</style>

<body class="mypage_box">
	<div class="mypage_member">
		<div style="text-align: center;">
			<img src="/upload/join/default.png" id="view_file" class="round">
			<div style="margin-bottom: 20px;">
				<label for="filePath">사진선택</label>
				<input type="file" id='filePath'>
				<div id="infoFile"></div>
	    </div>
		</div>

    <div style="margin-left: 80px;">
			<div class="mypage_input">
				<strong>닉네임</strong>
				<span id="nickNameVal">${loginUser.nickName}</span>
				<input type="text" value="${loginUser.nickName}" 
				id="nickname" class="mypage_hidden">
				<button id='changeNickBtn'>수정</button>
				<button id='updateNickBtn' class="mypage_hidden">변경</button>
				<button id='cancelNickBtn' class="mypage_hidden">취소</button>
				<div id="infoNickName"></div>
			</div>
	
			<div class="mypage_input">
				<strong>이름</strong> <span>${loginUser.name}</span>
			</div>
	
			<div class="mypage_input">
				<strong>성별</strong> <span>${loginUser.gender}</span>
			</div>
	
			<div class="mypage_input">
				<strong>생년월일</strong> <span id="birthVal">${loginUser.birth}</span>
				<input type="text" value="${loginUser.birth}" class="mypage_hidden">
			</div>
	
			<div class="mypage_input">
				<strong>이메일</strong> <span>${loginUser.email}</span>
			</div>
	
			<strong>비밀번호</strong>
			<button id='changePwBtn'>수정</button>
			<div class="mypage_input">
				<input type="password" placeholder="현재 비밀번호" 
				id="nowPw" class="mypage_hidden">
				<button id='checkPwBtn' class="mypage_hidden">확인</button>
	
				<input type="password" placeholder="변경 비밀번호" 
				id="updatePw" class="mypage_hidden">
			  <input type="password" placeholder="비밀번호 확인" 
			  id="updatePwCheck" class="mypage_hidden">
	
				<button id='updatePwBtn' class="mypage_hidden">변경</button>
				<button id='cancelPwBtn' class="mypage_hidden">취소</button>
				<div id="infoPw"></div>
			</div>
	
			<div class="mypage_input">
				<strong>전화번호</strong>
				<span id="telVal">${loginUser.tel}</span> 
				<input type="text" value="${loginUser.tel}" 
				id="tel" class="mypage_hidden">
				<button id='changeTelBtn'>수정</button>
				
				<button id='updateTelBtn' class="mypage_hidden">변경</button>
        <button id='cancelTelBtn' class="mypage_hidden">취소</button>
				<div id="infoTel"></div>
			</div>
	
			<div class="mypage_input">
				<strong>주소</strong>
				<span id="addressVal">${loginUser.basicAddress}&nbsp;${loginUser.detailAddress}</span>
				<input type="text" value="${loginUser.basicAddress}${loginUser.detailAddress}"
			  id="address" class="mypage_hidden" readOnly>
				<button id='changeAddressBtn'>수정</button>
				
        <button id="searchAddressBtn" class="mypage_hidden">주소검색</button>
				<button id='updateAddressBtn' class="mypage_hidden">변경</button>
        <button id='cancelAddressBtn' class="mypage_hidden">취소</button>
			</div>
	
		</div>
  	<div style="text-align: center;">
  	  <button style="background-color: tomato;">회원탈퇴</button>
  	</div>
	</div>

	<div>
		<div class="mypage_menu">
			<img src="https://t1.kakaocdn.net/withkakao/image/img_kakaocheez.png">
			<div>
				<strong>좋아요</strong>
			</div>
		</div>

		<div class="mypage_menu">
			<img src="https://t1.kakaocdn.net/withkakao/image/img_kakaoorder.png">
			<div>
				<strong>작성한 글</strong>
			</div>
		</div>
	</div>

	<div>
		<div class="mypage_menu">
			<img
				src="https://t1.kakaocdn.net/withkakao/image/img_bizmessage_160330.gif">
			<div>
				<strong>주문내역</strong>
			</div>
		</div>

		<div class="mypage_menu">
			<img
				src="https://t1.kakaocdn.net/withkakao/image/img_bizmessage_160330.gif">
			<div>
				<strong>매칭</strong>
			</div>
		</div>
	</div>
	
	<!-- 프로필 사진 -->
  <script>
    var filePath = document.getElementById("filePath");
    var viewFile = document.getElementById("view_file");
    
    filePath.onchange = function() {
      if (filePath.files[0].name.substring(
    		  filePath.files[0].name.lastIndexOf("."), filePath.files[0].name.length)
    		  == ".jpg" && ".jpeg" && ".png" && ".gif") {
        var reader = new FileReader();
        reader.onload = function() {
        	viewFile.setAttribute('src', event.target.result);
        }
        reader.readAsDataURL(filePath.files[0]);
        document.getElementById("infoFile").innerText = '';
      } else{
    	  document.getElementById("infoFile").innerText = "jpg, jpeg, png, gif 파일형식만 올려주세요";
    	  document.getElementById("infoFile").style.color = 'red';
      }
    }
  </script>

	<!-- 닉네임 변경 -->
	<script>
	  var nickNameVal = document.getElementById('nickNameVal');
		var changeNickBtn = document.getElementById('changeNickBtn');
		var updateNickBtn = document.getElementById('updateNickBtn');
		var cancelNickBtn = document.getElementById('cancelNickBtn');
		var idNickName = document.getElementById('nickname');
		var infoNickName = document.getElementById('infoNickName');

		changeNickBtn.onclick = function() {
			changeNickBtn.style.display = 'none';
			updateNickBtn.style.display = 'inline';
			cancelNickBtn.style.display = 'inline';
			idNickName.style.display = 'inline';
			nickNameVal.style.display = 'none';
		}

		updateNickBtn.onclick = function() {
			updateNickNameF();
		}

		cancelNickBtn.onclick = function() {
			changeNickBtn.style.display = 'inline';
			updateNickBtn.style.display = 'none';
			cancelNickBtn.style.display = 'none';
			idNickName.style.display = 'none';
			nickNameVal.style.display = 'inline';
			infoNickName.innerText = '';
		}

		function updateNickNameF() {
			let nickname = idNickName.value;
			
			$.ajax({
				url : 'checkNickName',
				type : 'post',
				data : 'nickname=' + nickname,
				success : function(result){
					if(result == 0){
					  $.ajax({
			        url : 'updateNickName',
			        type : 'post',
			        data : 'nickname=' + nickname,
			        success : function(result) {
			          changeNickBtn.style.display = 'inline';
			          updateNickBtn.style.display = 'none';
			          cancelNickBtn.style.display = 'none';
			          idNickName.style.display = 'none';
			          nickNameVal.style.display = 'inline';
			          nickNameVal.innerText = nickname;
			          infoNickName.innerText = '';
			          alert("닉네임이 변경 되었습니다");
			        },
			        error : function() {
			          console.log("닉네임 수정 실패");
			        }
			      })
				  } else{
					    infoNickName.innerText = '중복된 닉네임이 있습니다';
					    infoNickName.style.color = 'red';
					}
				},
				error : function(){
					console.log("닉네임 확인 실패");
				}
			})
		}
	</script>

	<!-- 비밀번호 변경 -->
	<script>
		var changePwBtn = document.getElementById('changePwBtn');
		var updatePwBtn = document.getElementById('updatePwBtn');
		var cancelPwBtn = document.getElementById('cancelPwBtn');
		var nowPw = document.getElementById('nowPw');
		var checkPwBtn = document.getElementById('checkPwBtn');
		var updatePw = document.getElementById('updatePw');
		var updatePwCheck = document.getElementById('updatePwCheck');
		var infoPw = document.getElementById('infoPw');

		changePwBtn.onclick = function() {
			changePwBtn.style.display = 'none';
			nowPw.style.display = 'inline';
			checkPwBtn.style.display = 'inline';
			cancelPwBtn.style.display = 'inline';
		}

		checkPwBtn.onclick = function() {
			checkPwF();
		}

		updatePwBtn.onclick = function() {
			if (updatePw.value === updatePwCheck.value) {
				updatePwF();
			} else {
				infoPw.innerText = '비밀번호가 일치하지 않습니다';
				infoPw.style.color = 'red';
			}
		}

		cancelPwBtn.onclick = function() {
			changePwBtn.style.display = 'inline';
			nowPw.style.display = 'none';
			checkPwBtn.style.display = 'none';
			updatePwBtn.style.display = 'none';
			cancelPwBtn.style.display = 'none';
			updatePw.style.display = 'none';
			updatePwCheck.style.display = 'none';
			infoPw.innerText = '';
			nowPw.value = '';
			updatePw.value = '';
			updatePwCheck.value = '';
		}

		function checkPwF() {
			let password = nowPw.value;
			$.ajax({
				url : 'checkPw',
				type : 'post',
				data : 'password=' + password,
				success : function(result) {
					if (result == 1) {
						nowPw.style.display = 'none';
						checkPwBtn.style.display = 'none';
						updatePwBtn.style.display = 'inline';
						cancelPwBtn.style.display = 'inline';
						updatePw.style.display = 'inline';
						updatePwCheck.style.display = 'inline';
						infoPw.innerText = '';
					} else {
						infoPw.innerText = '비밀번호가 틀렸습니다';
						infoPw.style.color = 'red';
					}
				},
				error : function() {
					console.log("비밀번호 확인 실패");
				}
			})
		}

		function updatePwF() {
			let password = updatePwCheck.value;
			$.ajax({
				url : 'updatePw',
				type : 'post',
				data : 'password=' + password,
				success : function(result) {
					changePwBtn.style.display = 'inline';
					updatePwBtn.style.display = 'none';
					cancelPwBtn.style.display = 'none';
					updatePw.style.display = 'none';
					updatePwCheck.style.display = 'none';
					nowPw.value = '';
					updatePw.value = '';
					updatePwCheck.value = '';
					infoPw.innerText = '';
					alert("비밀번호가 변경 되었습니다");
				},
				error : function() {
					console.log("비밀번호 수정 실패");
				}
			})
		}
	</script>
	
	<!-- 전화번호 변경 -->
  <script>
    var telVal = document.getElementById('telVal');
    var changeTelBtn = document.getElementById('changeTelBtn');
    var updateTelBtn = document.getElementById('updateTelBtn');
    var cancelTelBtn = document.getElementById('cancelTelBtn');
    var idTel = document.getElementById('tel');
    var infoTel = document.getElementById('infoTel');

    changeTelBtn.onclick = function() {
    	changeTelBtn.style.display = 'none';
    	updateTelBtn.style.display = 'inline';
    	cancelTelBtn.style.display = 'inline';
    	idTel.style.display = 'inline';
    	telVal.style.display = 'none';
    }

    updateTelBtn.onclick = function() {
      updateTelF();
    }

    cancelTelBtn.onclick = function() {
    	changeTelBtn.style.display = 'inline';
    	updateTelBtn.style.display = 'none';
    	cancelTelBtn.style.display = 'none';
    	idTel.style.display = 'none';
    	telVal.style.display = 'inline';
    	infoTel.innerText = '';
    }

    function updateTelF() {
      let tel = idTel.value;
      
      $.ajax({
        url : 'checkTel',
        type : 'post',
        data : 'tel=' + tel,
        success : function(result){
          if(result == 0){
            $.ajax({
              url : 'updateTel',
              type : 'post',
              data : 'tel=' + tel,
              success : function(result) {
            	  changeTelBtn.style.display = 'inline';
            	  updateTelBtn.style.display = 'none';
            	  cancelTelBtn.style.display = 'none';
            	  idTel.style.display = 'none';
            	  telVal.style.display = 'inline';
            	  telVal.innerText = tel;
            	  infoTel.innerText = '';
                alert("전화번호가 변경 되었습니다");
              },
              error : function() {
                console.log("전화번호 수정 실패");
              }
            })
          } else{
        	  infoTel.innerText = '중복된 전화번호가 있습니다';
        	  infoTel.style.color = 'red';
          }
        },
        error : function(){
          console.log("전화번호 확인 실패");
        }
      })
    }
  </script>

  <!-- 주소 변경 -->
  <script>
	  var addressVal = document.getElementById('addressVal');
	  var changeAddressBtn = document.getElementById('changeAddressBtn');
	  var updateAddressBtn = document.getElementById('updateAddressBtn');
	  var cancelAddressBtn = document.getElementById('cancelAddressBtn');
	  var searchAddressBtn = document.getElementById('searchAddressBtn');
	  var idAddress = document.getElementById('address');
	  
	  changeAddressBtn.onclick = function(){
		  changeAddressBtn.style.display = 'none';
		  cancelAddressBtn.style.display = 'inline';
		  searchAddressBtn.style.display = 'inline';
    }
	  
    searchAddressBtn.onclick = function(){
    	searchAddressF();
    }
    
    updateAddressBtn.onclick = function(){
    	updateAddressF();
    }
    
    cancelAddressBtn.onclick = function() {
    	changeAddressBtn.style.display = 'inline';
      updateAddressBtn.style.display = 'none';
      cancelAddressBtn.style.display = 'none';
      searchAddressBtn.style.display = 'none';
      idAddress.style.display = 'none';
      addressVal.style.display = 'inline';
    }

    function searchAddressF() {
      new daum.Postcode({
        oncomplete: function (data) {
        	idAddress.value = data.sido + data.sigungu;
        	idAddress.style.display = 'inline';
          addressVal.style.display = 'none';
          updateAddressBtn.style.display = 'inline';
        }
      }).open();
    }
    
    function updateAddressF() {
      let address = idAddress.value;
      
      $.ajax({
        url : 'updateBasicAddress',
        type : 'post',
        data : 'address=' + address,
        success : function(result){
        	changeAddressBtn.style.display = 'inline';
          updateAddressBtn.style.display = 'none';
          cancelAddressBtn.style.display = 'none';
          searchAddressBtn.style.display = 'none';
          idAddress.style.display = 'none'
       	  addressVal.style.display = 'inline';
          addressVal.innerText = address;
        	alert("주소가 변경 되었습니다.")
        },
        error : function(){
          console.log("주소 변경 실패");
        }
      })
    }
  </script>
  
<!-- 다음 우편 API -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</body>
