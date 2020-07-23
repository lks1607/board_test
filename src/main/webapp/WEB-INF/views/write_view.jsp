<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/mstyle.css" type="text/css">
<link rel="stylesheet" href="resources/css/slick.css" type="text/css">
<link rel="stylesheet" href="resources/css/jquery-ui.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/jquery-ui.theme.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/ui.fancytree.css"
	type="text/css">
<!-- ibsheet -->
<link rel="stylesheet" href="resources/css2/main.css">
<link rel="stylesheet" href="resources/css/ui.reset.css" type="text/css">
<link rel="stylesheet" href="resources/css/ui.common.css"
	type="text/css">
<!-- javascript -->
<script src="resources/lib/jquery-1.12.3.js"></script>
<script src="resources/lib/jquery-ui.js"></script>
<script src="resources/lib/jquery.fancytree.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<!-- ibsheet -->
<script src="resources/lib/ibsheet/highlight.pack.js"></script>
<script src="resources/lib/ibsheet/ibtab.js"></script>
<script src="resources/lib/ibsheet/ibtabinfo.js"></script>
<script src="resources/lib/ibsheet/ibleaders.js"></script>
<script src="resources/lib/ibsheet/ibsheet.js"></script>
<script src="resources/lib/ibsheet/ko.js"></script>
<!------------->
<script src="resources/lib/slick.min.js"></script>
<script src="resources/js/ui.common.js"></script>
</head>
<body>
	<!-- 시트의 부모 요소 -->
	<div class="wrap">

		<header class="header-wrap">
			<div class="top-menu">
				<div class="inner">
					<span class="time"><em>코어브레인</em></span>
					<ul class="menu">
						<li><a href="#none">직원검색</a></li>
						<li><a href="#none">비밀번호변경</a></li>
						<li><a href="#none" class="logout">로그아웃</a></li>
					</ul>
				</div>
			</div>
			<nav class="gnb-area">
				<div class="inner">
					<h1 class="logo">
						<a href="board"><img src="resources/images/common/logo.png"
							alt="core_Brain_HR" style="margin-top: 30px;"></a>
					</h1>
					<ul class="gnb-menu">
						<li><a href="#none">ibsheet</a>
							<ul class="gnb-menu2">
								<li><a href="grid">grid</a></li>
							</ul></li>
						<li><a href="#none">contact</a>
							<ul class="gnb-menu2">
								<li><a href="contact">contact</a></li>
							</ul></li>
						<li><a href="#none">file</a>
							<ul class="gnb-menu2">
								<li><a href="file">file</a></li>
							</ul></li>
						<li><a href="#none">doc</a>
							<ul class="gnb-menu2">
								<li><a href="copy">doc</a></li>
							</ul></li>
						<li><a href="#none">menu5</a></li>
						<li><a href="#none">게시판</a>
							<ul class="gnb-menu2">
								<li><a href="gb">전체글보기</a></li>
							</ul></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- // header-wrap -->

		<aside class="lnb-wrap">
			<div class="lnb-tit">
				<a href="write_view"><h2>글쓰기</h2></a>
			</div>
			<nav class="lnb-area">
				<ul class="lnb-menu">
					<li class="has-sub active open"><a href="#none">인사운영</a>
						<ul class="lnb-menu2">
							<li class="has-sub active open"><a href="#none">- 조직관리</a>
								<ul class="lnb-menu3">
									<li><a href="#none">조직관리</a></li>
									<li><a href="#none">기구조직도</a></li>
									<li><a href="#none">화상조직도</a></li>
									<li><a href="#none">조직별직원</a></li>
								</ul></li>
							<li class="has-sub"><a href="#none">- 인사관리</a>
								<ul class="lnb-menu3">
									<li><a href="#none">계약관리</a></li>
									<li><a href="#none">인사정보</a></li>
									<li><a href="#none">인사기록카드</a></li>
									<li><a href="#none">기념일관리</a></li>
									<li><a href="#none">비상연락망관리</a></li>
									<li><a href="#none">자기신고서</a></li>
									<li><a href="#none">사내공모관리</a></li>
								</ul></li>
							<li><a href="#none">- 상벌관리</a></li>
							<li><a href="#none">- 신원보증</a></li>
						</ul></li>
					<li class="has-sub"><a href="#none">인사통계</a>
						<ul class="lnb-menu2">
							<li class="has-sub"><a href="#none">- 년도별통계</a>
								<ul class="lnb-menu3">
									<li><a href="#none">년별직원수</a></li>
									<li><a href="#none">조직별직원수</a></li>
									<li><a href="#none">직원구분비율</a></li>
									<li><a href="#none">인사정보</a></li>
								</ul></li>
						</ul></li>
					<li><a href="#none">발령관리</a></li>
					<li><a href="#none">직무관리</a></li>
					<li><a href="#none">근태관리</a></li>
				</ul>
			</nav>
		</aside>
		<!-- // lnb-wrap -->

		<button class="lnb-btn">버튼</button>

		<div class="container">

			<section class="content">
				<div class="pop-wrap" style="width: 930px;">
					<div class="pop-head">
						<h2>글쓰기</h2>
						<a href="gb" class="close">목록보기</a>
					</div>
					<br>
					<form action="write" method="post">
						<table class="tbl-style01 mt15">
							<tr>
								<th style="width: 20%; text-align: center">제목</th>
								<td><input type="text" name="title" size="30" required /></td>
							</tr>
							<tr>
								<th style="width: 20%; text-align: center">작성자</th>
								<td><input type="text" name="writer" size="30" required /></td>
							</tr>
							
							<tr>
								<th style="width: 20%; text-align: center">내용</th>
								<td><textarea name="content" rows="5" cols="50" required></textarea></td>
							</tr>
							<tr>
								<td colspan="2"><input type="submit" value="입력"
									class="btn01" /></td>
							</tr>
						</table>
					</form>
				</div>

			</section>

		</div>
		<!-- // container -->

		<footer class="footer-wrap">
			<div class="inner">
				<p>
					Copyright(c) 주식회사 코어브레인. All Rights Reserved. <span>UI/UX by
						muplus.CO,.LTD</span> Help desk TEL <strong>031)932-9282</strong>
				</p>
				<select>
					<option>System</option>
				</select>
			</div>
		</footer>
		<!-- // footer-wrap -->

	</div>
</body>
</html>