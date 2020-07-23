<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- ibsheet css -->
<link rel="stylesheet" href="https://demo.ibleaders.com/ibsheet/v8/samples/customer-sample/assets/ibsheet/css/default/main.css"/>
<link rel="stylesheet" href="https://demo.ibleaders.com/ibsheet/v8/samples/customer-sample/assets/ibsheet/css/compatible/light/main.css"/>

<!--  ibsheet 필수 js -->
<script src="https://demo.ibleaders.com/ibsheet/v8/samples/customer-sample/assets/ibsheet/ibleaders.js"></script>
<script src="https://demo.ibleaders.com/ibsheet/v8/samples/customer-sample/assets/ibsheet/ibsheet.js"></script>
<script src="https://demo.ibleaders.com/ibsheet/v8/samples/customer-sample/assets/ibsheet/locale/ko.js"></script>

<!--  ibsheet 선택/추가 js -->
<script src="https://demo.ibleaders.com/ibsheet/v8/samples/customer-sample/assets/ibsheet/plugins/ibsheet-common.js"></script>
<script src="https://demo.ibleaders.com/ibsheet/v8/samples/customer-sample/assets/ibsheet/plugins/ibsheet-dialog.js"></script>
<script src="https://demo.ibleaders.com/ibsheet/v8/samples/customer-sample/assets/ibsheet/plugins/ibsheet-excel.js"></script>

<link rel="stylesheet" href="resources/css/mstyle.css" />
<!-- css -->
<link rel="stylesheet" href="resources/css/slick.css" type="text/css">
<link rel="stylesheet" href="resources/css/jquery-ui.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/jquery-ui.theme.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/ui.fancytree.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/ui.reset.css" type="text/css">
<link rel="stylesheet" href="resources/css/ui.common.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/nstyle.css" />
<!-- javascript -->
<script src="resources/lib/jquery-1.12.3.js"></script>
<script src="resources/lib/jquery-ui.js"></script>
<script src="resources/lib/jquery.fancytree.js"></script>
<script src="resources/lib/slick.min.js"></script>
<script src="resources/js/ui.common.js"></script>
</head>
<body>
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
							alt="core_Brain_HR"></a>
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
	<aside class="lnb-wrap" style="margin-top:1px;">
			<div class="lnb-tit">
				<a href="grid"><h2>banner</h2></a>
			</div>
			<nav class="lnb-area">
				<ul class="lnb-menu">
					<li><a href="write_view">side1</a></li>
					<li><a href="#none">side2</a></li>
					<li><a href="#none">side3</a></li>
				</ul>
			</nav>
		</aside>
		
		<button class="lnb-btn">버튼</button>
		
