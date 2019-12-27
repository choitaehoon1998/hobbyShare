<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<style>
.photoleft {
 float : left;
 width : 50%;
}
.photoright{
float : right ;
width : 50%
}
.quatorimg{
  width : 100%;
  height : 350px;
}
.wholebackground {
  background : #EEEEEE;
}
</style>
<head>
<meta charset="UTF-8">
<title>MAIN</title>
</head>
<body class="wholebackground">
<div >
  <div>제목 (hobbyShare)적을부분</div>
  <div>
    <div class="photoleft">
      <div><img class="quatorimg" src="http://www.ilovepc.co.kr/news/photo/201807/19651_36119_3141.png"></div>
      <div><img class="quatorimg" src="https://www.agoda.com/wp-content/uploads/2019/03/Best-restaurants-in-Seoul-Fine-dining-Jungsik-Seoul-Mingles-restaurant.jpg"></div>
    </div>
    <div class="photoright">
      <div><img class="quatorimg" src="http://image.moazine.com/VCover/XLarge/000370/000000044857.jpg"></div>
      <div><img class="quatorimg" src="https://i.ytimg.com/vi/oRaPYhodiYs/maxresdefault.jpg"></div>
    </div>
  </div>
</div>
</body>
</html>