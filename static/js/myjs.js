function myform(){
    var form = document.myform;
    if(form.username.value == ""){
      alert('아이디를 입력해주세요');
      form.username.focus();
      return false;
    } else if(form.password.value == ""){
      alert('비밀번호를 입력해주세용');
      form.password.focus();
      return false;
    }
    form.submit();
}

function signupCheck(){
    var form = document.myform;
    if(form.username.value == ""){
        alert('아이디를 입력해주세요');
      form.username.focus();
      return false;
    } else if(form.password.value == ""){
        alert('비밀번호를 입력해주세용');
      form.password.focus();
      return false;
    }
    form.submit();
}