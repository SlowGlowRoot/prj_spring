$(function(){

    $("#login-form-submit").click(function(e){
//        e.preventDefault

        if($("#user_id").val() == "") {

            alert("아이디를 입력해주세요.");
            $("#user_id").focus();
            return false;

        } else if( $("#user_pw").val() == "" ) {

            alert("비밀번호를 입력해주세요.");
            $("#user_id").focus();
            return false;

        }

        if($("#user_id").val() == "xdmin" && $("#user_pw").val() == "123") {
            
            alert("어서오세요 XDMIN 님");
            location.href = '/indexUsrView';

        } else {

            alert("아이디 혹은 비밀번호가 일치하지 않습니다.");
            $("#user_id").focus();
            location.reload();
            return false;

        }

    });

});