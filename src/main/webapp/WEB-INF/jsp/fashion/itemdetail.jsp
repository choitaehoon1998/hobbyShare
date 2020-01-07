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
    
<p class="card-text">${fashionItem.price}</p>
<p class="card-text">${fashionItem.category}</p>
<p class="card-text">${fashionItem.itemName}</p>


</body>
<script src="/node_modules/popper.js/dist/popper.min.js"></script>
<script src="/node_modules/jquery/dist/jquery.min.js"></script>
<script src="/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<script>


 
 </script>
</html>