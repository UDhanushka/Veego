<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="ad.css" />
</head>
<body>

	<!-- banner -->
	
	<div id="bannerAd" class="banner-ad">
	
	  <button onclick="closeBanner()" class="close-btn">&times;</button>
	  <img id="bannerImage" src="${ads[0].media_url}" alt="Advertisement">
	</div>	
	
	 
	<script>
	  const ads = [
	    <c:forEach var="ad" items="${ads}" varStatus="status">
	      "${ad.media_url}"<c:if test="${!status.last}">,</c:if>
	    </c:forEach>
	  ];  
	
	  let index = 0;
	  const bannerImage = document.getElementById('bannerImage');
	
	  function rotateBanner() {
	    index = (index + 1) % ads.length;
	    bannerImage.src = ads[index];
	  }
	
	  setInterval(rotateBanner, 50000);
	
	  function closeBanner() {
	    document.getElementById('bannerAd').style.display = 'none';
	  }
	</script>
	
</body>
</html>