<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list JSP</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');

body {
	margin: 0 auto;
	text-align: center;
	font-size: 16px;
	font-family: 'Noto Sans KR', sans-serif;
}

a:link, a:visited {
	text-decoration: none;
	color: #000;
}

#content {
	padding: 20px 0;
	min-width: 1024px;	/* 창의 최소 크기 지정 */
}

img {
	vertical-align: middle;	/* 세로축 가운데 정렬 */
}

table {
	width: 80%;
	margin: 0 auto;
	border: 1px solid;
	border-collapse: collapse;	/* 테두리 겹침 설정 collapse: 겹치지 않게 처리 */
}

table th, table td {
	border: 1px solid;
	padding: 5px 10px;
}

table td a:hover { font-weight: bold; }

.btnSet { margin-top: 20px;	}

a.btn-fill, a.btn-empty {
	text-align: center;
	padding: 3px 10px;
	border:1px solid  #302DF4;
	border-radius: 3px;
	box-shadow: 2px 2px 3px #000;
	/* 오른쪽, 아래쪽, 번진 정도 */
}

a.btn-fill { 
	background-color: #302DF4;
	color: #fff;
}

a.btn-empty { 
	background-color:#302DF4;
	color: #fff
}

.btnSet a:not(:first-child) {
	margin-left: 3px;
}

a:hover { cursor:pointer; }

input {
	height: 22px;
	padding: 3px 5px;
	font-size: 15px;
}

input[type=radio] {
	width: 18px;
	margin: 0 5px 3px;
	vertical-align: middle;
}

table tr td label:not(:last-child) {
	margin-right: 20px;	
}

.w-pct60 { width: 60% }
.w-pct70 { width: 70% }
.w-pct80 { width: 80% }
.w-px40 { width: 40px }
.w-px60 { width: 60px }
.w-px80 { width: 80px }
.w-px100 { width: 100px }
.w-px120 { width: 120px }
.w-px140 { width: 140px }
.w-px160 { width: 160px }
.w-px180 { width: 180px }
.w-px200 { width: 200px }

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
</head>

<body>
<header style="border-bottom: 1px solid #ccc; padding: 10px 0; text-align: right">
	<div class="category" style="width:720px; margin:15 auto"> 
		<ul>
			<li><a href='resist' ${category eq 'cu' ? "class='active'" : '' } >회원등록</a></li>
			<li><a href='userlist'>회원목록</a></li>
			<li><a href='usersearch' >검색</a></li>
		</ul>
	</div>
</header>
<div id="content">
	<h3>고객 목록</h3>
	<!-- CSS 파일을 변경 후에 바로 Refresh가 안된다면 common.css 파일로 들어가서 바로 Refresh 해주면 적용 된다. -->
	<table class='w-pct60'>
		<tr>
			<th class='w-px60'>ID</th>
			<th class='w-px200'>이름</th>
		</tr>
		<!-- for(꺼낸 배열 변수를 담을 새로운 변수 (String x) : 배열 변수(list)) -->
		<!-- items : 배열 변수 -->
		<!-- var : 꺼낸 배열 변수를 담을 새로운 변수 -->
		<core:forEach items="${list }" var="list">
			<tr>
				<td>${list.id }</td>
				<td>${list.name }</td>
			</tr>
		</core:forEach>
	</table>
	</div>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>