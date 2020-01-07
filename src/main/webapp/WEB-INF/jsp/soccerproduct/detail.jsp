<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hobbyshare - SoccerProductDetail</title>
<style>
  body {
    margin: 0 auto;
    width: 1100px;
  }
  .product-photo {
    width: 400px;
    height: 370px;
    object-fit: cover;
  }
 .soccerInfo {
  border-bottom: 2px solid #404040;
  padding-bottom: 5px;
}

.store-h3 {
  font-size: 37px !important;
  font-weight: 500 !important;
  line-height: 1.2 !important;
  margin: 0 0 8px !important;
}

.sInfo-span {
  float: right;
  font-size: 13px;
  font-weight: 600;
  margin: 3px 0;
}

.mypage-tagA {
  font-size: inherit;
  color:#404040;
}

/* span { */
/*   color: #404040; */
/*   font-size: 15px; */
/*   line-height: 2; */
/*   font-weight: 400; */
/* } */

#store-detail {
  border: 2px solid red;
  margin: 30px 0;
  padding: 20px;
}

#noticeManagerArea {
  background: beige;
  margin: 5px;
  padding: 5px;
}
</style>
</head>
<body onload="bodyOnload();">
  <div id="store-detail">
    <div class="d-flex justify-content-between align-items-center py-0 mb-3 soccerInfo">
      <h3 class="store-h3">축구 상품 스토어</h3>
      <span class="sInfo-span"> 
        <a class="mypage-tagA">${soccerProduct.createdDate}</a>
      </span>
    </div>
    <h4>${soccerProduct.title}</h4>
    <hr>
      <!-- 메인 이미지 -->
      <img src="/upload/soccerproduct/${soccerProduct.files[0].filePath}" class="product-photo">
      <div>
	      <span>${soccerProduct.title}</span><br>
	      <span><fmt:formatNumber value="${soccerProduct.price}" pattern="#,###" />원</span><br>
	      <span>${soccerProduct.createdDate}</span>&nbsp;|&nbsp;
	      <span>
	        <c:if test="${soccerProduct.status eq 0}">판매중</c:if>       
	        <c:if test="${soccerProduct.status ne 0}">판매완료</c:if>
	      </span><br>
	          판매자정보&nbsp;<span>${soccerProduct.member.nickname}</span><br>
		      배송방법: 판매자와 직접 연락하세요. 
      </div>
      <br>
      <div class="notice_manager" id="noticeManagerArea">
		    <div id="noticeContentArea">
		      * 거래전 필독! 주의하세요!
					<br>* 연락처가 없이 외부링크, 카카오톡, 댓글로만 거래할 때
					<br>* 연락처 및 계좌번호를 사이버캅과 더치트로 꼭 조회해보기
					<br>* 업체인 척 위장하여 신분증과 사업자등록증을 보내는 경우
					<br>* 고가의 물품(휴대폰,전자기기)등만 판매하고 최근(1주일 내) 게시글만 있을 때
					<br>* 해외직구로 면세받은 물품을 판매하는 행위는 불법입니다.
				</div>
		  </div>
      <hr>
      <span>${soccerProduct.content}</span><br><br>
      <!-- 서브 이미지 -->
      <c:forEach items="${soccerProduct.files}" var="file" varStatus="status">
        <c:if test="${status.index > 0}">
          <img src="/upload/soccerproduct/${file.filePath}" class="product-photo">
        </c:if>
	      <br>
      </c:forEach>
<%--       로그인유저:<c:out value="${member.memberNo}"></c:out> --%>
<%--       글쓴유저:<c:out value="${soccerProduct.member.memberNo}"></c:out> --%>
      <input type="hidden" id="writeId" value="${soccerProduct.member.memberNo}"/>
      <input type="hidden" id="loginId" value="${member.memberNo}">
      <form action="updateform" method="post">
        <input type="hidden" id="no" name="no" value="${soccerProduct.soccerProductNo}"/>
	      <div id="user-btn">
		      <button>변경</button>
		      <a href="delete?no=${soccerProduct.soccerProductNo}" style="border:1px solid #666666;margin:10px;padding:10px;">삭제</a>
	      </div>
      </form>
  </div>
  <script src="/node_modules/jquery/dist/jquery.min.js"></script>
  <script>
    function bodyOnload() {
    	var writeId = document.getElementById("writeId").value;
    	var loginId = document.getElementById("loginId").value;
    	if (writeId == loginId) {
    		$("#user-btn").show();
    	} else {
    		$("#user-btn").hide();
    	}
    }
  </script>
</body>
</html>