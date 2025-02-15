<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>${post.title}</title>

<%@ include file="/common/style.jsp" %>
<link rel="stylesheet" href="/css/main.css">
<link rel="stylesheet" href="/css/board/post.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script src="/js/board/qnaPost.js"></script>
<script type="text/javascript" src="/js/board/isUserInPost.js"></script>

<style>
* {
	box-sizing: border-box;
	margin: 0px;
	padding: 0px;
	text-decoration: none;
	list-style: none;
}

.container {
	width: 100%;
}

a {
	text-decoration: none;
}

.dropdown-menu[data-bs-popper] {
	right: 0;
	left: auto;
}

.body_guide {
	max-width: 1300px;
	width: 100%;
	height: 100%;
	margin: auto;
}

.w15 {
	width: 15%;
}

.w20 {
	width: 20%;
}

.w35 {
	width: 35%;
}

.w45 {
	width: 45%;
}

.ml20 {
	margin-left: 20px;
}

.mt200 {
	margin-top: 200px;
}

.mt80 {
	margin-top: 80px !important;
}

.mt10 {
	margin-top: 10px;
}

.mb200 {
	margin-bottom: 200px;
}

.mb80 {
	margin-bottom: 80px;
}

.mb50 {
	margin-bottom: 50px;
}

.mb40 {
	margin-bottom: 40px;
}

.mb30 {
	margin-bottom: 30px;
}

.mb15 {
	margin-bottom: 15px;
}

.mb10 {
	margin-bottom: 10px;
}

.ptb50 {
	padding: 30px 0px;
}

.ptb50 {
	padding: 50px 0px;
}

.pb180 {
	padding-bottom: 180px;
}

.pl15 {
	padding-left: 15px;
}

.postTop {
	min-height: 190px !important; 
	padding: 25px 15px !important;
}

#postContents {
	min-height: 470px;
	padding: 0px 15px;
}

.postBtns {
	margin: 10px 0px 0px 20px;
	border: 0px;
	border-radius: 10px;
	width: 100px;
	height: 50px;
}

.postBtnsMini {
	margin: 10px 0px 0px 10px;
	border: 0px;
	border-radius: 10px;
	width: 50px;
	height: 50px;
}

.reply{
	padding: 15px 0px 0px 15px !important;
}

.reply, .nestedReply{
	border: 1px solid #7d7d7d;
}

.replyInsertBtn {
	border: 0px;
	background-color: #ffffff00;
	padding: 0px 25px 25px 0px;
}

.nestedCover {
	padding: 0px 25px 25px 0px;
}

.nestedCover button{
	border: 0px;
	background-color: #ffffff00;
	margin-left:15px;
}


.replyBtns div, .nestedReplyBtn, .nestedReplyPrintBtn {
	cursor: pointer;
}

.nestedReplyBtn:hover ,.nestedReplyPrintBtn:hover{
	text-decoration: underline;
}

.isWriter {
	border: 1px solid #5d6ce1;
	border-radius: 10px;
	margin-left: 10px;
	width: 65px;
	height: 25px;
	display: flex;
	align-items: center;
	justify-content: center;
}

.filename {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.topBtns {
	height: 50px;
	display: flex;
	justify-content: end;
	align-items: center;
}

.topBtns button {
	padding: 5px 10px;
	border: 3px solid black;
	background-color: #FFFFFF00;
	margin-left: 10px;
	border-radius: 5px;
}

.topBtns button:hover, .recommendBtn:hover {
	background-color: #5d6ce1;
	color: white;
	border: 3px solid #5d6ce1;
}

.topBtns button:hover i, .recommendBtn:hover i {
	color: white;
}

.topBtns .btnClicked, .replyBtns .btnClicked {
	background-color: #5d6ce1;
	color: white;
	border: 3px solid #5d6ce1;
}

.btnClicked i {
	color: white;
}

.replyUpdate, .replyDelete, .replyCancel,
.replySave {
	display: flex;
	justify-content: center;
	align-items: center;
}

.recommendBtn {
	border: 2px solid black;
	width: 70px;
	height: 40px;
	border-radius: 10px;
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 1px;
}

.nestedReplyPrintBtn{
	margin-right:10px;
}

.ptb15{
	padding:15px 0px;
}

.nopadding{
	padding: 10px 0 0 0;
}

#replyInsertTxt[contenteditable]:empty:before {
  content: attr(placeholder);
}

</style>
</head>


