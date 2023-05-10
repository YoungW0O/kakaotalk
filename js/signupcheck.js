function check (){
    var getkorname = RegExp(/^[가-힣]+$/);
    var getengname = RegExp(/^[a-zA-Z]+$/);
    var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
    var getCheck = RegExp(/^[a-zA-Z0-9]{4,12}$/);
    var getPhone = RegExp(/^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$/);

    if(!getPhone.test($("#phone").val())){
        alert("휴대폰번호를 확인해주세요");
        $("#phone").val("");
        $("#phone").focus();
        return false;
    }

    if(!getMail.test($("#mail").val())){
        alert("이메일을 확인해주세요");
        $("#mail").val("");
        $("#mail").focus();
        return false;
    }

    if(!getCheck.test($("#pw").val())){
        alert("비밀번호를 확인해주세요");
        $("#pw").val("");
        $("#pw").focus();
        return false;
    }
    
    if(!getCheck.test($("#pw2").val())){
        alert("비밀번호 확인을 확인해주세요");
        $("#pw2").val("");
        $("#pw2").focus();
        return false;
    }

    if ($("#pw").val() != $("#pw2").val()){
        alert("비밀번호가 상이합니다.");
        $("#pw").val("");
        $("#pw2").val("");
        $("#pw").focus();
    }

    if(getkorname.test($("#name").val()) || getengname.test($("#name").val())){
        return true; 
     }
 
     else{
         alert("성함을 정확히 입력해주세요");
         $("#name").val("");
         $("#name").focus();
         return false;
     }

    
}