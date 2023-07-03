<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN</title>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <link rel="stylesheet" href="resources/xdm.member/css/style.css">
    <script src="https://kit.fontawesome.com/61c609ae51.js" crossorigin="anonymous"></script>
</head>
<body>
    <div class="login-wrapper">
        <h2> <a href="/biographyUsrView"><i class="fa-solid fa-arrow-left"></i></a> ADMIN</h2>
        <form method="post" id="login-form">
            <input type="text" name="userName" id="user_id" placeholder="ID" >
            <input type="password" name="userPassword" id="user_pw" placeholder="PW">
            <label for="remember-check">
                <!-- <input type="checkbox" id="remember-check"> <span>아이디 저장하기</span> -->
            </label>
            <input type="button" value="Login" id="login-form-submit">
        </form>
    </div>
    
    <script type="text/javascript">
    
	$("#login-form-submit").on("click", function() {
		if ( $("#user_id").val() == "asd" && $("#user_pw").val() == "" ) {
			alert("어서오세요. XDMIN 님")
			location.href = "/codeGroupList";
		} else {
			location.href = "/indexXdmView";
		}
	});
    
    </script>

    
</body>
</html>