<body>
	<input id="userID" type="hidden" value="${loginId}">
	<div class="container-fluid p-0">
		<%@ include file="/common/header.jsp" %>

		<div class="body">
			<div class="body_guide">
				<div class="row g-0 mb80">
					<div class="col-12 common fontEnglish fw700 fs40 mt80">Q&A</div>

					<div class="col-12">
						<div class="row g-0 post">
							<div class="col-12 postTop">
								<div class="col-12 fw400 fs35 mb15" id="postTitle">${post.title}
								</div>
								<div class="col-12 fontEnglish fw400 fs25 mb10 pl15"
									id="postWriter">${post.nickName}</div>
									<div class="col-12 fw400 fs20 colorDarkgray pl15"
									id="postDetailInfo">${post.stringFormat }</div>
									<!--  &nbsp;&nbsp;&nbsp;조회--> 
								<hr>
								<div class="col-12 fw400 fs25" id="postContents">${post.contents}</div>
							</div>
						</div>
						<div class="row g-0 postBottom mb40">
							<div class="col-3 col-sm-2 col-xl-1 fw400 fs20 mt10">첨부 파일</div>
							<div class="col-4 col-sm-4 col-xl-5 fw400 fs20 colorBlue mt10 filename">
								<c:choose>
									<c:when test="${files.size() > 0}">
										<c:forEach var="i" items="${files}">
											<a href="/download.file?sysname=${i.systemName}&oriname=${i.originName}">${i.originName}</a><br>
										</c:forEach>
									</c:when>
									<c:otherwise><span class="colorBlack">없음</span></c:otherwise>
								</c:choose>	
							</div>
							<div class="col-5 col-sm-6 d-flex justify-content-end fw400 fs20">
								<div class="d-none d-md-flex">
									<c:choose>
										<c:when test="${ loginID eq post.writer}">
											<button class="postBtns bColorGreen update">수정</button>
											<button class="postBtns bColorGreen delete">삭제</button>
										</c:when>
										<c:when test="${loginID eq 'admin' }">
											<button class="postBtns bColorGreen delete">삭제</button>
										</c:when>
									</c:choose>
									<button class="postBtns bColorBlue colorWhite goList">목록</button>
								</div>

								<div class="d-md-none">
									<c:choose>
										<c:when test="${ loginID eq post.writer}">
											<button class="postBtnsMini bColorGreen update">
												<i class="fa-solid fa-pen-to-square"></i>
											</button>
											<button class="postBtnsMini bColorGreen delete">
												<i class="fa-solid fa-trash-can"></i>
											</button>
										</c:when>
										<c:when test="${loginID eq 'admin' }">
											<button class="postBtnsMini bColorGreen delete">
												<i class="fa-solid fa-trash-can"></i>
											</button>
										</c:when>
									</c:choose>
									<button class="postBtnsMini bColorBlue colorWhite goList">
										<i class="fa-solid fa-bars" style="color: #ffffff;"></i>
									</button>
								</div>

								<input type="hidden" id="cpage" value="${cpage}"> 
								<input type="hidden" id="menu" value="${menu}"> 
								<input type="hidden" id="searchBy" value="${searchBy}">
								<input type="hidden" id="keyword" value="${keyword}">
							</div>
						</div>
					</div>
					
					<div class="row g-0">
						<div class="col-12 common fontEnglish fw700 fs35 mb40">답글</div>
						<div class="col-12 mb30">
							<div class="row g-0 replyInput">
								<div class="col-10 col-lg-11" id="replyInsertTxt" contenteditable="false" placeholder="관리자만 작성할 수 있습니다."></div>
								<input type="hidden" id="postSeq" value="${post.seq}">
								<div class="col-2 col-lg-1 btnCover">
									<c:choose>
										<c:when test="${loginID eq 'admin'}">
											<button class="fw400 fs25 colorDarkgray replyInsertBtn"
											id="replyInsertBtn">등록</button>
										</c:when>
										<c:otherwise>
											<button class="fw400 fs25 colorDarkgray replyInsertBtn"
											id="replyInsertBtn" disabled>등록</button>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</div>

						<div class="col-12">
							<input type="hidden" id="loginID" value="${loginID}"> <input
								type="hidden" id="postWriterName" value="${post.writer}">
							<div class="row g-0 replys  justify-content-end" id="replys">
							</div>
							<div id="pagination" class="mb200"></div>
							<input type="hidden" id="recordTotalCount" value="${recordTotalCount }">
							<input type="hidden" id="recordCountPerPage" value="${recordCountPerPage }"> 
							<input type="hidden" id="naviCountPerPage" value="${naviCountPerPage }"> 
							<input type="hidden" id="lastPageNum" value="${lastPageNum }"> 
						</div>
					</div>
				</div>
			</div>


			<a href="#">
				<div class="upArrow bColorPink colorWhite">
					<i class="fa-solid fa-arrow-up-long"></i>
				</div>
			</a>

			<%@include file="/common/footer.jsp"%>
		</div>
</body>

</html>