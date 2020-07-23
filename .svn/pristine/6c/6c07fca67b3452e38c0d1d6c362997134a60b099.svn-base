<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/style.css" type="text/css">
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
<body onload='ib.sampleBtn(this)'>
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
				<h2>인사조직</h2>
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
					게시글수 : ${pageVo.totRow}
					<table border="1">
						<colgroup>
							<col width="10%">
							<col width="55%">
							<col width="10%">
							<col width="15%">
							<col width="10%">
						</colgroup>
						<tr>
							<th class="dul">번호</th>
							<th class="dul">제목</th>
							<th class="dul">작성자</th>
							<th class="dul">날짜</th>
							<th class="dul">조회수</th>
						</tr>
						<c:forEach items="${list }" var="list">
							<tr>
								<td class="douner">${list.bno }</td>
								<td class="rarira">
								<a href="content_view?bno=${list.bno }">${list.title }</a>
								</td>
								<td class="douner">${list.writer }</td>
								<td class="douner">${list.regDate }</td>
							</tr>
						</c:forEach>
					</table>
					<br /> <input type="hidden" name="page" id="page" value="" />
					<div class="hoy">
					<c:if test="${pageVo.totPage>1 }">
						<c:if test="${pageVo.page>1 }">
							<a href="board?page=1">[처음]</a>
							<a href="board?page=${pageVo.page-1 }">[이전]</a>
						</c:if>
						<c:forEach begin="${pageVo.pageStart }" end="${pageVo.pageEnd }"
							var="i">
							<c:choose>
								<c:when test="${i eq pageVo.page }">
									<strong style="color: red">${i } &nbsp;</strong>
								</c:when>
								<c:otherwise>
									<a href="board?page=${i }">${i } &nbsp;</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${pageVo.totPage>pageVo.page }">
							<a href="board?page=${pageVo.page+1 }">[다음]</a>
							<a href="board?page=${pageVo.totPage }">[마지막]</a>
						</c:if>
					</c:if>
					</div>
					<br />
					<form action="board_search">
						<input type="text" name="key" />&nbsp;<input type="submit"
							value="검색" />
					</form>

			</section>
			${json }
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