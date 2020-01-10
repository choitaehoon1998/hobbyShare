<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>soccerproductcomment - form</title>
</head>
<body>
  <div class="comment-form-area">
    <h4>Comments</h4>
    <form action="add" method="post">
      <input type="hidden" name="soccerProductNo"> 
      <input type="hidden" name="memberNo"> 
      <textarea name="content"></textarea>
      <button>등록</button>
    </form>
  </div>
</body>
</html>