<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<Style>
</Style>

<c:forEach items="${reviewList}" var="reviewList">
	<div>
	  ${reviewListFile.filePath}
	  ${reviewListFile.rating}
	  ${reviewList.restaurantName}
	  ${reviewList.address}
	  ${reviewList.tel}
	</div>
</c:forEach>
<div id="map" style="width:500px;height:400px;"></div>
  <script type="text/javascript" 
  src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cf6c8508d9652d21e6cd4113e43a70a8"></script>
  <script>
    var container = document.getElementById('map');
    var options = {
      center: new kakao.maps.LatLng(33.450701, 126.570667),
      level: 3
    };

    var map = new kakao.maps.Map(container, options);
  </script>