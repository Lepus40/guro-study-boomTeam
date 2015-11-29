<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<meta charset="UTF-8" />
<script type="text/javascript" src="<c:url value="/resources/lib/jquery-2.1.1.min.js" />"></script>	
<script type="text/javascript" src="<c:url value="/resources/lib/jquery.tmpl.js" />"></script>
<!-- <script src="http://code.jquery.com/jquery-1.10.2.js"></script> -->
<head>
<title>3조</title>
<tiles:insertAttribute name="resource" defaultValue="" />
</head>
  	<body>
 		<H1>3조 게시판</H2>
  		<tiles:insertAttribute name="body" />
  	</body>
</html>