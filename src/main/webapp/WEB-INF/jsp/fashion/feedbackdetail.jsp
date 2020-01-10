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
.btn-primary {
	width: 58px;
	height: 48px;
}
.comment{
	width : 500px ;
	height : 48px;

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
   	댓글 부분 <br>
    <input type="text" class="comment" id=${feedback.fashionFeedbackNo }><button class="btn-primary addcomments">작성</button>
    </div>
    
		</div>

	</div>



</body>
<script src="/node_modules/popper.js/dist/popper.min.js"></script>
<script src="/node_modules/jquery/dist/jquery.min.js"></script>
<script src="/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<script>
$('.addcomments').click(function(){
	let contents = $('.comment').val() ;
	let boardNo = $('.comment').attr('id');
	$.post("")


})

 $('#my-add-btn').on('click', (event) => {
    let boardNo = parseInt(document.querySelector('#jisooBoardNo').value);
    let contents = document.querySelector('.my-comment-form').value;
    
    
    $.post("detail/add", {
        "boardNo": boardNo,
        "contents": contents
      }, function(result) {
        var comment = "<div class='my-comment-div comment-"+result.no+"' data-no='"+result.no+"'>"; 
          comment += "<span class='id-"+result.no+"'>"+result.id+"</span>" 
          comment += "<span class='createdDate-"+result.no+"'>"+result.createdDate+"</span>";
          comment += "<p class='my-comment-content contents-"+result.no+"'>"+result.contents+"</p><div>";
          comment += "<textarea class='my-comment'>"+result.contents+"</textarea>";
          comment += "<div class='my-comment-control' data-member-no='"+result.memberNo+"'>";
          comment += "<button class='my-save-btn btn btn-primary' style='display: none' data-no='"+result.no+"' align='right'>저장</button>\n";
          comment += "<button class='my-cancel-btn btn btn-primary' style='display: none' data-no='"+result.no+"' align='right'>취소</button>";
          comment += "<button class='my-update-btn btn btn-primary'>수정</button>\n";
          comment += "<button class='my-delete-btn btn btn-primary'>삭제</button></div></div><hr></div>";
          $("#mymy-comment").append(comment); 
         
          var comment = "<div class='ana comment-"+result.no+"' data-no='"+result.no+"'>";
          $("#mymy-comment").append(comment);
  
      $(".my-comment-form").val("");
      });
});

 
 </script>
</html>