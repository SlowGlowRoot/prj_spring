<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MAIN</title>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <script src="resources/home/js/query.js"></script>
    <link rel="stylesheet" href="resources/home/css/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@300;400;700&family=Pacifico&family=Rock+Salt&display=swap" rel="stylesheet">
</head>
<body>
    <h1>M A I N</h1>
    <div id="wrap">
        <div id="wrap_profile">
            <section id="left_box">
                <p id="name">이름 : 서희근</p>
                <p id="birth">생년월일 : 2004년 01월 12일</p>
                <p id="email">이메일 : gofla7956@naver.com</p>
                <p id="phone">연락처 : 010-31**-****</p>
            </section>
            <section id="right_box">
                <img src="resources/home/img/silhouette.webp" alt="메인 이미지">
            </section>
        </div>
        <div id="wrap_portfolio">
            <button class="btn btn_user" id="btn_usr"><span>사 용 자</span></button>
            <button class="btn btn_manager" id="btn_xdm"><span>관 리 자</span></button>
        </div>
    </div>
    
    <script type="text/javascript">
	   $(function(){
	   		$("#btn_xdm").on("click", function() {
	   			location.href = "/LoginXdmForm";
	   		});
	   });
	   
	   $(function(){
		   	$("#btn_usr").on("click", function() {
		   		location.href = "/LoginUsrForm";
		   	});
	   });
    </script>
</body>
</html>