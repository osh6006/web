<!-- signUp.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SignUp</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>
        .container {
            width: 500px;
            margin: 40px auto;
            line-height: 16px;
        }
        h5 {
            text-align: center;
        }
        h5 span {
            color: teal;
        }
        .n {
            font-size: 13px;
        }
        #signup {
            background-color: #302DF4;
            color: white;
            border: 0;
            border-radius: 5px;
            padding: 10px 224px;
        }
        .bottom input {
            background-color: white;
            border: 0;
            color: teal;
            font-size: 16px;
        }
        i {
            color: lightgray;
        }
        #imail {
            position: absolute;
            top: 110px;
            margin: 0 470px;
        }
        #iperson1 {
            position: absolute;
            top: 160px;
            margin: 0 470px;
        }
        #iperson2 {
            position: absolute;
            top: 210px;
            margin: 0 470px;
        }
        #ipw {
            position: absolute;
            top: 260px;
            margin: 0 470px;
        }
        input {
            border: 1px solid lightgray;
            border-radius: 3px;
        }
    </style>
</head>

<body>
 <script type="text/javascript"  src="js/login_vali.js"> </script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/parsley.js/2.9.2/parsley.min.js"></script>
 
    <div class="container">
        <h5><span>회원 가입</span> 페이지입니다.</h5>
        <hr /><br />
        <form method="post"   onsubmit="return allCheck(this);" >
            <input type="text" placeholder="아이디(4~12 영어 및 숫자)" id="_id" name="id"  maxlength="15"  minlength="8" required style="height:30px; width: 495px" /><br /><br />
            <input type="password" placeholder="비밀번호(4~12 영어 및 숫자)" id="_password" maxlength="20"  minlength="8"  name="password" required style="height:30px; width: 495px" /><br /><br />
            <input type="password" placeholder="비밀번호 확인"  id="_password2" maxlength="20"  minlength="8"  name="password2" required style="height:30px; width: 495px" /><br /><br />
            <input type="email" placeholder="이메일 주소" id="_email" name="email"  maxlength="25"  minlength="15"  required style="height:30px; width: 495px" /><br /><br />
            <input type="text" placeholder="이름(한글)"  id="_name" name="name"  maxlength="20" required style="height:30px; width: 495px" /><br />
            <p>
            <input type="submit" value="가입하기" id="signup" /><br /><br />
            </p>
        </form>
        <hr />
    </div>
</body>
</html>