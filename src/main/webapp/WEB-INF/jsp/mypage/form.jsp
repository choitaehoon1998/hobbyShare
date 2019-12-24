<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
</style>

<body class="mypage_box">
	<div class="mypage_member">
		<strong>닉네임</strong>
		<div>
			<input type="text" value="this.props.nickname" readonly>
		</div>
		<strong>이름</strong>
		<div>
			<input type="text" value="this.props.name" readonly>
		</div>
		<strong>이메일</strong>
		<div>
			<input type="text" value="this.props.email" readonly>
		</div>
		<strong>비밀번호</strong>
		<div style="position: relative; padding-bottom: 10px;">
			<input type="text">
			<button>변경</button>
		</div>
		<button style="background-color: tomato;">회원탈퇴</button>
		<button style="float: right;">수정</button>
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

</body>
</html>