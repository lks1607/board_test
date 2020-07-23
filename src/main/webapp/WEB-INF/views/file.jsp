<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="resources/css/slick.css" type="text/css">
  <link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css">
  <link rel="stylesheet" href="resources/css/jquery-ui.theme.css" type="text/css">
  <link rel="stylesheet" href="resources/css/ui.fancytree.css" type="text/css">
  <!-- ibsheet -->
  <link rel="stylesheet" href="resources/css2/main.css">
  <link rel="stylesheet" href="resources/css/ui.reset.css" type="text/css">
  <link rel="stylesheet" href="resources/css/ui.common.css" type="text/css">
  <!-- javascript -->
  <script src="resources/lib/jquery-1.12.3.js"></script>
  <script src="resources/lib/jquery-ui.js"></script>
  <script src="resources/lib/jquery.fancytree.js"></script>
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
<body onload="initSheet()">
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
							alt="core_Brain_HR" style="margin-top:30px;"></a>
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
		</header><!-- // header-wrap -->

        <aside class="lnb-wrap">
            <div class="lnb-tit">
                <h2>인사조직</h2>
            </div>
            <nav class="lnb-area">
                <ul class="lnb-menu">
                    <li class="has-sub active open">
                        <a href="#none">인사운영</a>
                        <ul class="lnb-menu2">
                            <li class="has-sub active open">
                                <a href="#none">- 조직관리</a>
                                <ul class="lnb-menu3">
                                    <li><a href="#none">조직관리</a></li>
                                    <li><a href="#none">기구조직도</a></li>
                                    <li><a href="#none">화상조직도</a></li>
                                    <li><a href="#none">조직별직원</a></li>
                                </ul>
                            </li>
                            <li class="has-sub">
                                <a href="#none">- 인사관리</a>
                                <ul class="lnb-menu3">
                                    <li><a href="#none">계약관리</a></li>
                                    <li><a href="#none">인사정보</a></li>
                                    <li><a href="#none">인사기록카드</a></li>
                                    <li><a href="#none">기념일관리</a></li>
                                    <li><a href="#none">비상연락망관리</a></li>
                                    <li><a href="#none">자기신고서</a></li>
                                    <li><a href="#none">사내공모관리</a></li>
                                </ul>
                            </li>
                            <li><a href="#none">- 상벌관리</a></li>
                            <li><a href="#none">- 신원보증</a></li>
                        </ul>
                    </li>
                    <li class="has-sub">
                        <a href="#none">인사통계</a>
                        <ul class="lnb-menu2">
                            <li class="has-sub">
                                <a href="#none">- 년도별통계</a>
                                <ul class="lnb-menu3">
                                    <li><a href="#none">년별직원수</a></li>
                                    <li><a href="#none">조직별직원수</a></li>
                                    <li><a href="#none">직원구분비율</a></li>
                                    <li><a href="#none">인사정보</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#none">발령관리</a></li>
                    <li><a href="#none">직무관리</a></li>
                    <li><a href="#none">근태관리</a></li>
                </ul>
            </nav>
        </aside><!-- // lnb-wrap -->

        <button class="lnb-btn">버튼</button>
        
        <div class="container">

            <section class="content">

                <div class="tit-area">
                    <h3>전자결재문서설정</h3> 
                    <ul class="location-area">
                        <li><span class="home">home</span></li>
                        <li><span>시스템관리</span></li>
                        <li><span>권한관리</span></li>
                        <li><strong>그룹별사용자관리</strong></li>
                    </ul>
                </div>

                <div class="sub-tit pt0">
                    <h4>전자결재설정</h4>
                </div>
                <div class="grid">
                    <div id="sheetDiv" style="width:100%; height:100%;"></div>
                </div>

                <ul id="tabList02" class="tab-style02 mt15">
                    <li rel="tab01" class="on"><a href="#none">결재담당자</a></li>
                    <li rel="tab02"><a href="#none">도움말</a></li>
                    <li rel="tab03"><a href="#none">팝업알림창</a></li>
                </ul>

                <div id="tabCont02" class="tab-cont02">
                    <div id="tab01" class="active">

                        <div class="sub-tit">
                            <h4>결재담당자</h4>
                        </div>
                        
                <div style='height:calc(100% - 20px)'>
                	<div id='sheetDiv' style='width:100%;height:100%;margin-left:auto'>
                	</div>
                </div>


            </section>

        </div><!-- // container -->

        <footer class="footer-wrap">
            <div class="inner">
                <p>
                    Copyright(c) 주식회사 코어브레인. All Rights Reserved. <span>UI/UX by muplus.CO,.LTD</span> Help desk TEL <strong>031)932-9282</strong>
                </p>
                <select>
                    <option>System</option>
                </select>
            </div>
        </footer><!-- // footer-wrap -->

    </div>

     <script>
     var ib = ib||{};
     ib = {
     //시트 초기화 구문
     'init':{
       //공통기능 설정 부분
       "Cfg": {
         "SearchMode": 2,
         "HeaderMerge": 6,
         "DataMerge": 3,
         "FitWidth": 1,
         "Export": {
           "FilePath": "https://api.ibleaders.com/ibsheet/v8/samples/customer/files/"
         }
       },
       //중앙(메인) 컬럼 설정
       "Cols": [
         {"Header": "시도명","Type": "Text","Name": "sSido","Width": 145,"Align": "Center","CanEdit": 1,"ColMerge": 1},
         {"Header": "시군구명","Type": "Text","Name": "sSiGunGu","Width": 145,"Align": "Center","CanEdit": 1},
         {"Header": "공공도서관","Type": "Int","Name": "publicLb","Width": 120,"Align": "Center","CanEdit": 1},
         {"Header": "작은도서관","Type": "Int","Name": "smailLb","Width": 120,"Align": "Center","CanEdit": 1},
         {"Header": "기타","Type": "Int","Name": "excLb","Width": 120,"Align": "Center","CanEdit": 1},
         {"Header": "도서관 목록","Type": "File","Name": "lblist","Width": 300,"Align": "Center"}
       ]
     },
     //시트 이벤트
     'event':{
         onAfterSave:function (evtParams) {
           if (evtParams.result < 0) { alert('보안상의 문제로 파일을 저장하실 수 없습니다.'); }
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
     'sampleBtn':function () {
         var url = '/samples/customer/save_error.jsp';

         if (location.href.indexOf('localhost') > -1) {
           url = '../jsp' + url;
         } else {
           url = 'https://api.ibleaders.com/ibsheet/v8' + url;
         }

         if (arguments[0].innerText.match('doSave 저장')) {
           sheet.doSave({
             url: url,
             queryMode: 0,
           });
         } else if (arguments[0].innerText.match('ajax 저장')) {
           var saveData = sheet.getSaveJson({
             saveMode: 2
           });

           $.ajax({
           	  url: url,
           	  data: saveData,
           	  success: function (data) {
           	      var result = data.IO.Result;

           	      // 결과를 시트에 반영한다.
           	      sheet.applySaveResult(result);
           	  }
           });
         }
       },
     //조회 데이터
     'data':[{"sSido":"서울특별시","sSiGunGu":"강남구","publicLb":13,"smailLb":35,"excLb":8,"lblist":"seoul_gangnamgu_library.xlsx","lblistPath":"https://api.ibleaders.com/ibsheet/v8/samples/customer/files/gangnamgu/"},{"sSido":"서울특별시","sSiGunGu":"강동구","publicLb":8,"smailLb":40,"excLb":1,"lblist":"seoul_gangdonggu_library.xlsx"},{"sSido":"서울특별시","sSiGunGu":"강북구","publicLb":7,"smailLb":43,"excLb":1,"lblist":"seoul_gangbukgu_library.xlsx"},{"sSido":"서울특별시","sSiGunGu":"강서구","publicLb":7,"smailLb":43,"excLb":1},{"sSido":"서울특별시","sSiGunGu":"관악구","publicLb":5,"smailLb":44,"excLb":2},{"sSido":"서울특별시","sSiGunGu":"광진구","publicLb":5,"smailLb":32,"excLb":2},{"sSido":"서울특별시","sSiGunGu":"구로구","publicLb":12,"smailLb":70,"excLb":1},{"sSido":"서울특별시","sSiGunGu":"금천구","publicLb":4,"smailLb":2,"excLb":1},{"sSido":"서울특별시","sSiGunGu":"노원구","publicLb":11,"smailLb":32,"excLb":4},{"sSido":"서울특별시","sSiGunGu":"도봉구","publicLb":6,"smailLb":39,"excLb":0},{"sSido":"서울특별시","sSiGunGu":"동대문구","publicLb":4,"smailLb":35,"excLb":6},{"sSido":"서울특별시","sSiGunGu":"동작구","publicLb":6,"smailLb":40,"excLb":4},{"sSido":"서울특별시","sSiGunGu":"마포구","publicLb":6,"smailLb":40,"excLb":4},{"sSido":"서울특별시","sSiGunGu":"서대문구","publicLb":4,"smailLb":28,"excLb":2},{"sSido":"서울특별시","sSiGunGu":"서초구","publicLb":7,"smailLb":37,"excLb":24},{"sSido":"서울특별시","sSiGunGu":"성동구","publicLb":6,"smailLb":25,"excLb":0},{"sSido":"서울특별시","sSiGunGu":"성북구","publicLb":11,"smailLb":52,"excLb":4},{"sSido":"서울특별시","sSiGunGu":"송파구","publicLb":12,"smailLb":61,"excLb":6},{"sSido":"서울특별시","sSiGunGu":"양천구","publicLb":9,"smailLb":41,"excLb":1},{"sSido":"서울특별시","sSiGunGu":"영등포구","publicLb":5,"smailLb":37,"excLb":13},{"sSido":"서울특별시","sSiGunGu":"용산구","publicLb":4,"smailLb":38,"excLb":9},{"sSido":"서울특별시","sSiGunGu":"은평구","publicLb":8,"smailLb":84,"excLb":2},{"sSido":"서울특별시","sSiGunGu":"종로구","publicLb":6,"smailLb":21,"excLb":22},{"sSido":"서울특별시","sSiGunGu":"중구","publicLb":4,"smailLb":15,"excLb":24},{"sSido":"서울특별시","sSiGunGu":"중랑구","publicLb":4,"smailLb":46,"excLb":1}]
     }
     ib.create();
</script>
</body>
</html>