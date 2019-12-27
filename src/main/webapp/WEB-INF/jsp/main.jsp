<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<style>
.photoleft {
	float : left;
 	width : 46.5%;
 	margin-left : 3% ;
}
.photoright{
	float : right ;
	width : 46.5% ;
	margin-right : 3% ;
}
.quatorimg{
	width : 100%;
	height : 350px;
	object-fit : fill;
}
.wholebackground {
	background : #EEEEEE;
	margin : 0px; 
}
.forright{
	 margin-left : 10px ; 
	 margin-bottom :10px;
}
.forleft {
	margin-right : 10px ;
	margin-bottom :10px;
}
.hobbyShare {
	text-align : left ;
	background : #FFF8E1;
	color : #B71C1C;
	font-size :  3.5em; 
	padding-bottom : 1%;
	padding-top : 1%;  
	font-weight : bolder ;
}

.scale1,.scale2,.scale3,.scale4 {
  transition: all 0.3s ease-in-out; /* 부드러운 모션을 위해 추가 */
}

.scale1:hover {
  transform: scale(1.7);
  transform-origin : top left; 
  cursor : pointer;
}
.scale2:hover {
  transform: scale(1.7);
  transform-origin : bottom left; 
  cursor : pointer;
}
.scale3:hover {
  transform: scale(1.7);
  transform-origin : top right; 
  cursor : pointer;
}
.scale4:hover {
  transform: scale(1.7);
  transform-origin : bottom right; 
  cursor : pointer;
}
.headerimg {
 	weight: 55px ;
	height : 51px ;
 	object-fit :fill ;
 	margin-left : 35px ;
 	margin-right : 15px ;
}
.sign{
	font-size : 40px; 
	border-radius : 8px;
    outline: 0;
    color: #FFFFFF;
    background : #B71C1C;
    cursor: pointer;  
}
.rightsign{
display : inline ; 
float : right ;
margin-right : 2.6%;
margin-bottom : 0.3%;
}
</style>
<head>
<meta charset="UTF-8">
<title>MAIN</title>
</head>
 <body class="wholebackground">
<div >
  <div style="margin-top : 30px ; height:auto;">
    <div class="photoleft">
      <div><img class="quatorimg forleft scale1" src="http://www.ilovepc.co.kr/news/photo/201807/19651_36119_3141.png"></div>
      <div><img class="quatorimg forleft scale2" src="https://www.agoda.com/wp-content/uploads/2019/03/Best-restaurants-in-Seoul-Fine-dining-Jungsik-Seoul-Mingles-restaurant.jpg"></div>
     </div>
    <div class="photoright">
      <div><img class="quatorimg forright scale3" src="http://image.moazine.com/VCover/XLarge/000370/000000044857.jpg"></div>
      <div><img class="quatorimg forright scale4" src="https://i.ytimg.com/vi/oRaPYhodiYs/maxresdefault.jpg"></div>
    </div>
  </div>
</div>
</body>



 <script src="/node_modules/jquery/dist/jquery.min.js"></script>
 <script>
 $(document).on('mouseenter', '.remover', function() {
	    $('.dept01').slideDown(1);
	    $(this).removeClass("remover");
	});
	$(document).on('mouseleave', '.topMenu ', function () {
	    if (!$(this).hasClass('remover')) {
	        $('.dept01').slideUp(1);
	        $(this).addClass("remover");
	    }
	});
 </script>
</html>