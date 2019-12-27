<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
  <title>수업관리시스템</title>
  <script src="/node_modules/jquery/dist/jquery.min.js"></script>
</head>
<body>

<tiles:insertAttribute name="header"/>

<div id="content"><tiles:insertAttribute name="body"/></div>

<tiles:insertAttribute name="footer"/>

</body>
</html>







