$(function(){
    // datepicker
	$(".datepicker").datepicker({
		showOn: "both", // 버튼과 텍스트 필드 모두 캘린더를 보여준다.
		buttonImage: "../../resource/images/common/icon_calender.png", // 버튼 이미지.
		dateFormat: "yy-mm-dd", // 텍스트 필드에 입력되는 날짜 형식.
		changeMonth: true ,
		changeYear: true,
		nextText: '다음 달', // next 아이콘의 툴팁.
		prevText: '이전 달', // prev 아이콘의 툴팁.		
		monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		dayNames: ['일','월','화','수','목','금','토'],
		dayNamesShort: ['일','월','화','수','목','금','토'],
		dayNamesMin: ['일','월','화','수','목','금','토']
    });

    // 탭 함수
	function tabMenu(e, cont) { 
        function tabMenuFunc(e) {
            $tabMenu = $(e);
            $tabMenuList = $tabMenu.find('li a');
            $tabCont = $(cont).children();
            $tabContShow = $(cont).children('.active');

            $tabCont.hide();
            $tabContShow.show();

            $tabMenuList.on('click', function () {
                $tabMenuList.parent('li').removeClass('on');
                $(this).parent('li').addClass('on');
                $tabCont.hide();
                var activeTabs = $(this).parent('li').attr('rel');
                $('#' + activeTabs).stop().fadeIn();
            });
		}
		var $tabMenu = null,
			$tabMenuList = null,
			$tabCont = null,
			$tabContShow = null;
			
        tabMenuFunc(e);
	}
    tabMenu('#tabList01', '#tabCont01');
	tabMenu('#tabList02', '#tabCont02');

    // LNB 메뉴
    $('.lnb-menu li.active').addClass('open').children('ul').show();
	$('.lnb-menu li.has-sub>a').on('click', function(){
		//$(this).removeAttr('href');
		var element = $(this).parent('li');
		if (element.hasClass('open')) {
			element.removeClass('open');
			element.find('li').removeClass('open');
			element.find('ul').slideUp(200);
		}
		else {
			element.addClass('open');
			element.children('ul').slideDown(200);
			element.siblings('li').children('ul').slideUp(200);
			element.siblings('li').removeClass('open');
			element.siblings('li').find('li').removeClass('open');
			element.siblings('li').find('ul').slideUp(200);
		}
	});

	// LNB 버튼
	function lnbBtn(e){
		$lbnBtn = $(e);
		$lnbWrap = $(".lnb-wrap");
		$content = $(".content");

		$(e).click(function(){
			if(!$(this).hasClass("on")){
				$lnbWrap.css("left","-231px");
				$content.css('margin-left','15px');
				$(this).addClass("on");
			}else{
				$lnbWrap.css("left","0");
				$content.css('margin-left','240px');
				$(this).removeClass("on");
			}
		});

	}
	lnbBtn(".lnb-btn");

	

});