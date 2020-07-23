<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
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


			<h2>게시판</h2>
			<br>
					<div>
						<form id="search_form" onkeyup='ib.search(this)' onSubmit="return false;">
							<select name="type">
								<option value="1">제목</option>
								<option value="2">내용 </option>
								<option value="3">글쓴이</option>
							</select>
							<input type="text" name="key" size="20">
						</form>
					</div>
					<br>
				<div class="ibsheet-wrap">
					
				</div>
				<div class="grid">
					<div id="sheetDiv" style="width: 100%; height: 100%;"></div>
				</div>
				<div id="push"></div>
				<div style="float:right; margin-right:97px;">
					<button class="btn01" onclick='ib.sampleBtn1(this)'>ajax</button>
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
					<option>부활절달걀</option>
				</select>
			</div>
		</footer>
		<!-- // footer-wrap -->

	</div>

	<script>
		/* function initSheet() {
			var OPT = {

				//전역기능 설정
				"Cfg" : {
					"SearchMode" : 1,
					"PageLength" : 10,
					"Alternate" : 2,
					"InfoRowConfig" : "",
					"SortCurrentPage" : 1
				},
				//행설정
				"Cols" : [ {
					"Header" : "번호",
					"Type" : "Int",
					"Name" : "bno",
					"Width" : 145,
					"Align" : "Center",
					"CanEdit" : 1
				}, {
					"Header" : "제목",
					"Type" : "Text",
					"Name" : "title",
					"Width" : 300,
					"Align" : "Center",
					"CanEdit" : 1
				}, {
					"Header" : "작성자",
					"Type" : "Text",
					"Name" : "writer",
					"Width" : 120,
					"Align" : "Center",
					"CanEdit" : 1
				}, {
					"Header" : "날짜",
					"Type" : "Text",
					"Name" : "regDate",
					"Width" : 200,
					"Align" : "Center",
					"CanEdit" : 1
				}, {
					"Header" : "조회수",
					"Type" : "Int",
					"Name" : "bhit",
					"Width" : 120,
					"Align" : "Center",
					"CanEdit" : 1
				}, ],
				//이벤트 설정
				"Events" : {
					onAfterClick : function(evtParams) {
						var chkRows = sheet.getFocusedRow();
							if (evtParams.col == "title"){
								location.href = 'content_view?bno=' + chkRows["bno"];
						}
					}
				},
				
				"sampleBtn" : function() {
					$.ajax({
						url : "a_gb",
						type : "POST",
						success : function(data) {
							alert("ajax 통신");
							sheet.loadSearchDate(JSON.stringify(data));
						}
					});
				}

			};

			var DATA = ${json};

			IBSheet.create({
				id : "sheet",
				el : "sheetDiv",
				options : OPT,
				data : DATA
			});
		} */
		
		
		
		var ib = ib||{};
		ib = {
		//시트 초기화 구문
		'init':{
		  "Def": {
		    
		  },
		  //공통기능 설정 부분
		  "Cfg" : {
					"SearchMode" : 1,
					"PageLength" : 10,
					"Alternate" : 2,
					"SortCurrentPage" : 1,
					"IgnoreFocused" : 1,
				},
		  //중앙(메인) 컬럼 설정
				"Cols" : [ {
					"Header" : "번호",
					"Type" : "Text",
					"Name" : "bno",
					"Width" : 145,
					"Align" : "Center",
					"CanEdit" : 1,
					"CustomFormat" : function(v){
				        //값의 글자수에 따라 다른 포멧으로 보여지게 끔 표시
				        if(v.length > 3){
				            //###-#
				            return v.substr(0,1)+","+v.substr(1,4);
				        }else{
				            return v;
				        }
				    }
				}, {Header : "제목", Type: "Text", Name : "title", Width: "300"},
				{Header : "작성일", Type: "Date", Name : "regDate", Width: "200", Format: "yyyy/MM/dd"},
				{Header : "작성자", Type: "Text", Name : "writer"},
				],
				"Solid": [
				    {
				      "Def": "MySolid",
				      "id": "solidRow",
				      "Space": "1",
				      "Cells": "Title,Mycell,Mybtn,Info",
				      "Title": {
				        "Type": "Text",
				        "Value": "선택할 글",
				        "Width": 75,
				        "CanFocus": 0
				      },
				      "Mycell": {
					        "Type": "Text",
					        "Width": 200,
					        "EmptyValue": "글번호를 입력하세요"
					      },
				      "Mybtn": {
				        "Type": "Button",
				        "Button": "Button",
				        "Value": "찾아가기",
				        "OnClick": function (e) {
				        		var noKey = e.row.Mycell;
				        		alert(noKey);      
				        }
				      },
				      "Info": {
					        "Type": "Text",
					        "Value": "미리보기:클릭 / 글보기:더블클릭",
					        "Width": 180,
					        "CanFocus": 0
					      }
				    }
				  ],
		},
		//시트 이벤트
		//제목에 글내용 보기 링크
		'event':{
			onAfterClick : function(evtParams) {
				var chkRows = evtParams.row;
					if (evtParams.col == "title" && chkRows["bno"] != "번호"){
						location.href = 'content_view?bno=' + chkRows["bno"];
				} 
			}
			
		},
		//시트객체 생성
		'create':function () {
		    var options = this.init;

		    options.Events = this.event;
		    IBSheet.create({
		      id: 'sheet', // 생성할 시트의 id
		      el: 'sheetDiv', // 시트를 생성할 Dom 객체 및 id
		      options: options, // 생성될 시트의 속성
		      data: this.data // 생성될 시트의 정적데이터
		    });
		  },
		//화면 기능
		//ajax 통신
		'sampleBtn':function () {
			$.ajax({
				url : "a_gb",
				type : "POST",
				success : function(data) {
					sheet.loadSearchData(data);
				}
			});
			sheet.hideCol("content");
		  },
		'sampleBtn1':function () {
			$.ajax({
				url : "a_gb",
				type : "POST",
				success : function(data) {
					sheet.loadSearchData(data);
				}
			});
		  },
	    'search':function () {
	    	var params=$('#search_form').serialize();
			$.ajax({
				url : "search_gb",
				data : params,
				type : "GET",
				success : function(data) {
					sheet.loadSearchData(data);
				}
			});
		  },  
		//조회 데이터
		'data':{ }
			}
		ib.create();
	</script>
</body>
</html>