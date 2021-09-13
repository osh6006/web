<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
 <meta http-equiv="X-UA-Compatible" content="ie=edge">
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

        .container {
            width: 500px;
            height: 400;
            margin: 40px auto;
            line-height: 20px;
            text-align: left;
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
         #doWrite {
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

        input {
            border: 1px solid lightgray;
            height:40px;
            border-radius: 3px;
        }      
</style>
</head>

<body>
 <!--autoload=false 파라미터를 이용하여 자동으로 로딩되는 것을 막습니다.-->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
var re = /^[a-zA-Z0-9]{4,12}$/; // 아이디와 패스워드가 적합한지 검사할 정규식
var re2 = /^[0-9a-zA-Z]{1,}@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; // 이메일 조건 정규 표현식
function allCheck(){
   var id_ = document.getElementById("_id");
  // ^ 이 규칙으로 문장을 시작한다. 
  // [문자 규칙을 입력]
  // {} = [] 안에 포함되는 문자가 최소 4개부터 12개까지
  
  if(id_.value == ""){
    window.alert("ID를 입력하세요");
    id.focus();
    id.value = "";
    return false;
  }
  else if(!re.test(id_.value)){
    window.alert("아이디는 4~12자와 영어 숫자로만 입력");
    id_.focus();
    id_.value = "";
    return false;
  }
       var pw1 = document.getElementById("_password");
      var pw2 = document.getElementById("_password2");

      // 아이디랑 비번이랑 같을 경우
      if (pw1.value == document.getElementById("_id").value)
      {
        alert("아이디랑 비밀번호가 같으면 안됩니다.")
        pw1.focus;
        pw1.value = "";
        pw2.value = "";
        return false;
      }
      // 비번 길이와 영어소대문자 입력값이 올바른지
      // 정규표현식을 true false로 반환할거면 test
      else if (!re.test(pw1.value))
      {
        alert("비밀번호는 4~12자 또는 영문 대소문자만 입력하세요.");
        pw1.focus;
        pw1.value = "";
        pw2.value = "";
        return false;
      }
      // 비번 확인이 잘 안된 경우
      else if (pw1.value != pw2.value)
      {
        alert("비밀번호를 확인해주세요")
        pw1.focus;
        pw1.value = "";
        pw2.value = "";
        return false;
      }
  var mail_ = document.getElementById("_email");
  if(mail_.value == ""){
    alert("이메일 내용을 입력해주세요.");
    mail_.focus;
    mail_.value = "";
    return false;
  }
  else if(!re2.test(mail_.value)){
    alert("이메일 형식을 확인바랍니다.");
    mail_.focus;
    mail_.value = "";
    return false;
  }
  var name_ = document.getElementById("_name");
  var reKor = /^[가-힣]{1,}$/;
  if (name_.value == null){
    alert("이름을 입력해주세요");
    name_.focus;
    name_.value = "";
    return false;
  }
  else if(!reKor.test(name_.value)){
    alert("한글을 입력해 주세요.");
    name_.focus;
    name_.value = "";
    return false;
  }
  alert("회원가입 성공!");
  return true;    
}
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if (data.buildingName !== '' && data.apartment === 'Y') {
                    extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if (extraRoadAddr !== '') {
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('post_code').value = data.zonecode;
                document.getElementById("address").value = roadAddr;


                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if (data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if (data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>

<header style="border-bottom: 1px solid #ccc; padding: 10px 0; text-align: right">
	<div class="category" style="width:720px; margin:15 auto"> 
		<ul>
			<li><a href='resist' ${category eq 'cu' ? "class='active'" : '' } >회원등록</a></li>
			<li><a href='userlist'>회원목록</a></li>
			<li><a href='usersearch' >검색</a></li>
		</ul>
	</div>
</header>

    <div class="container" >
        <form method="post"  onsubmit="return allCheck(this);">
            <label for="name"  >이름</label><br/>
            <input type="text" placeholder="이름(한글로)" id="_name" name="name"  maxlength="20"  minlength="3" required style="height:30px; width: 495px" /><br /><br />
            <label for="ID"  >아이디</label>
            <input type="text" placeholder="ID(영어와 숫자 4~12)" id="_id" maxlength="15"  minlength="8"  name="id" required style="height:30px; width: 495px" /><br /><br />
            <label for="birth"  >생년월일</label>
            <input type="date" name= "birth"  value="1999-01-01"  style="height:30px; width: 495px"/><br /><br />
            <label for="birth"  >주소</label>
            <input type="text" placeholder="주소" id="address" name="address"  maxlength="25"  minlength="15"  required style="height:30px; width: 495px" /><br /><br />
           <label for="postcode"  >우편번호</label>
            <button type="button"  onclick="sample4_execDaumPostcode()">우편번호 찾기</button>
            <input type="text" placeholder="우편번호"  id="post_code" name="post_code"  maxlength="20" required style="height:30px; width: 495px" /><br /><br />
			<input type="radio" name="type" value="A"/> 선수
			<input type="radio" name="type" value="S"/> 감독
			
            <p>
            <input type="submit" value="등록하기" id="doWrite" /><br /><br />
            </p>
        </form>
    </div>

<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>