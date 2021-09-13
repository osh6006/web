<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');

body {
	margin: 0 auto;
	text-align: center;
	font-size: 16px;
	font-family: 'Noto Sans KR', sans-serif;
}

select {
width: 200px;
padding: .8em .5em;
border: 1px solid #999;
font-family: inherit;
background: url('arrow.jpg') no-repeat 95% 50%;
border-radius: 0px;
-webkit-appearance: none;
-moz-appearance: none;
appearance: none;
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

.w-pct60 { width: 60% 

}
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

<body></body>
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
	<h3>회원을 검색하세요</h3>
	<!-- CSS 파일을 변경 후에 바로 Refresh가 안된다면 common.css 파일로 들어가서 바로 Refresh 해주면 적용 된다. -->
<form  method="post"  action="/usersearch">
	<select name="ch1">
		<option value="name">이름</option>
		<option value="id">아이디</option>
	</select>
	<input type="text" name="word" >
	<input type="submit" value="검색하기">
</form>
<div class="soso" padding: 30px; margin-top:5px;>
	<table class='w-pct60'>  
		<tr>
			<th>ID</th>
			<th >이름</th>
			<th >생년월일</th>
			<th >주소</th>
			<th >우편번호</th>
			<th >선수유형</th>
		</tr>
		<!-- for(꺼낸 배열 변수를 담을 새로운 변수 (String x) : 배열 변수(list)) -->
		<!-- items : 배열 변수 -->
		<!-- var : 꺼낸 배열 변수를 담을 새로운 변수 -->
 		 <c:forEach items="${list}" var="list">
			<tr>
				<td>${list.id }</td>
				<td>${list.name}</td>
				<td>${list.birth}</td>
				<td>${list.name}</td>
				<td>${list.name}</td>
				<td>${list.name}</td>
				<td>${list.name}</td>
			</tr>
		</c:forEach>
	</table>
	</div>