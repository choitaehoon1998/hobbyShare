<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
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
	width: 300px;
}

.mypage_box {
	padding-left: 30%;
}

.mypage_input {
	position: relative;
	padding-bottom: 10px;
}

.mypage_changeBtn{
	display: none;
}
</style>

<body class="mypage_box">
	<div class="mypage_member">
		<strong>닉네임</strong>
		<div class="mypage_input">
			<input type="text" value="${loginUser.nickName}" 
			id="nickname" readOnly>
			<button id='changeNickBtn'>수정</button>
			<button id='updateNickBtn' class="mypage_changeBtn">확인</button>
			<button id='cancelNickBtn' class="mypage_changeBtn">취소</button>
		</div>
		<strong>이름</strong>
		<div class="mypage_input">
			<input type="text" value="${loginUser.name}" 
			id="name" readOnly>
			<button id='changeNameBtn'>수정</button>
			<button id='updateNameBtn' class="mypage_changeBtn">확인</button>
			<button id='cancelNameBtn' class="mypage_changeBtn">취소</button>
		</div>
		<strong>이메일</strong>
		<div>
			<input type="text" value="${loginUser.email}" readOnly>
		</div>
		<strong>비밀번호</strong>
		<div class="mypage_input">
			<input type="password" value="${loginUser.password}" 
			id="pw" readOnly>
			<button id='changePwBtn'>수정</button>
			<button id='updatePwBtn' class="mypage_changeBtn">확인</button>
			<button id='cancelPwBtn' class="mypage_changeBtn">취소</button>
		</div>
		<button style="background-color: tomato;">회원탈퇴</button>
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

	<!-- 닉네임 변경 -->
	<script>
	var changeNickBtn = document.getElementById('changeNickBtn');
	var updateNickBtn = document.getElementById('updateNickBtn');
	var cancelNickBtn = document.getElementById('cancelNickBtn');
	var idNickName = document.getElementById('nickname');
	
	changeNickBtn.onclick = function(){
		changeNickBtn.style.display = 'none';
		updateNickBtn.style.display = 'inline';
		cancelNickBtn.style.display = 'inline';
		idNickName.readOnly = false;
	}
	
	updateNickBtn.onclick = function(){
		updateNickName();
	}
	
	cancelNickBtn.onclick = function(){
		idNickName.value = '${loginUser.nickName}';
		changeNickBtn.style.display = 'inline';
		updateNickBtn.style.display = 'none';
		cancelNickBtn.style.display = 'none';
		idNickName.readOnly = true;
	}
	
	function updateNickName(){
		var nickname = idNickName.value;
		$.ajax({
			url : 'updateNickName',
			type : 'post',
			data : 'nickname=' + nickname,
			success : function(result) {
				changeNickBtn.style.display = 'inline';
				updateNickBtn.style.display = 'none';
				cancelNickBtn.style.display = 'none';
				idNickName.readOnly = true;
			},
			error : function() {
				console.log("닉네임 수정 실패");
			}
		})
	}
	</script>
	
	<!-- 이름 변경 -->
	<script>
		var changeNameBtn = document.getElementById('changeNameBtn');
		var updateNameBtn = document.getElementById('updateNameBtn');
		var cancelNameBtn = document.getElementById('cancelNameBtn');
		var idName = document.getElementById('name');
		
		changeNameBtn.onclick = function(){
			changeNameBtn.style.display = 'none';
			updateNameBtn.style.display = 'inline';
			cancelNameBtn.style.display = 'inline';
			idName.readOnly = false;
		}
		
		updateNameBtn.onclick = function(){
			updateName();
		}
		
		cancelNameBtn.onclick = function(){
			idName.value = '${loginUser.name}';
			changeNameBtn.style.display = 'inline';
			updateNameBtn.style.display = 'none';
			cancelNameBtn.style.display = 'none';
			idName.readOnly = true;
		}
		
		function updateName(){
			var name = idName.value;
			$.ajax({
				url : 'updateName',
				type : 'post',
				data : 'name=' + name,
				success : function(result) {
					changeNameBtn.style.display = 'inline';
					updateNameBtn.style.display = 'none';
					cancelNameBtn.style.display = 'none';
					idName.readOnly = true;
				},
				error : function() {
					console.log("이름 수정 실패");
				}
			})
		}
	</script>
	
	<!-- 비밀번호 변경 -->
	<script>
		var changePwBtn = document.getElementById('changePwBtn');
		var updatePwBtn = document.getElementById('updatePwBtn');
		var cancelPwBtn = document.getElementById('cancelPwBtn');
		var idPw = document.getElementById('pw');
		
		changePwBtn.onclick = function(){
			changePwBtn.style.display = 'none';
			updatePwBtn.style.display = 'inline';
			cancelPwBtn.style.display = 'inline';
			idPw.readOnly = false;
		}
		
		updatePwBtn.onclick = function(){
			updatePw();
		}
		
		cancelPwBtn.onclick = function(){
			idPw.value = '${loginUser.password}';
			changePwBtn.style.display = 'inline';
			updatePwBtn.style.display = 'none';
			cancelPwBtn.style.display = 'none';
			idPw.readOnly = true;
		}
		
		function updatePw(){
			var password = idPw.value;
			$.ajax({
				url : 'updatePw',
				type : 'post',
				data : 'password=' + password,
				success : function(result) {
					changePwBtn.style.display = 'inline';
					updatePwBtn.style.display = 'none';
					cancelPwBtn.style.display = 'none';
					idPw.readOnly = true;
				},
				error : function() {
					console.log("비밀번호 수정 실패");
				}
			})
		}
	</script>
</body>
