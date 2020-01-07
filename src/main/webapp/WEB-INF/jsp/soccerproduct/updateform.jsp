<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <title>hobbyshare - SoccerProductForm</title>
  <link href="https://fonts.googleapis.com/css?family=Bangers&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
  <style>
		body {
			margin: 0;
			padding: 0;
			font-family: 'Noto Sans KR', sans-serif;
		}
		
		.soccerproduct-form {
			width: 1000px;
  		margin: 0 auto;
  		padding-top: 30px;
		}
		
		.product-form {
			background: #eee;
			padding: 20px;
		}
		
		.product-form h1 {
			text-align: center; 
			font-family : 'Bangers', cursive;
			margin: 70px 0;
			color: #B71C1C;
			font-size: 55px;
			font-weight: 500;
		}
		
		.product-form input, textarea {
			display: block;
			width: 100%;
			padding: 0 20px;
			height: 45px;
			box-sizing: border-box;
			outline: none;
			border: none;
			font-size: 13px;
		}
		
		.product-photo {
      width: 400px;
    }
		.txtb {
			margin: 20px 0;
			background: rgba(255, 255, 255, .5);
			border-radius: 5px;
		}
		
		label {
		  font-size: 18px;
		  
		}
  </style>
</head>
<body>

<%-- <jsp:include page="../../tiles/header.jsp" /> --%>
  <div class="soccerproduct-form">
    <form class="product-form" action="update" method="post" enctype="multipart/form-data">
<!--     <form class="product-form" action="update" method="post"> -->
      <input type="hidden" id="soccerProductNo" name="soccerProductNo" value="${soccerProduct.soccerProductNo}"/>
	    <h1>Soccer Product Store</h1>
	    <div>
        <label class="label">작성자</label>
        <label class="label">${member.nickname}</label>
      </div>
	    <div>
        <label for="title">상품명</label>
        <input type="text" id="title" class="txtb" name="title" value="${soccerProduct.title}"/>
      </div>
      <div>
	      <label for="price">상품 가격</la bel>
        <input type="text" id="price" class="txtb" name="price" value="${soccerProduct.price}" />
      </div>
      <div>
        <label for="content">상품 상세</label>
        <textarea class="txtb" id="content" name="content" >${soccerProduct.content}</textarea>
      </div>
      <c:forEach items="${soccerProduct.files}" var="file">
      ㅋㅋㅋ===> ${file.photoFileNo}
          <div class="${file.photoFileNo}" id="photos">
	          <img src="/upload/soccerproduct/${file.filePath}" class="product-photo">
	          <button type="button" class="deletePhotoBtn">&times;</button>
          </div>
      </c:forEach>
      <div id="photo-add-form">
      <!-- 사진 추가 -->
      </div>
      <div>
        <button type="button" id="addPhoto" class="photo-btn">사진 추가</button>
      </div>
      <button class="product-btn">변경하기</button>
    </form>
  </div>
  <script src="/node_modules/handlebars/dist/handlebars.min.js"></script>
  <script src="/node_modules/jquery/dist/jquery.min.js"></script>
  <script id="photo-form-template" type="text/x-handlebars-template">
    <div>
      <label for="">상품사진</label>
      <input type="file" class="add-photo-file" name="filePath">
      <img class="add-image-section" src="" width="400px" style="display:none;">
      <button type="button" id="deletePhoto" class="btn-danger">&times;</button>
    </div>
  </script>
  
  <script>
	  $(function(){
		  $(document).on("click", ".deletePhotoBtn", function() {
		    
		    var allData = {"no" : $(this).parent().attr('class')}
		    $(this).parent().remove()
		    
		    $.ajax({
		      url : "/hobbyshare/json/soccerproduct/deletephoto",
		      type : "GET",
		      dataType : "json",
		      data : allData,
		      success : function(data) {
		        }
		      });
		    })
	  })
    var photoAddTemplate = Handlebars.compile($('#photo-form-template').html());

    $('#addPhoto').on('click', (e) => {
    	$('#photo-add-form').append(photoAddTemplate);
    });
    
    $('#photo-add-form').on('click', '#deletePhoto', function(e) {
    	$(this.parentNode).remove();
    });
    
    var addPhotoFile = $('.add-photo-file');
    var addImageSection = $('.add-image-section');
    
    function readURL(input) {
    	if (input.files && input.files[0]) {
    		var reader = new FileReader();
    		reader.onload = function (e) {
    			$('#image-section').attr('style', 'block');
    			$('#image-section').attr('src', e.target.result);
    		}
    		reader.readAsDataURL(input.files[0]);
    	}
    }
    
    function readURL2(input) {
    	var reader2 = new FileReader();
    	reader2.onload = function (e) {
    		$(input.parentNode).find('.add-image-section').attr('style', 'block');
    		$(input.parentNode).find('.add-image-section').attr('src', e.target.result);
    	}
    	reader2.readAsDataURL(input.files[0]);
    };
    
    $('#product-image').change(function () {
    	readURL(this);
    });
    
    $(document).on('change', '.add-photo-file', function () {
    	readURL2(this);
    });
	  
  </script>
</body>
</html>





