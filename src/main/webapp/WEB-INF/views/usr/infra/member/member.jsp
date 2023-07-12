<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN</title>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <link rel="stylesheet" href="resources/usr.member/css/style.css">
    <script src="https://kit.fontawesome.com/61c609ae51.js" crossorigin="anonymous"></script>
</head>

<body>
    <div class="login-wrapper">
        <h2> <a href="/biographyUsrView"><i class="fa-solid fa-arrow-left"></i></a> USER</h2>
        <form method="post" id="login-form">
            <input type="text" name="userName" id="user_id" placeholder="ID" >
            <input type="password" name="userPassword" id="user_pw" placeholder="PW">
            <label for="remember-check">
<!--                 <input type="checkbox" id="remember-check"> <span>아이디 저장하기</span> -->
            </label>
            <input type="button" value="Login" id="btnLogin">
        </form>
        <a href="/regUsrforgotId"><span>아이디 찾기</span></a>
	    <a href="/regUsrforgotPw"><span>비밀번호 찾기</span></a>
	    <a href="/memberUsrView"><span>회원가입</span></a>
    </div>
    
    <script type="text/javascript">
    
    $("#btnLogin").on("click", function(){
    	
    	if(validation() == false) return false;
    	
    	$.ajax({
    		async: true 
    		,cache: false
    		,type: "post"
    		/* ,dataType:"json" */
    		,url: "/loginProc"
    		/* ,data : $("#formLogin").serialize() */
    		,data : { "user_id" : $("#user_id").val(),
    			"user_pw" : $("#user_pw").val()}
    		,success: function(response) {
    			if(response.rt == "success") {
    				alert(response.rtMember.ifmmName);
    				location.href = "/";
    			} else {
    				alert("그런 회원 없습니다.");
    			}
    		}
    		,error : function(jqXHR, textStatus, errorThrown){
    			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
    		}
    	});

    });
    
    </script>
    
</body>
</html>