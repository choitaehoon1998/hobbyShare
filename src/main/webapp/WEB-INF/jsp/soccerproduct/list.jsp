<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
  <title>hobbyshare - SoccerProductList</title>
  <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' integrity='sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T' crossorigin='anonymous'>
  <link rel="stylesheet" href="/css/soccerproduct/list.css">
</head>
<%-- <jsp:include page="../header.jsp"/> --%>
<body>
  <div class="content">
    <div class="d-flex justify-content-between align-items-center py-0 mb-3 soccerInfo">
      <h3 class="store-h3">축구 상품 스토어</h3>
      <span class="sInfo-span"> 
        <a href="form" class="mypage-tagA">상품 등록</a>
      </span>
    </div>
    <div id="prod_columns">
    <c:forEach items="${soccerProducts}" var="product">
        <figure>
          <a href="detail?no=${product.soccerProductNo}">
          <img src="/upload/soccerproduct/${product.files[0].filePath}">
          <figcaption>
            <div class="product-info">
	            <div class="product-title tagA">
	              <a href="detail?no=${product.soccerProductNo}">
	              ${product.title}</a>
	            </div>
	            <div class="product-price">
	              <span><fmt:formatNumber value="${product.price}" pattern="#,###" />원</span>
	            </div>
	            <div class="product-nickname">${product.member.nickname}</div>
              <span class="product-ctd">
                ${product.createdDate} &nbsp;|&nbsp;
              </span>
	            <span class="product-status">
	              <c:if test="${product.status eq 0}">판매중</c:if>
	              <c:if test="${product.status eq 1}">판매완료</c:if>
	            </span>
            </div>
          </figcaption>
        </figure>
        </c:forEach>
    </div>
  </div>
</body>
</html>
