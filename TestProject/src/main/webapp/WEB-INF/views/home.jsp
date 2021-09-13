<!-- login.jsp -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>LogIn</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>
.container {
	width: 385px;
	line-height: 50px;
	margin: 40px auto;
}

h5 {
	text-align: center;
}

h5 span {
	color: teal;
}

.login {
	background-color:  #302DF4;
	color: white;
	border-radius: 5px;
	border: 0;
	padding: 10px 172px;
}

#signup {
	background-color: white;
	color: teal;
	border: 0;
	font-size: 13px;
}

p {
	text-align: center;
}

i {
	color: lightgray;
}

#imail {
	position: absolute;
	top: 130px;
	margin: 0 355px;
}

#ipw {
	position: absolute;
	top: 180px;
	margin: 0 355px;
}

input {
	border: 1px solid lightgray;
	border-radius: 3px;
}
</style>
</head>

<body>
<!--      <script>
     $(function()){
    	 $('#btnLogin').click(function(){
    		 var id= $("#id").val();
    		 var password=$("#password").val();
    		 if(userid==""){
    			 alert("아이디를 입력하세요");
    			 $("#userid").focus();
    			 return;
    		 }
    		 if(password==""){
    			 alert("비밀번호를 입력하세요.");
    			 $("#password").focus();
    			 return;
    		 }
    		 document.form1.action="${path}/logincheck";
    		 document.form.
    	 });
     });
     </script> -->
	<c:if test="${sessionID != null }">
		<script>
			alert("이미 로그인 중입니다.");
			location.href = "home.do";
		</script>
	</c:if>
	<div class="container">
        <div id="imail">
            <i class="material-icons">person_outline</i>
        </div>
        <div id="ipw">
            <i class="material-icons">lock_outline</i>
        </div>
        	<h5><span>로그인</span> 이후 페이지를 이용해 주세요</h5>
        <hr />
        <form name="form1" action="login_check" method="post">
            <input type="text" placeholder="아이디" name="id"  id="id"  required style="height:30px; width: 380px" /><br />            
            <input type="password" placeholder="비밀번호"  id="password"  name="password" required style="height:30px; width: 380px" /><br />
            <input type="submit" id="btnLogin"value="로그인" class="login" />
        </form>
        <c:if test="${message=='error' }">
        	<div style="color:red;">
        	아이디 또는 비밀번호가 일치하지 않습니다.
        	</div>
        </c:if>
        <hr />
        <h5>아직 회원이 아니신가요? </h5>
        <p><a href="signUp"><input type="button" value="여기를  눌러서 회원가입을 해주세요" id="signup" /></a></p>
    </div>
</body>
</html>