<div style='height:calc(100% - 20px)'><div id='sheetDiv' style='width:1000px;height:100%;margin-left:auto'></div></div>
<script>
var ib = ib||{};
ib = {
//시트 초기화 구문
'init':{
  //공통기능 설정 부분
  "Cfg": {
    "SearchMode": 2,
    "MaxPages": 3,
    "SuppressMessage": 3,
    "HeaderMerge": 3
  },
  //틀고정 좌측 컬럼 설정
  "LeftCols": [
    {"Type": "Int","Width": 50,"Align": "Center","Name": "SEQ"}
  ],
  //중앙(메인) 컬럼 설정
  "Cols": [
    {"Header": ["회사명","회사명"],"Type": "Text","Name": "sCorp","Width": "100","Align": "Center","CanEdit": 1},
    {"Header": ["사원수","사원수"],"Type": "Int","Name": "sPerson","Width": "80","Align": "Right","CanEdit": 1},
    {"Header": ["금년신입","금년신입"],"Type": "Int","Name": "sNewPerson","Width": "70","Align": "Right","CanEdit": 1},
    {"Header": ["평균연봉","평균연봉"],"Type": "Float","Name": "sPay","Width": "100","Align": "Right","CanEdit": 1},
    {"Header": ["평균보너스","평균보너스"],"Type": "Float","Name": "sBonus","Width": "100","Align": "Right","CanEdit": 1},
    {"Header": ["전년매출","전년매출"],"Type": "Int","Name": "sPreYear","Width": "80","Align": "Right","CanEdit": 1,"Format": "#,### 만원"},
    {"Header": ["금년매출","금년매출"],"Type": "Float","Name": "sYear","Width": "80","Align": "Right","CanEdit": 1},
    {"Header": ["전년대비\n 증감율","전년대비\n 증감율"],"Type": "Float","Name": "sGrow","Width": "100","Align": "Right","CanEdit": 1,"Format": "#,##0.##\\%"},
    {"Header": ["내년기대\n 증감율","내년기대\n 증감율"],"Type": "Float","Name": "sPreGrow","Width": "100","Align": "Right","CanEdit": 1,"Format": "#,##0.##%"},
    {"Header": ["년월일","Ymd"],"Name": "sDate_Ymd","Extend": {"Type": "Date","Align": "Center","Width": 110,"Format": "yyyy/MM/dd","DataFormat": "yyyyMMdd","EditFormat": "yyyyMMdd","Size": 8,"EmptyValue": "<span style='color:#AAA'>년,월,일 순으로 숫자만 입력해 주세요.</span>"},"Width": 110},
    {"Header": ["년월일","Ym"],"Name": "sDate_Ym","Extend": {"Type": "Date","Align": "Center","Width": 80,"Format": "yyyy/MM","DataFormat": "yyyyMM","EditFormat": "yyyyMM","Size": 6,"EmptyValue": "<span style='color:#AAA'>년,월 순으로 숫자만 입력해 주세요.</span>"},"Width": 90},
    {"Header": ["년월일","Md"],"Name": "sDate_Md","Extend": {"Type": "Date","Align": "Center","Width": 60,"Format": "MM/dd","EditFormat": "MMdd","DataFormat": "MMdd","Size": 4,"EmptyValue": "<span style='color:#AAA'>월,일 순으로 숫자만 입력해 주세요.</span>"},"Width": 90},
    {"Header": ["시분초","Hms"],"Name": "sDate_Hms","Extend": {"Type": "Date","Align": "Center","Width": 70,"Format": "HH:mm:ss","EditFormat": "HHmmss","DataFormat": "HHmmss","Size": 8,"EmptyValue": "<span style='color:#AAA'>시,분,초 순으로 8개 숫자만 입력해 주세요.</span>"},"Width": 80},
    {"Header": ["시분초","Hm"],"Name": "sDate_Hm","Extend": {"Type": "Date","Align": "Center","Width": 70,"Format": "HH:mm","EditFormat": "HHmm","DataFormat": "HHmm","Size": 6,"EmptyValue": "<span style='color:#AAA'>시,분 순으로 4개 숫자만 입력해 주세요.</span>"},"Width": 70},
    {"Header": ["년월일시분초","YmdHms"],"Name": "sDate_YmdHms","Extend": {"Type": "Date","Align": "Center","Format": "yyyy/MM/dd HH:mm:ss","Width": 150,"EditFormat": "yyyyMMddHHmmss","DataFormat": "yyyyMMddHHmmss","Size": 14,"EmptyValue": "<span style='color:#AAA'>숫자만 입력(ex:20190514153020)</span>"},"Width": 160},
    {"Header": ["년월일시분초","YmdHm"],"Name": "sDate_YmdHm","Extend": {"Type": "Date","Align": "Center","Format": "yyyy/MM/dd HH:mm","Width": 150,"EditFormat": "yyyyMMddHHmm","DataFormat": "yyyyMMddHHmm","Size": 12,"EmptyValue": "<span style='color:#AAA'>숫자만 입력(ex:201905141530)</span>"},"Width": 160},
    {"Header": ["년월일(한국)","yyyy.MM.dd"],"Name": "sDate_yyyyMMdd","Type": "Date","Format": "yyyy.MM.dd","EditFormat": "yyyyMMdd","Size": 8},
    {"Header": ["년월일(한국)","yyyy-MM"],"Name": "sDate_yyyyMM","Type": "Date","Width": 110,"Format": "yyyy-MM","EditFormat": "yyyyMM","DataFormat": "yyyyMM","Size": 6},
    {"Header": ["월일년(미국)","MM-dd-yyyy"],"Name": "sDate_MMddyyyy","Extend": {"Type": "Date","Align": "Center","Format": "MM-dd-yyyy","Width": 110,"EditFormat": "MMddyyyy","DataFormat": "yyyyMMdd","Size": 8,"EmptyValue": "<span style='color:#AAA'>월,일,년 순으로 숫자만 입력해 주세요.</span>"},"Width": 120},
    {"Header": ["일월년(유럽)","dd-MM-yyyy"],"Name": "sDate_ddMMyyyy","Extend": {"Type": "Date","Align": "Center","Format": "dd-MM-yyyy","Width": 110,"EditFormat": "ddMMyyyy","DataFormat": "yyyyMMdd","Size": 8,"EmptyValue": "<span style='color:#AAA'>일,월,년 순으로 숫자만 입력해 주세요.</span>"},"Width": 120}
  ]
},
//시트 이벤트
'event':{
    onAfterSave:function (evtResult) {
      // console.log(evtResult);
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

  },
//조회 데이터
'data':[{"sCorp":"테스트","sPerson":"11196","sPreYear":"9165","sYear":"7147","sGrow":"0.77985","sPreGrow":"0.9","sPay":"6290.9301","sBonus":"545.2073","sNewPerson":"51","sDate_Ymd":"20130423","sDate_Ym":"201304","sDate_Md":"0423","sDate_Hms":"100320","sDate_Hm":"0930","sDate_YmdHms":"20130423091020","sDate_YmdHm":"201304231200","sDate_yyyyMMdd":1563980400000,"sDate_yyyyMM":"201304","sDate_MMddyyyy":"20130423","sDate_ddMMyyyy":"20130423"},{"sCorp":"SK이노베이션","sPerson":"12950","sPreYear":"9265","sYear":"14418","sGrow":"1.55619","sPreGrow":"1.7","sPay":"9345.0219","sBonus":"670.6712","sNewPerson":"94","sDate_Ymd":"20160701","sDate_Ym":"201607","sDate_Md":"0701","sDate_Hms":"091134","sDate_Hm":"0911","sDate_YmdHms":"20130701091134","sDate_YmdHm":"201507010911","sDate_yyyyMMdd":"20160701","sDate_yyyyMM":"201607","sDate_MMddyyyy":"20160701","sDate_ddMMyyyy":"20120701"},{"sCorp":"한국전력공사","sPerson":"10945","sPreYear":"5988","sYear":"12819","sGrow":"2.14078","sPreGrow":"1.7","sPay":"8041.7922","sBonus":"732.6054","sNewPerson":"58","sDate_Ymd":"20160715","sDate_Ym":"201607","sDate_Md":"0715","sDate_Hms":"140715","sDate_Hm":"1412","sDate_YmdHms":"20160715141215","sDate_YmdHm":"201607151412","sDate_yyyyMMdd":"20160715","sDate_yyyyMM":"201607","sDate_MMddyyyy":"20160715","sDate_ddMMyyyy":"20160715"},{"sCorp":"현대자동차","sPerson":"3339","sPreYear":"1557","sYear":"1873","sGrow":"1.20282","sPreGrow":"0.9","sPay":"8574.3282","sBonus":"542.3125","sNewPerson":"88","sDate_Ymd":"20160701","sDate_Ym":"201607","sDate_Md":"0701","sDate_Hms":"091134","sDate_Hm":"0911","sDate_YmdHms":"20160701091134","sDate_YmdHm":"201807010911","sDate_yyyyMMdd":"20160701","sDate_yyyyMM":"201607","sDate_MMddyyyy":"20160701","sDate_ddMMyyyy":"20160701"},{"sCorp":"GS칼텍스","sPerson":"28595","sPreYear":"3422","sYear":"4448","sGrow":"1.29969","sPreGrow":"1.8","sPay":"9884.4996","sBonus":"631.7733","sNewPerson":"73","sDate_Ymd":"20130423","sDate_Ym":"201304","sDate_Md":"0423","sDate_Hms":"091220","sDate_Hm":"1230","sDate_YmdHms":"20160723101020","sDate_YmdHm":"201204231200","sDate_yyyyMMdd":"20100423","sDate_yyyyMM":"201004","sDate_MMddyyyy":"20180423","sDate_ddMMyyyy":"20110423"},{"sCorp":"포스코","sPerson":"5887","sPreYear":"8585","sYear":"12954","sGrow":"1.50887","sPreGrow":"1.4","sPay":"9765.0396","sBonus":"768.0995","sNewPerson":"76","sDate_Ymd":"20130423","sDate_Ym":"201304","sDate_Md":"0423","sDate_Hms":"091020","sDate_Hm":"1200","sDate_YmdHms":"20130423091020","sDate_YmdHm":"201904231200","sDate_yyyyMMdd":"20130423","sDate_yyyyMM":"201304","sDate_MMddyyyy":"20130423","sDate_ddMMyyyy":"20130423"},{"sCorp":"LG전자","sPerson":"21613","sPreYear":"2693","sYear":"3586","sGrow":"1.33165","sPreGrow":"1.2","sPay":"7818.2008","sBonus":"823.3668","sNewPerson":"86","sDate_Ymd":"20150526","sDate_Ym":"201505","sDate_Md":"0526","sDate_Hms":"114110","sDate_Hm":"1141","sDate_YmdHms":"20150526114110","sDate_YmdHm":"201505261141","sDate_yyyyMMdd":"20150526","sDate_yyyyMM":"201505","sDate_MMddyyyy":"20150526","sDate_ddMMyyyy":"20150526"},{"sCorp":"우리은행","sPerson":"18327","sPreYear":"3745","sYear":"2686","sGrow":"0.71727","sPreGrow":"1.0","sPay":"8879.0066","sBonus":"856.4965","sNewPerson":"75","sDate_Ymd":"20150526","sDate_Ym":"201505","sDate_Md":"0526","sDate_Hms":"114110","sDate_Hm":"1141","sDate_YmdHms":"20150526114110","sDate_YmdHm":"201505261141","sDate_yyyyMMdd":"20150526","sDate_yyyyMM":"201505","sDate_MMddyyyy":"20150526","sDate_ddMMyyyy":"20150526"},{"sCorp":"LG디스플레이","sPerson":"10817","sPreYear":"4411","sYear":"5136","sGrow":"1.16425","sPreGrow":"1.2","sPay":"6121.3960","sBonus":"658.7786","sNewPerson":"50","sDate_Ymd":"20110126","sDate_Ym":"201101","sDate_Md":"0126","sDate_Hms":"122310","sDate_Hm":"1223","sDate_YmdHms":"20110126122310","sDate_YmdHm":"201101261223","sDate_yyyyMMdd":"20110126","sDate_yyyyMM":"201101","sDate_MMddyyyy":"20110126","sDate_ddMMyyyy":"20110126"},{"sCorp":"SK네트웍스","sPerson":"14742","sPreYear":"5526","sYear":"5148","sGrow":"0.93163","sPreGrow":"1.2","sPay":"9746.6372","sBonus":"855.0266","sNewPerson":"99","sDate_Ymd":"20130423","sDate_Ym":"201304","sDate_Md":"0423","sDate_Hms":"091020","sDate_Hm":"1200","sDate_YmdHms":"20130423091020","sDate_YmdHm":"201304231200","sDate_yyyyMMdd":"20130423","sDate_yyyyMM":"201304","sDate_MMddyyyy":"20130423","sDate_ddMMyyyy":"20130423"},{"sCorp":"기아자동차","sPerson":"9132","sPreYear":"4315","sYear":"9823","sGrow":"2.27650","sPreGrow":"1.9","sPay":"6555.3124","sBonus":"915.4751","sNewPerson":"92","sDate_Ymd":"20130423","sDate_Ym":"201304","sDate_Md":"0423","sDate_Hms":"091020","sDate_Hm":"1200","sDate_YmdHms":"20130423091020","sDate_YmdHm":"201304231200","sDate_yyyyMMdd":"20130423","sDate_yyyyMM":"201304","sDate_MMddyyyy":"20130423","sDate_ddMMyyyy":"20130423"},{"sCorp":"신한은행","sPerson":"19486","sPreYear":"2594","sYear":"5623","sGrow":"2.16783","sPreGrow":"2.2","sPay":"5889.0063","sBonus":"829.8186","sNewPerson":"52","sDate_Ymd":"20130423","sDate_Ym":"201304","sDate_Md":"0423","sDate_Hms":"091020","sDate_Hm":"1200","sDate_YmdHms":"20130423091020","sDate_YmdHm":"201304231200","sDate_yyyyMMdd":"20130423","sDate_yyyyMM":"201304","sDate_MMddyyyy":"20130423","sDate_ddMMyyyy":"20130423"},{"sCorp":"한국가스공사","sPerson":"11497","sPreYear":"6668","sYear":"10937","sGrow":"1.64018","sPreGrow":"2.1","sPay":"5003.7485","sBonus":"985.5019","sNewPerson":"63","sDate_Ymd":"20160701","sDate_Ym":"201607","sDate_Md":"0701","sDate_Hms":"091134","sDate_Hm":"0911","sDate_YmdHms":"20160701091134","sDate_YmdHm":"201607010911","sDate_yyyyMMdd":"20160701","sDate_yyyyMM":"201607","sDate_MMddyyyy":"20160701","sDate_ddMMyyyy":"20160701"},{"sCorp":"현대중공업","sPerson":"25732","sPreYear":"9668","sYear":"14268","sGrow":"1.47578","sPreGrow":"1.5","sPay":"5639.2982","sBonus":"959.6703","sNewPerson":"86","sDate_Ymd":"20160715","sDate_Ym":"201607","sDate_Md":"0715","sDate_Hms":"141215","sDate_Hm":"1412","sDate_YmdHms":"20160715141215","sDate_YmdHm":"201607151412","sDate_yyyyMMdd":"20160715","sDate_yyyyMM":"201607","sDate_MMddyyyy":"20160715","sDate_ddMMyyyy":"20160715"},{"sCorp":"국민은행","sPerson":"15911","sPreYear":"9905","sYear":"13740","sGrow":"1.38715","sPreGrow":"1.4","sPay":"5649.2070","sBonus":"954.8413","sNewPerson":"71","sDate_Ymd":"20130423","sDate_Ym":"201304","sDate_Md":"0423","sDate_Hms":"091020","sDate_Hm":"1200","sDate_YmdHms":"20130423091020","sDate_YmdHm":"201304231200","sDate_yyyyMMdd":"20130423","sDate_yyyyMM":"201304","sDate_MMddyyyy":"20130423","sDate_ddMMyyyy":"20130423"},{"sCorp":"S-OIL","sPerson":"21132","sPreYear":"6164","sYear":"5231","sGrow":"-0.84855","sPreGrow":"0.5","sPay":"7645.3793","sBonus":"973.5315","sNewPerson":"90","sDate_Ymd":"20110126","sDate_Ym":"201101","sDate_Md":"0126","sDate_Hms":"122310","sDate_Hm":"1223","sDate_YmdHms":"20110126122310","sDate_YmdHm":"201101261223","sDate_yyyyMMdd":"20110126","sDate_yyyyMM":"201101","sDate_MMddyyyy":"20110126","sDate_ddMMyyyy":"20110126"},{"sCorp":"KT","sPerson":"4256","sPreYear":"5855","sYear":"11660","sGrow":"1.99139","sPreGrow":"2.2","sPay":"5284.2353","sBonus":"586.6577","sNewPerson":"66","sDate_Ymd":"20150526","sDate_Ym":"201505","sDate_Md":"0526","sDate_Hms":"114110","sDate_Hm":"1141","sDate_YmdHms":"20150526114110","sDate_YmdHm":"201505261141","sDate_yyyyMMdd":"20150526","sDate_yyyyMM":"201505","sDate_MMddyyyy":"20150526","sDate_ddMMyyyy":"20150526"},{"sCorp":"한국스탠다드차타드제일은행","sPerson":"29735","sPreYear":"7191","sYear":"7000","sGrow":"0.97343","sPreGrow":"1.1","sPay":"6931.0105","sBonus":"919.3581","sNewPerson":"82","sDate_Ymd":"20160701","sDate_Ym":"201607","sDate_Md":"0701","sDate_Hms":"091134","sDate_Hm":"0911","sDate_YmdHms":"20160701091134","sDate_YmdHm":"201607010911","sDate_yyyyMMdd":"20160701","sDate_yyyyMM":"201607","sDate_MMddyyyy":"20160701","sDate_ddMMyyyy":"20160701"},{"sCorp":"중소기업은행","sPerson":"22319","sPreYear":"4301","sYear":"7096","sGrow":"1.64989","sPreGrow":"1.2","sPay":"5009.8826","sBonus":"634.0099","sNewPerson":"82","sDate_Ymd":"20160715","sDate_Ym":"201607","sDate_Md":"0715","sDate_Hms":"141215","sDate_Hm":"1412","sDate_YmdHms":"20160715141215","sDate_YmdHm":"201607151412","sDate_yyyyMMdd":"20160715","sDate_yyyyMM":"201607","sDate_MMddyyyy":"20160715","sDate_ddMMyyyy":"20160715"},{"sCorp":"하나은행","sPerson":"2445","sPreYear":"8582","sYear":"15311","sGrow":"1.78402","sPreGrow":"2.0","sPay":"9672.9174","sBonus":"733.9970","sNewPerson":"59","sDate_Ymd":"20110126","sDate_Ym":"201101","sDate_Md":"0126","sDate_Hms":"122310","sDate_Hm":"1223","sDate_YmdHms":"20110126122310","sDate_YmdHm":"201101261223","sDate_yyyyMMdd":"20110126","sDate_yyyyMM":"201101","sDate_MMddyyyy":"20110126","sDate_ddMMyyyy":"20110126"},{"sCorp":"LG화학","sPerson":"20228","sPreYear":"4015","sYear":"5021","sGrow":"1.25052","sPreGrow":"1.0","sPay":"8581.6498","sBonus":"979.7731","sNewPerson":"71","sDate_Ymd":"20130423","sDate_Ym":"201304","sDate_Md":"0423","sDate_Hms":"091020","sDate_Hm":"1200","sDate_YmdHms":"20130423091020","sDate_YmdHm":"201304231200","sDate_yyyyMMdd":"20130423","sDate_yyyyMM":"201304","sDate_MMddyyyy":"20130423","sDate_ddMMyyyy":"20130423"},{"sCorp":"대우인터내셔널","sPerson":"8867","sPreYear":"3841","sYear":"8058","sGrow":"2.09792","sPreGrow":"2.5","sPay":"6931.1671","sBonus":"527.4338","sNewPerson":"77","sDate_Ymd":"20110126","sDate_Ym":"201101","sDate_Md":"0126","sDate_Hms":"122310","sDate_Hm":"1223","sDate_YmdHms":"20110126122310","sDate_YmdHm":"201101261223","sDate_yyyyMMdd":"20110126","sDate_yyyyMM":"201101","sDate_MMddyyyy":"20110126","sDate_ddMMyyyy":"20110126"},{"sCorp":"현대모비스","sPerson":"1945","sPreYear":"4159","sYear":"7717","sGrow":"1.85560","sPreGrow":"2.0","sPay":"5499.2687","sBonus":"831.6468","sNewPerson":"94","sDate_Ymd":"20160715","sDate_Ym":"201607","sDate_Md":"0715","sDate_Hms":"141215","sDate_Hm":"1412","sDate_YmdHms":"20160715141215","sDate_YmdHm":"201607151412","sDate_yyyyMMdd":"20160715","sDate_yyyyMM":"201607","sDate_MMddyyyy":"20160715","sDate_ddMMyyyy":"20160715"},{"sCorp":"롯데쇼핑","sPerson":"4038","sPreYear":"8868","sYear":"11176","sGrow":"1.26021","sPreGrow":"0.8","sPay":"9446.4998","sBonus":"507.1948","sNewPerson":"76","sDate_Ymd":"20160701","sDate_Ym":"201607","sDate_Md":"0701","sDate_Hms":"091134","sDate_Hm":"0911","sDate_YmdHms":"20160701091134","sDate_YmdHm":"201607010911","sDate_yyyyMMdd":"20160701","sDate_yyyyMM":"201607","sDate_MMddyyyy":"20160701","sDate_ddMMyyyy":"20160701"},{"sCorp":"현대오일뱅크","sPerson":"2080","sPreYear":"6491","sYear":"11015","sGrow":"1.69702","sPreGrow":"2.1","sPay":"6388.1419","sBonus":"931.3519","sNewPerson":"68","sDate_Ymd":"20150526","sDate_Ym":"201505","sDate_Md":"0526","sDate_Hms":"114110","sDate_Hm":"1141","sDate_YmdHms":"20150526114110","sDate_YmdHm":"201505261141","sDate_yyyyMMdd":"20150526","sDate_yyyyMM":"201505","sDate_MMddyyyy":"20150526","sDate_ddMMyyyy":"20150526"},{"sCorp":"삼성중공업","sPerson":"20165","sPreYear":"4819","sYear":"7043","sGrow":"1.46149","sPreGrow":"1.7","sPay":"6384.8495","sBonus":"845.6834","sNewPerson":"63","sDate_Ymd":"20110126","sDate_Ym":"201101","sDate_Md":"0126","sDate_Hms":"122310","sDate_Hm":"1223","sDate_YmdHms":"20110126122310","sDate_YmdHm":"201101261223","sDate_yyyyMMdd":"20110126","sDate_yyyyMM":"201101","sDate_MMddyyyy":"20110126","sDate_ddMMyyyy":"20110126"},{"sCorp":"삼성물산","sPerson":"15810","sPreYear":"2520","sYear":"3834","sGrow":"1.52128","sPreGrow":"1.8","sPay":"5535.4388","sBonus":"520.1647","sNewPerson":"71","sDate_Ymd":"20150526","sDate_Ym":"201505","sDate_Md":"0526","sDate_Hms":"114110","sDate_Hm":"1141","sDate_YmdHms":"20150526114110","sDate_YmdHm":"201505261141","sDate_yyyyMMdd":"20150526","sDate_yyyyMM":"201505","sDate_MMddyyyy":"20150526","sDate_ddMMyyyy":"20150526"},{"sCorp":"한국GM","sPerson":"3064","sPreYear":"4859","sYear":"6976","sGrow":"1.43576","sPreGrow":"1.2","sPay":"9896.5577","sBonus":"569.3152","sNewPerson":"92","sDate_Ymd":"20130423","sDate_Ym":"201304","sDate_Md":"0423","sDate_Hms":"091020","sDate_Hm":"1200","sDate_YmdHms":"20130423091020","sDate_YmdHm":"201304231200","sDate_yyyyMMdd":"20130423","sDate_yyyyMM":"201304","sDate_MMddyyyy":"20130423","sDate_ddMMyyyy":"20130423"},{"sCorp":"SK텔레콤","sPerson":"29307","sPreYear":"3621","sYear":"7024","sGrow":"1.93968","sPreGrow":"1.5","sPay":"9519.5142","sBonus":"562.9247","sNewPerson":"95","sDate_Ymd":"20150526","sDate_Ym":"201505","sDate_Md":"0526","sDate_Hms":"114110","sDate_Hm":"1141","sDate_YmdHms":"20150526114110","sDate_YmdHm":"201505261141","sDate_yyyyMMdd":"20150526","sDate_yyyyMM":"201505","sDate_MMddyyyy":"20150526","sDate_ddMMyyyy":"20150526"},{"sCorp":"교보생명보험","sPerson":"5262","sPreYear":"8128","sYear":"9687","sGrow":"1.19181","sPreGrow":"1.0","sPay":"9082.9271","sBonus":"881.6509","sNewPerson":"80","sDate_Ymd":"20130423","sDate_Ym":"201304","sDate_Md":"0423","sDate_Hms":"091020","sDate_Hm":"1200","sDate_YmdHms":"20130423091020","sDate_YmdHm":"201304231200","sDate_yyyyMMdd":"20130423","sDate_yyyyMM":"201304","sDate_MMddyyyy":"20130423","sDate_ddMMyyyy":"20130423"},{"sCorp":"한국외환은행","sPerson":"1185","sPreYear":"4497","sYear":"7644","sGrow":"1.69989","sPreGrow":"1.4","sPay":"7047.0014","sBonus":"788.0897","sNewPerson":"86","sDate_Ymd":"20160701","sDate_Ym":"201607","sDate_Md":"0701","sDate_Hms":"091134","sDate_Hm":"0911","sDate_YmdHms":"20160701091134","sDate_YmdHm":"201607010911","sDate_yyyyMMdd":"20160701","sDate_yyyyMM":"201607","sDate_MMddyyyy":"20160701","sDate_ddMMyyyy":"20160701"},{"sCorp":"대한생명보험","sPerson":"21200","sPreYear":"4008","sYear":"5099","sGrow":"1.27210","sPreGrow":"0.8","sPay":"7512.9817","sBonus":"559.4744","sNewPerson":"51","sDate_Ymd":"20160715","sDate_Ym":"201607","sDate_Md":"0715","sDate_Hms":"141215","sDate_Hm":"1412","sDate_YmdHms":"20160715141215","sDate_YmdHm":"201607151412","sDate_yyyyMMdd":"20160715","sDate_yyyyMM":"201607","sDate_MMddyyyy":"20160715","sDate_ddMMyyyy":"20160715"},{"sCorp":"대우조선해양","sPerson":"29493","sPreYear":"1114","sYear":"2371","sGrow":"2.12794","sPreGrow":"1.7","sPay":"9593.6036","sBonus":"556.4095","sNewPerson":"80","sDate_Ymd":"20110126","sDate_Ym":"201101","sDate_Md":"0126","sDate_Hms":"122310","sDate_Hm":"1223","sDate_YmdHms":"20110126122310","sDate_YmdHm":"201101261223","sDate_yyyyMMdd":"20110126","sDate_yyyyMM":"201101","sDate_MMddyyyy":"20110126","sDate_ddMMyyyy":"20110126"},{"sCorp":"한국씨티은행","sPerson":"14900","sPreYear":"8110","sYear":"15056","sGrow":"1.85649","sPreGrow":"1.9","sPay":"5240.2150","sBonus":"996.4299","sNewPerson":"82","sDate_Ymd":"20150526","sDate_Ym":"201505","sDate_Md":"0526","sDate_Hms":"114110","sDate_Hm":"1141","sDate_YmdHms":"20150526114110","sDate_YmdHm":"201505261141","sDate_yyyyMMdd":"20150526","sDate_yyyyMM":"201505","sDate_MMddyyyy":"20150526","sDate_ddMMyyyy":"20150526"},{"sCorp":"하이닉스반도체","sPerson":"27262","sPreYear":"7054","sYear":"10456","sGrow":"1.48234","sPreGrow":"1.2","sPay":"7380.0767","sBonus":"609.0677","sNewPerson":"50","sDate_Ymd":"20130423","sDate_Ym":"201304","sDate_Md":"0423","sDate_Hms":"091020","sDate_Hm":"1200","sDate_YmdHms":"20130423091020","sDate_YmdHm":"201304231200","sDate_yyyyMMdd":"20130423","sDate_yyyyMM":"201304","sDate_MMddyyyy":"20130423","sDate_ddMMyyyy":"20130423"},{"sCorp":"대한항공","sPerson":"9864","sPreYear":"7679","sYear":"10143","sGrow":"1.32083","sPreGrow":"1.4","sPay":"9168.4423","sBonus":"608.3564","sNewPerson":"80","sDate_Ymd":"20160701","sDate_Ym":"201607","sDate_Md":"0701","sDate_Hms":"091134","sDate_Hm":"0911","sDate_YmdHms":"20160701091134","sDate_YmdHm":"201607010911","sDate_yyyyMMdd":"20160701","sDate_yyyyMM":"201607","sDate_MMddyyyy":"20160701","sDate_ddMMyyyy":"20160701"},{"sCorp":"SLCD","sPerson":"13089","sPreYear":"8307","sYear":"9815","sGrow":"1.18158","sPreGrow":"1.4","sPay":"8090.9234","sBonus":"764.7079","sNewPerson":"86","sDate_Ymd":"20160715","sDate_Ym":"201607","sDate_Md":"0715","sDate_Hms":"141215","sDate_Hm":"1412","sDate_YmdHms":"20160715141215","sDate_YmdHm":"201607151412","sDate_yyyyMMdd":"20160715","sDate_yyyyMM":"201607","sDate_MMddyyyy":"20160715","sDate_ddMMyyyy":"20160715"},{"sCorp":"신세계","sPerson":"4933","sPreYear":"2684","sYear":"2901","sGrow":"1.08089","sPreGrow":"0.6","sPay":"7293.3011","sBonus":"931.5313","sNewPerson":"62","sDate_Ymd":"20110126","sDate_Ym":"201101","sDate_Md":"0126","sDate_Hms":"122310","sDate_Hm":"1223","sDate_YmdHms":"20110126122310","sDate_YmdHm":"201101261223","sDate_yyyyMMdd":"20110126","sDate_yyyyMM":"201101","sDate_MMddyyyy":"20110126","sDate_ddMMyyyy":"20110126"},{"sCorp":"현대제철","sPerson":"16391","sPreYear":"1470","sYear":"1672","sGrow":"1.13733","sPreGrow":"1.6","sPay":"5870.9444","sBonus":"521.5323","sNewPerson":"85","sDate_Ymd":"20150526","sDate_Ym":"201505","sDate_Md":"0526","sDate_Hms":"114110","sDate_Hm":"1141","sDate_YmdHms":"20150526114110","sDate_YmdHm":"201505261141","sDate_yyyyMMdd":"20150526","sDate_yyyyMM":"201505","sDate_MMddyyyy":"20150526","sDate_ddMMyyyy":"20150526"},{"sCorp":"현대건설","sPerson":"16225","sPreYear":"5751","sYear":"8103","sGrow":"1.40903","sPreGrow":"1.1","sPay":"8292.198","sBonus":"697.908","sNewPerson":"92","sDate_Ymd":"20130423","sDate_Ym":"201304","sDate_Md":"0423","sDate_Hms":"091020","sDate_Hm":"1200","sDate_YmdHms":"20130423091020","sDate_YmdHm":"201304231200","sDate_yyyyMMdd":"20130423","sDate_yyyyMM":"201304","sDate_MMddyyyy":"20130423","sDate_ddMMyyyy":"20130423"}]
}
ib.create();
</script>
<div>
       <%@ include file="footer.jsp" %>
	</div>
</body>
</html>