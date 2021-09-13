<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Home</title>
<style>
</style>
</head>
<body>
<jsp:include page="header.jsp" />
<c:if test ="${sessionScope.userid  != null }">
<h3>
	${sessionScope.name } (${sessionScope.userid }) 님의 방문을 환영합니다. 
</h3>
</c:if>
<div class ="map" id="content">

</div>
<jsp:include page="footer.jsp"/>
</body>
</html>