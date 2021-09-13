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
    alert("한글을 입력해 주세요.")
    name_.focus;
    name_.value = "";
    return false;
  }
  return true;    
}