<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet"
	href="/node_modules/bootstrap/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<style>
.marginer {
	margin-left: 10%;
	margin-right: 10%;
	margin-top : 10%;
}

.left {
	width: 49.5%;
	display: inline-block;
}

.right {
	width: 49.5%;
	display: inline-block;
	text-align: right;
}
.midder{
width: 100%;
  display: inline-block;
  text-align: center;
}
</style>
<head>
<meta charset="UTF-8">
<title>fashionFeedbackdetail</title>
</head>
<body>
	<div class="marginer">
		<div>
			<div>
				<div class="left top">
					작성일자 ${feedback.registerDate}<br> 조회수 : ${feedback.viewCount }
				</div>
				<div class="right top">
					추천수 :
					<%--  ${feedback.contents } --%>
					<br> 작성자 : ${feedback.member.nickName}
				</div>
				<hr>
			</div>
			<div class="midder">
	   내용 : ${feedback.contents }
			
			</div>
    <hr>
    <div class="midder comments">
   
    <input type="text" class="comment"><button class="commentupload "></button>
    </div>
    
		</div>

	</div>



</body>
<script src="/node_modules/popper.js/dist/popper.min.js"></script>
<script src="/node_modules/jquery/dist/jquery.min.js"></script>
<script src="/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<script>


 
 </script>
</html>