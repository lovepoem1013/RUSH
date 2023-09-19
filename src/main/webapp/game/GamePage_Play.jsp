<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="/css/main.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
<link rel="stylesheet" href="/css/game/game.css"/>
<style>
* {
	box-sizing: border-box;
}

.test {
	background-color: white;
	width: 300px;
	height: 200px;
}

.game {
	max-width: 1023px;
	width: 1023px;
	height: 579px;
	background-color: white;
	margin: auto;
}

.gameContainer {
	max-width: 1300px;
	margin: auto;
}
</style>
</head>
<body>
	<div class="container-fluid g-0">
		<div class="header bColorBlack">
			<div class="header_guide">
				<a href="#">
					<div class="logo fontLogo colorWhite">RUSH</div>
				</a>
				<nav class="navbar navbar-expand navbar-light colorWhite">
					<div class="container-fluid p-0">
						<div class="collapse navbar-collapse w-100 g-0 m-0"
							id="navbarNavDropdown">
							<ul class="navbar-nav row g-0 w-100">
								<li class="nav-item dropdown col-3 text-end"><a
									class="nav-link text-white fontEnglish" href="#"
									id="navbarDropdownMenuLink" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> GAME </a>
									<ul class="dropdown-menu p-0"
										aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item fontEnglish" href="#">Action</a></li>
										<li><a class="dropdown-item fontEnglish" href="#">Another
												action</a></li>
										<li><a class="dropdown-item fontEnglish" href="#">Something
												else here</a></li>
									</ul></li>
								<li class="nav-item dropdown col-3 text-end"><a
									class="nav-link text-white fontEnglish" href="#"
									id="navbarDropdownMenuLink" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> AWARDS </a>
									<ul class="dropdown-menu p-0"
										aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item fontEnglish" href="#">Action</a></li>
										<li><a class="dropdown-item fontEnglish" href="#">Another
												action</a></li>
										<li><a class="dropdown-item fontEnglish" href="#">Something
												else here</a></li>
									</ul></li>
								<li class="nav-item dropdown col-3 text-end"><a
									class="nav-link text-white fontEnglish" href="#"
									id="navbarDropdownMenuLink" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> BOARD </a>
									<ul class="dropdown-menu p-0"
										aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item fontEnglish" href="#">Action</a></li>
										<li><a class="dropdown-item fontEnglish" href="#">Another
												action</a></li>
										<li><a class="dropdown-item fontEnglish" href="#">Something
												else here</a></li>
									</ul></li>
								<li class="nav-item dropdown col-3 text-end"><a
									class="nav-link text-white fontEnglish" href="#"
									id="navbarDropdownMenuLink" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> LOGIN </a>
									<ul class="dropdown-menu p-0"
										aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item fontEnglish" href="#">Action</a></li>
										<li><a class="dropdown-item fontEnglish" href="#">Another
												action</a></li>
										<li><a class="dropdown-item fontEnglish" href="#">Something
												else here</a></li>
									</ul></li>
							</ul>
						</div>
					</div>
				</nav>
			</div>
		</div>
		<div class="container-fluid g-0 bColorBlack">
			<div class="gameContainer">
				<div class="row g-0">
					<div class="col-2 d-flex justify-content-center">
						<div class="row g-0">
							<div class="col-12 mt-5">
								<div class="btn-group-vertical" role="group"
									aria-label="Vertical button group">
									<button type="button" class="btn btn-primary">최신게임</button>
									<button type="button" class="btn btn-primary active">인기게임</button>
									<button type="button" class="btn btn-primary">리듬게임</button>
									<button type="button" class="btn btn-primary">아케이드게임</button>
									<button type="button" class="btn btn-primary">퍼즐게임</button>
									<!-- js로 넘어가기 -->
								</div>
							</div>
						</div>
					</div>
					<div class="col-10">
						<div class="row g-0">
							<div class="col-12">
								<p class="gameCategory fs-5 mb-0">카테고리</p>
							</div>
						</div>
						<div class="row g-0">
							<div class="col-10">
								<p class="gameName fs-2 mt-0">게임 이름</p>
							</div>
							<div
								class="col-2 d-flex justify-content-center align-content-bottom">
								<div>
									<button>즐겨찾기</button>
								</div>
							</div>
							<hr class="border border-primary border-3 opacity-75">
						</div>
						<div class="row g-0">
							<div class="col-12 game">play ground</div>
						</div>
						<div class="row g-0">
							<div class="col-12 d-flex justify-content-center mt150">
								<div class="btn-group" role="group"
									aria-label="Basic radio toggle button group">
									<input type="radio" class="btn-check" name="btnradio"
										id="btnradio1" autocomplete="off" checked> <label
										class="btn btn-outline-primary" for="btnradio1">게임 순위</label>

									<input type="radio" class="btn-check" name="btnradio"
										id="btnradio2" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio2">게임 정보</label>
								</div>
							</div>
							<!-- jstl 버튼 checked 확인해서 순위나 조작방법으로 바꿔야됨. -->
						</div>
					</div>

				</div>
			</div>

		</div>
		<div class="container-fluid g-0">
			<div class="footer bColorBlack">
			<div class="footer_guide">
				<div class="footer_logo fontLogo colorWhite">RUSH</div>
				<div class="copy fontEnglish colorWhite">COPYRIGHT © SKY. ALL
					RIGHT RESERVED</div>
				<div class="footer_contents">
					<div class="about conDiv fontEnglish colorWhite">
						<div class="footer_title fontEnglish">ABOUT US</div>
						<div class="footer_con ">
							<div class="con">팀명 :</div>
							<div class="encon">SKY</div>
						</div>
					</div>
					<div class="office conDiv fontEnglish colorWhite">
						<div class="footer_title fontEnglish">OFFICE</div>
						<div class="footer_con">
							<div class="con">
								충청남도 천안시 서북구<br> 천안대로 1223-24
							</div>
						</div>
					</div>
					<div class="contact conDiv fontEnglish colorWhite">
						<div class="footer_title fontEnglish">CONTACT US</div>
						<div class="footer_con fontEnglish">
							<div class="con fontEnglish">a@naver.com</div>
							<div class="con fontEnglish">01012345678</div>
						</div>
					</div>
					<div class="provision conDiv fontEnglish colorWhite">
						<div class="footer_title fontEnglish">PROVISION</div>
						<div class="footer_con">
							<div class="con">개인정보 처리방침</div>
							<div class="con">서비스 이용약관</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<script>
        $(".btn").on("click",function(){
            // $(".categories").text();
            console.log("");
        });
    </script>
</body>
</html>