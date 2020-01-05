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
.cardpack {
	margin-top: 2%;
	margin-left: 10%;
	margin-right: 10%;
}

.card {
	margin-bottom: 12px;
	display: inline-block;
}

.writebtn {
	float: right;
	margin-bottom: 10px;
}
/* .selectpack {
	display: flow-root;
} */
.card-title {
	margin-top: .75rem;
}
.card-body {
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    min-height: 1px;
    padding-left: 1.25rem;
    padding-right: 1.25rem;
    padding-bottom: 0;
    padding-top: 0;
}
</style>
<head>
<meta charset="UTF-8">
<title>fashionFeedback</title>
</head>
<body>
	<div class="cardpack">
		<!-- <div class="selectpack">
			<button type="button" class="btn btn-secondary writebtn"
				onclick="location.href='./feedbackform'">새글작성</button>
		</div> -->
		 <c:forEach items="${items}" var="items"> 
		<div class="card" style="width: 18rem;">
			<a href="/hobbyshare/fashion/itemdetail?no=${items.fashionItemNo}"><img
				src="https://cdn.mustit.co.kr/lib/upload/product/GenieMarket/2019/08/eb95d0b0171d48631b19bdeaf6f84523.jpg/_dims_/resize/500x500/extent/500x500"
				class="card-img-top" alt="...">
			</a>
			<div class="card-body">
				<h5 class="card-title">${items.itemName}</h5>
			</div>
			<ul class="list-group list-group-flush">
				<li class="list-group-item">가격 : ${items.price}</li>
				<li class="list-group-item">평점 : 5점 </li>
			</ul>
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