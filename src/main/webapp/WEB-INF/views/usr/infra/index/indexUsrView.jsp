<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!doctype html>
<html lang="ko">
	<head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <title>Document</title>
	    <!-- 부트스트랩 CSS CND -->
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
	    integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
	  	<!-- FontAwesome -->
	    <script src="https://kit.fontawesome.com/61c609ae51.js" crossorigin="anonymous"></script>
	    <!-- kaionex_style.css -->
	    <link rel="stylesheet" href="resources/indexUsrView/css/style.css">
	</head>
	<body>
		<header id="header">
			<h1><a href="#"><img alt="카이오넥스 메인로고" src="img/main_logo.jpg"></a></h1>
			<h2><a href="#">ABC Management System</a></h2>
			<div id="header_right" class="float_right">
				<img alt="관리자 사진" src="img/admin_img.jpg">
				<div id="admin_wrap" class="float_left">
					<p>SlowGlowRoot</p>
					<p>Administrator</p>
				</div>
				<select class="form-select" aria-label="Default select example" id="lang">
					<option selected>언어</option>
					<option value="korean">한국어</option>
					<option value="english">English</option>
					<option value="chinese">中文</option>
					<option value="japanese">日本語</option>
				</select>
			</div>
		</header>
		
		<nav class="navbar navbar-expand-lg bg-body-tertiary">
		  <div class="container-fluid">
		    <a class="navbar-brand" href="#">Navbar</a>
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
		    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    <div class="collapse navbar-collapse" id="navbarNav">
		      <ul class="navbar-nav">
		        <li class="nav-item">
		          <a class="nav-link active" aria-current="page" href="#">회원관리</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="#">서비스관리</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="#">사이트관리</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="#">로그관리</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="/codeGroupXdmList">시스템관리</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="#">시스템관리</a>
		        </li>
		      </ul>
		    </div>
		  </div>
		</nav>
		
		<div id="manage_wrap">
			<section id="burger" class="float_left">
				<ul>
					<li><a href="kaionex_index.html">
						<i class="fa-solid fa-chevron-right"></i>
						<span>Home</span>
					</a></li>
					<li><a href="#">
						<i class="fa-solid fa-chevron-right"></i>
						<span>Dashboard</span>
					</a></li>
					<li><a href="#">
						<i class="fa-solid fa-chevron-right"></i>
						<span>Orders</span>
					</a></li>
					<hr>
					<li><a href="#">
						<i class="fa-solid fa-chevron-right"></i>
						<span>Account</span>
					</a></li>
				</ul>
			</section>
			
			<div id="manage_text" class="float_left">
				<h2>국가코드 관리</h2>
			</div>
			
			<section id="manage_home" class="float_left">
			
				<div id="search_wrap">
					<div id="search_box">
						<div class="row justify-content-start">
							<div class="col-md-3">
								<select id="use" class="form-select form-select-sm">
								    <option value="no">N</option>
								    <option value="yes">Y</option>
								</select>
							</div>
							<div class="col-md-3">
								<select id="date" class="form-select form-select-sm">
								    <option selected>날짜</option>
								    <option value="date_230415">2023년 04월 15일</option>
								    <option value="date_230515">2023년 05월 15일</option>
								</select>
							</div>
							<div class="col-md-3">
								<input type="text" class="form-control form-select-sm" id="start_date" placeholder="시작일">
							</div>
							<div class="col-md-3">
								<input type="text" class="form-control form-select-sm" id="end_date" placeholder="종료일">
							</div>
						</div>
						
						<div class="row justify-content-start">
							<div class="col-md-3">
								<select id="search_select" class="form-select form-select-sm">
								    <option selected>검색구분</option>
								    <option value="order">#</option>
								    <option value="seq">Seq (순서)</option>
								    <option value="code_two">국가 코드 (2자리)</option>
								    <option value="code_three">국가 코드 (3자리)</option>
								    <option value="order">#</option>
								</select>
							</div>
							<div class="col-md-3">
								<input type="text" class="form-control form-select-sm" id="search_ctrl" placeholder="검색어">
							</div>
							<div class="col-md-3">
								<button type="button" class="btn btn-warning btn-sm" id="btn_search">
									<a href="#"><i class="fa-solid fa-magnifying-glass"></i></a>
								</button>
								<button type="button" class="btn btn-danger btn-sm" id="btn_reset">
									<a href="#"><i class="fa-solid fa-arrow-rotate-right"></i></a>
								</button>
							</div>
						</div>
					</div>
				</div>
				
				
				
				<div id="select_wrap">
					<div class="row justify-content-between">
						<p class="col-md-1">Total: 3</p>
						<div class="col-md-1">
							<select class="form-select form-select-sm" id="total" aria-label=".form-select-sm example">
							    <option selected>10</option>
							    <option value="i_wonder_how">이건 대체</option>
							    <option value="i_wonder_why">뭐에 쓰는 셀렉터일까</option>
							    <option value="yesterday">궁금하네</option>
							</select>
						</div>
					</div>	
				</div>
				
				<div id="col_wrap">
					<table class="tg" style="table-layout: fixed; width: 1510px">
						<colgroup>
							<col style="width: 39px;">
							<col style="width: 79px;">
							<col style="width: 79px">
							<col style="width: 131px">
							<col style="width: 232px">
							<col style="width: 201px">
							<col style="width: 201px">
							<col style="width: 73px">
							<col style="width: 73px">
							<col style="width: 201px">
							<col style="width: 201px">
						</colgroup>
						<thead>
						  <tr>
						    <th class="tg-w38y">
						    	<div class="form-check">
								  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
								  <label class="form-check-label" for="flexCheckDefault">
								  </label>
								</div>
						    </th>
						    <th class="tg-w38y">#</th>
						    <th class="tg-w38y">Seq</th>
						    <th class="tg-w38y">국가 이름</th>
						    <th class="tg-w38y">국가 이름 (영문)</th>
						    <th class="tg-w38y">국가 코드 (2자리)</th>
						    <th class="tg-w38y">국가 코드 (3자리)</th>
						    <th class="tg-w38y">사용</th>
						    <th class="tg-w38y">순서</th>
						    <th class="tg-w38y">등록일</th>
						    <th class="tg-w38y">수정일</th>
						  </tr>
						</thead>
						<tbody>
						  <tr>
						    <td class="tg-fb1n">
						    	<div class="form-check">
								  <input class="form-check-input" type="checkbox" value="" id="seq_head">
								  <label class="form-check-label" for="seq_head">
								  </label>
								</div>
						    </td>
						    <td class="tg-fb1n">3</td>
						    <td class="tg-fb1n">4</td>
						    <td class="tg-fb1n">중국</td>
						    <td class="tg-fb1n">China</td>
						    <td class="tg-fb1n">CN</td>
						    <td class="tg-fb1n">CHN</td>
						    <td class="tg-fb1n">Y</td>
						    <td class="tg-fb1n">4</td>
						    <td class="tg-fb1n">2023-05-15 09:20:06</td>
						    <td class="tg-fb1n">2023-05-15 09:20:06</td>
						  </tr>
						  <tr>
						    <td class="tg-2fdn">
						    	<div class="form-check">
								  <input class="form-check-input" type="checkbox" value="" id="seq_02">
								  <label class="form-check-label" for="seq_02">
								  </label>
								</div>
						    </td>
						    <td class="tg-2fdn">2</td>
						    <td class="tg-2fdn">2</td>
						    <td class="tg-2fdn">미국</td>
						    <td class="tg-2fdn">United States of America</td>
						    <td class="tg-2fdn">US</td>
						    <td class="tg-2fdn">USA</td>
						    <td class="tg-2fdn">Y</td>
						    <td class="tg-2fdn">2</td>
						    <td class="tg-2fdn">2023-05-15 09:03:28</td>
						    <td class="tg-2fdn">2023-05-15 09:03:28</td>
						  </tr>
						  <tr>
						    <td class="tg-fb1n">
						    	<div class="form-check">
								  <input class="form-check-input" type="checkbox" value="" id="seq_01">
								  <label class="form-check-label" for="seq_01">
								  </label>
								</div>
						    </td>
						    <td class="tg-fb1n">1</td>
						    <td class="tg-fb1n">1</td>
						    <td class="tg-fb1n">대한민국</td>
						    <td class="tg-fb1n">Korea</td>
						    <td class="tg-fb1n">KO</td>
						    <td class="tg-fb1n">KOR</td>
						    <td class="tg-fb1n">Y</td>
						    <td class="tg-fb1n">1</td>
						    <td class="tg-fb1n">2023-04-15 21:21:02</td>
						    <td class="tg-fb1n">2023-04-15 21:21:02</td>
						  </tr>
						</tbody>
					</table>
				</div>
				
				<div aria-label="..." id="pag_wrap" class="clear_both">
				    <ul class="pagination justify-content-center">
				    	<li class="page-item active" aria-current="page">
				        	<span class="page-link">1</span>
				    	</li>
				    </ul>
				</div>
				<div id="btn_wrap" class="clear_both">
					<div id="btn_wrap_left" class="float_left">
						<button type="button" class="btn btn-danger btn-sm" id="btn_x"><a href="#"><i class="fa-solid fa-xmark"></i></a></button>
						<button type="button" class="btn btn-danger btn-sm" id="btn_delete"><a href="#"><i class="fa-regular fa-trash-can"></i></a></button>
					</div>
					<div id="btn_wrap_right" class="float_right">
						<button type="button" class="btn btn-success btn-sm" id="btn_excel"><a href="#"><i class="fa-regular fa-file-excel"></i></a></button>
						<button type="button" class="btn btn-primary btn-sm" id="btn_add"><a href="sub/kaionex_sub.html"><i class="fa-solid fa-plus"></i></a></button>
					</div>
				</div>
			</section>
		</div>
		
		
		<footer id="fnb" class="clear_both">
			<span>(주)SGR컴퍼니</span>
			<span>대표 서희근</span>
			<span>사업자등록번호 111-11-111111</span>
			<span>경기도 김포시 김포한강4로 125 KR 월드타워 10층</span>
			<p>Copyright 2023. SlowGlowRoot Inc. All rights reserved</p>
		</footer>
		
	    <!-- 부트스트랩 JS CND -->
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
	    integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
	    <!-- JQ CND -->
	  	<script src="https://code.jquery.com/jquery-3.6.4.min.js"
	  	integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
	</body>
</html>