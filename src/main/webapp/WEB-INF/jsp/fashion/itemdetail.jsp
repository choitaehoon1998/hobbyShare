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
.itempacker{
	margin-left: 10%;
	margin-right: 10%;
	margin-top: 1%;
}
.image4{
	width : 39%;
	display: inline-block;
}
.detail6{
	width: 60%;
	display: inline-block;
}
.imggg{
	width: 100%;
}
</style>
<head>
<meta charset="UTF-8">
<title>fashionItemDetail</title>
</head>
<body>
	
	<div class="itempacker">
	<div class="image4 "><img class="imggg" alt="" src="/images/a.jpg" ></div>
	<div class="detail6">
		이름 : ${fashionItem.itemName} <br>
		가격 : ${fashionItem.price}
		
	</div>
	<div>
		<img class="imggg" alt="" src="/images/a.jpg" >
		<img class="imggg" alt="" src="/images/a.jpg" >
		<img class="imggg" alt="" src="/images/a.jpg" >
		<img class="imggg" alt="" src="/images/a.jpg" >
		<img class="imggg" alt="" src="/images/a.jpg" >
	</div>
	</div>

</body>
<script src="/node_modules/popper.js/dist/popper.min.js"></script>
<script src="/node_modules/jquery/dist/jquery.min.js"></script>
<script src="/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<script></script>
</html>