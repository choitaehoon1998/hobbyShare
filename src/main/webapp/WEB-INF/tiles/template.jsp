<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<script src="/node_modules/jquery/dist/jquery.min.js"></script>
<!-- 다음 우편 API -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<body>
  <tiles:insertAttribute name="header"/>
  <tiles:insertAttribute name="body"/>
  <tiles:insertAttribute name="footer"/>
</body>
</html>