<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조회</title>
</head>
<body>
<table>
 <thead>
  <tr>
   <th>아이디</th>
   <th>이름</th>
  </tr>
 </thead>
 
 <tbody>
  <c:forEach items="${list}" var="list">
 <tr>
  <td>${list.id}</td>
  <td>${list.name}</td>
 </tr>
</c:forEach>
 </tbody>

</table>
</body>
</html>