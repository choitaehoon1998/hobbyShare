<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="/node_modules/bootstrap/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<style>

.cardpack {
    margin-top: 2%;
    margin-left: 10%;
    margin-right: 10%;
}
.card {
margin-bottom : 12px;
display : inline-block;
}
.writebtn{
float: right ; 
margin-bottom : 10px ; 
}
.selectpack {
display : flow-root;

}
</style>
<head>
<meta charset="UTF-8">
<title>fashionFeedback</title>
</head>
<body>
<div class ="cardpack">
<div class="selectpack"><button type="button" class="btn btn-secondary writebtn" onclick="location.href='./feedbackform'">새글작성</button></div>
<c:forEach items="${feedbacks}" var="feedback">
		<div class="card" style="width: 19.7%;">
  <a href="/hobbyshare/fashion/feedbackdetail?no=${feedback.fashionFeedbackNo}">
  <img src="https://scontent.cdninstagram.com/v/t51.2885-15/e35/s480x480/78713641_774928196360556_5544712637498928774_n.jpg?_nc_ht=scontent-lhr3-1.cdninstagram.com&_nc_cat=100&oh=5446f1643e71ca61f0a7ea503b17e62a&oe=5EAB7FA7" class="card-img-top" alt="...">
  </a>
  <div class="card-body">
    
    <p class="card-text">${feedback.contents}</p>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">작성자 : ${feedback.member.nickName} </li>
    <li class="list-group-item">추천수 : </li>
    <li class="list-group-item">조회수 : ${feedback.viewCount}</li>
  </ul>
  <div class="card-body">
    <a href="#" class="card-link">Card link</a>
    </div>
  </div>
	</c:forEach>
	
 
</div>


</body>
<script src="/node_modules/popper.js/dist/popper.min.js"></script>
<script src="/node_modules/jquery/dist/jquery.min.js"></script>
<script src="/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<script>


 
 </script>
</html>