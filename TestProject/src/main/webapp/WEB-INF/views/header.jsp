<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 스프링은 따로 라이브러리를 설치하지 않아도 다운 받을 라이브러리를 설정할 수 있다. -->
<!-- 그 중에 jstl 라이브러리도 있기 때문에 사용할 수 있는것 -->
<!-- 라이브러리 목록은 iot/pom.xml, c:\사용자\.m2에서 확인가능 -->

<link rel="stylesheet" type="text/css" href="css/common.css">
<!-- rel : 형태는 스타일 시트, 타입은 텍스트로된 css -->
<style>
header ul, header ul li {
	margin: 0;
	padding: 0;
	display: inline;
}

header .category {
	font-size: 18px;
}

header .category ul li:not(:first-child) { /* 첫번째 li만 빼고 지정 */
	padding-left: 30px;
	padding-top: 15px;
}

header .category ul li a:hover, header .category ul li a.active {
	font-weight: bold;
	color: #0000cd;
}
header .banner {   
    width: auto; height: auto;
    max-width: 130px;
    max-height: 130px;}


</style>
<header style="border-bottom: 1px solid #ccc; padding: 10px 0; text-align: right">
	<div class="category" style="width:720px; margin:15 auto"> 
		<ul>
			<li><a href='mainhome/resist' ${category eq 'cu' ? "class='active'" : '' } >회원등록</a></li>
			<li><a href='mainhome/userlist'>회원목록</a></li>
			<li><a href='mainhome/usersearch' >검색</a></li>
		</ul>
	</div>
</header>