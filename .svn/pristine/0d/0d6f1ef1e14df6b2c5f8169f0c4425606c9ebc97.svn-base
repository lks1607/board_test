//독립적으로 창이 열렸을때는 별도로 창의 내용을 로딩할 수 있게 하자
if (!document.getElementById("sidebar")) {
  var div = document.createElement("div");
  div.innerText = "페이지 이동: ";
  div.style.padding = "10px";
  div.style.color = "#FFFFFF";
  div.style.fontWeight = "500";
  div.style.backgroundColor = "#39c5d7";
  div.style.borderTop = "1px solid #eee";
  div.style.borderBottom = "1px solid #eee";
  $.getScript("../assets/js/index-menu.js")
    .done(function (script, textStatus) {
      var sl = document.createElement("select");
      sl.id = "contentSelect";
      sl.addEventListener("change", function () {
        localStorage.setItem('_PageUrl', this.value);
        movePage(this.value);
      }, !1);

      for (var i = 0; i < menu_arr.length; i++) {
        if (menu_arr[i]["child"]) {
          for (var x = 0; x < menu_arr[i]["child"].length; x++) {
            var opt = document.createElement('option');
            opt.value = menu_arr[i]["child"][x]["url"];
            opt.innerHTML = menu_arr[i]["child"][x]["title"];;
            sl.appendChild(opt);
          }
        } else {
          var opt = document.createElement('option');
          opt.value = menu_arr[i]["url"];
          opt.innerHTML = menu_arr[i]["title"];;
          sl.appendChild(opt);
        }
      }
      div.appendChild(sl);
      var credit = document.createElement("div");
      credit.innerText = "©2019 IB Leaders. All rights Reserved.";
      credit.style.color = "#FFFFFF";
      credit.style.display = "inline-block";
      credit.style.float = "right";
      div.appendChild(credit);
      document.body.insertBefore(div, document.getElementById("sampleContents"));


      //기존에 작업하던 페이지로 이동
      if (localStorage.getItem("_PageUrl")) {
        document.getElementById("contentSelect").value = localStorage.getItem("_PageUrl");
        movePage(localStorage.getItem("_PageUrl"));
      }
    })
    .fail(function (jqxhr, settings, exception) {
      console.log("%cJS FILE Load Error", "color:red", jqxhr, settings, exception);
    });
}

var movePage = function (url,parentsMenuName) {
  // alert(parentsMenuName)
  //기존 화면의 시트를 클리어한다.
  try{
    IBSheet.disposeAll();
    samplePageObj = null;
  }catch(ex){}

  //개인화 prefix 설정
  if(IBSheet.CommonOptions){
    IBSheet.CommonOptions["Cfg"]["StorageKeyPrefix"] = url;
  }

  var curl = "../samples/" + url;

  $.getScript(curl)
    //js로딩 성공
    .done(function (script, textStatus) {
      //가져온 js의 내용을 갖고 contents를 구성한다.

      if (samplePageObj["externalScript"]) {
        var externalScripts = "";
        for (var i = 0; i < samplePageObj.externalScript.length; i++) {
          externalScripts = document.createElement("script");
          externalScripts.setAttribute('src', samplePageObj.externalScript[i]);
          document.body.appendChild(externalScripts);
        }
      }

      // CSS 추가하기: externalStyles
      var externalStyles = samplePageObj.externalStyles;
      if (externalStyles != null) {
        if (!Array.isArray(externalStyles)) {
          externalStyles = [externalStyles];
        }
        (function(__arr) {
          __arr.forEach(function(href) {
            var linkEl = document.createElement('link');
            [
              { name: 'rel', value: 'stylesheet' },
              { name: 'type', value: 'text/css' },
              { name: 'href', value: href }
            ].forEach(function(attr) {
              linkEl.setAttribute(attr.name, attr.value);
            });
            document.head.appendChild(linkEl);
          });
        }(externalStyles));
      }

      var internalStyles = samplePageObj.internalStyles;
      if(internalStyles != null){
        var newStyle = document.createElement("style");
        newStyle.setAttribute("rel","stylesheet");
        newStyle.setAttribute("type","text/css");
        newStyle.innerHTML = internalStyles;
        document.head.appendChild(newStyle);
      }

      var content = '<div class="top-util">';
          content += ((parentsMenuName != null) ? '<span><p class="tit">' + parentsMenuName + '&nbsp&gt;</p></span><span>' : '');
          content += '<p class="tit-depth2">' + samplePageObj.title + '</p></span>';
          content += '<p class="comment">'+samplePageObj.subtitle+'</p>';
          content += '<ul class="sns">';
          content += '<!--';
          content += ' <li><a href="#none" class="tw" target="_blank" title="새창"><span>트위터</span></a></li>';
          content += ' <li><a href="#none" class="fb" target="_blank" title="새창"><span>페이스북</span></a></li>';
          content += ' <li><a href="#none" class="sc" target="_blank" title="새창"><span>스냅챗</span></a></li>';
          content += ' <li><a href="#none" class="in" target="_blank" title="새창"><span>인스타그램</span></a></li>';
          content += ' <li><a href="#none" class="md" target="_blank" title="새창"><span>미디엄</span></a></li>';
          content += ' -->';
          content += '</ul>';
          content += '</div>';
          content += '<div class="inner">';
          // content += '<button type="button" style="margin-left:15px;background:url(../assets/imgs/comment-icon.png) no-repeat;width:40px;height:26px" id="foldBtn"></button>';
          content += '<div class="ibsheet-wrap" id="descFunc" >';
      if(samplePageObj.func==""||samplePageObj.func=="<div></div>"){
        content += '<div class="sampleDesc">'+samplePageObj.desc+'</div>';
      }else{
        content += '<div class="sampleDesc" style="margin-bottom:1em">'+samplePageObj.desc+'</div>'+
          '<div class="functional"><div>'+samplePageObj.func+'</div></div>'
      }
      content += '</div>';
      content += '<div class="ibsheet-wrap" style="height:520px;">';
      content += '<div class="objectBase" style="height:100%">' + samplePageObj.objEl + '</div>';
      content += '</div>';
      content += '<div id="tabBtn"></div>';
      content += '<div id="tabContents" ></div>';
      content += '</div>';
      // content += '<div class="sampleFoot">' + samplePageObj.footer + '</div>';

      //contents 안에 내용을 클리어 한다.
      if(document.getElementById("contents")){
        $("#contents").empty();
        $("#contents").html(content);
      }else{
        $("#sampleContents").empty();
        $("#sampleContents").html(content);
      }

      //초기화 구문 처리
      var _init = JSON.stringify(samplePageObj.init, function(key, value) {
        if (typeof value === 'function') {
          //함수 문자열 처리
          var fstr = value.toString();
          fstr = "☞"+ fstr+"\r\n☜";
          fstr = fstr.split("\r\n").join("▩");
          fstr = fstr.split("\"").join("〃");
          return fstr;
        } else {
          return value;
        }
      }, 2);

      var isArr = [],isObject = [],isCols;
      //json minified
      var initArr = _init.split("\n").map(function(v,idx,orgArr){
        var vt = v.trim();
        if(vt == '"LeftCols": [' || vt == '"RightCols": [' || vt == '"Cols": [')  isCols = true;
        if(isCols){
          var last2 = v.substring(v.length-2);
          var last1 = last2.substring(1);
          if(last1=="["){
            isArr.push("A");
          }else if(last2=="],"||last1=="]"){
            isArr.pop();
            if(isArr.length==0) isCols = false;
          }
          if(last1=="{"){
            isObject.push("A");
          }else if(last2=="},"||last1=="}"){
            isObject.pop();
          }

          if(isArr.length>0){

            if(vt == '"LeftCols": [' || vt == '"RightCols": [' || vt == '"Cols": [' || vt == '"Solid": ['|| vt == '"Foot": ['){

            }else{
              if(vt == "{"){
                 v = v + "‡"
              }else if(vt == "}" || vt == "},"){
                if(isObject.length>0){
                  v = vt + "‡"
                }else{
                  v = vt;
                }
              }else{
                v = vt + "‡"
              }
            }

          }
        }

        return v;

      })
      _init = initArr.join("\n").split("‡\n").join("");


       // //☜☞ 문자 제거
      _init = _init.replace(/"☞/g,'');
      _init = _init.replace(/☜"/g,'');
      _init = _init.replace(/▩/g,'\n');
      _init = _init.replace(/〃/g,'"');

      var Pos = _init.indexOf('"Def"');
      // if (Pos > -1) {
      //   _init = _init.substring(0, Pos) + "//영역 별 Default 설정 부분\r\n  " + _init.substring(Pos);
      // }
      Pos = _init.indexOf('"Cfg"');
      if (Pos > -1) {
        _init = _init.substring(0, Pos) + "//공통기능 설정 부분\r\n  " + _init.substring(Pos);
      }

      Pos = _init.indexOf('"LeftCols"');
      if (Pos > -1) {
        _init = _init.substring(0, Pos) + "//틀고정 좌측 컬럼 설정\r\n  " + _init.substring(Pos);
      }

      var Pos = _init.indexOf('"Cols"');
      if (Pos > -1) {
        _init = _init.substring(0, Pos) + "//중앙(메인) 컬럼 설정\r\n  " + _init.substring(Pos);
      }

      var Pos = _init.indexOf('"RightCols"');
      if (Pos > -1) {
        _init = _init.substring(0, Pos) + "//틀고정 우측 컬럼 설정\r\n  " + _init.substring(Pos);
      }

      //데이터 구문 처리
      var _data = JSON.stringify(samplePageObj.data, null, 2);
      //데이터가 너무 많으면 화면이 느려지기 때문에 일부 생략하자
      var tempDataArr = _data.split("\n");
      var copyData = JSON.stringify(samplePageObj.data, null, 2);
      //대충 300개 행까지만 보여주자.
      if (tempDataArr.length > 300) {
        tempDataArr.splice(300);
        _data = tempDataArr.join("\n");
        _data = _data.substring(0, _data.length - 1) + "...";
      }

      //이벤트 구문 처리
      var eventStr = "{\n";
      for (var i in samplePageObj.event) {
        eventStr += "    " + i + ":" + samplePageObj.event[i].toString() + ",\n";
      }

      if (eventStr.length > 2) eventStr = eventStr.substring(0, eventStr.length - 2);

      eventStr += "\n}";

      // exfunc
      var screenFunc = samplePageObj.action.toString() + "\n";
      if (samplePageObj.externalFunction) {
        if(typeof samplePageObj.externalFunction == "function"){
          screenFunc += samplePageObj.externalFunction.toString();
        }else{
          for(var key in samplePageObj.externalFunction){
            screenFunc += "var "+key+" = "+samplePageObj.externalFunction[key].toString()+"\n\n";
          }

        }
      }
      
      // var common = "// CommonOptions 모든 시트에 공통으로 설정할 초기 속성값을 설정합니다.\nIBSheet.CommonOptions = {";
      // //공통설정
      // if(IBSheet.CommonOptions){
      //   var strComOp = JSON.stringify(IBSheet.CommonOptions, null, 2);
      //   common += strComOp.substr(1, strComOp.length-2);
      // }
      // common += "};";

      var common = "// CommonOptions 모든 시트에 공통으로 설정할 초기 속성값을 설정합니다.\nIBSheet.CommonOptions = "+(IBSheet.CommonOptions ? JSON.stringify(IBSheet.CommonOptions, null, 2) : "{}")+";";

      //공통설정(static)
      var beforeCreate = "// beforeCreate IBSheet.create()호출 후 시트가 생성되기 전 CommonOptions와 화면 생성 옵션(options)을\n// 머지한 초기 속성값을 파라미터로 받아 설정 후 반환하면 시트가 생성됩니다.\nIBSheet.beforeCreate = " + (IBSheet.beforeCreate ? IBSheet.beforeCreate.toString() : "function (opt) { return opt; }") + ";";

      var tabBar = document.getElementById("tabBtn"),
        contents = document.getElementById("tabContents");

      //텝 컨트롤 생성
      createIBTab(tabBar, contents, "myTabs", {
        heightContents: "600px",
        themes: {
          tabs: "custom_gray",
          contents: "custom_gray",
          contextMenu: "custom_gray"
        },
        checkNotSupport: true
      });
      //텝 초기화
      myTabs.setOptions({
        tabs: [{
          title: "초기화",
          style: {
            icon: {
              type: "fa",
              value: "fa-home"
            },
            btnClose: false
          }
        }, {
          title: "데이터",
          style: {
            icon: {
              type: "fa",
              value: "fa-table"
            },
            btnClose: false
          }
        }, {
          title: "화면기능",
          style: {
            icon: {
              type: "fa",
              value: "fa-desktop"
            },
            btnClose: false
          }
        }, {
          title: "이벤트",
          style: {
            icon: {
              type: "fa",
              value: "fa-bolt"
            },
            btnClose: false
          }
        }, {
          title: "공통설정(property)",
          style: {
            icon: {
              type: "fa",
              value: "fa-cog"
            },
            btnClose: false
          }
        }, {
          title: "공통설정(event)",
          style: {
            icon: {
              type: "fa",
              value: "fa-cogs"
            },
            btnClose: false
          }
        }],
        customZone: {
          contents: "<button id='copySource' class='customBtn'>소스 복사</button>"
        },
        contents: [{
          contents: "<pre><code class='language-json code-basic' style=''></code></pre>",
          style: { border: { radius: "0px 0px 10px 10px" } }
        },
        {
          contents: "<pre><code class='language-json code-basic'></code></pre>",
          style: { border: { radius: "0px 0px 10px 10px" } }
        },
        {
          contents: "<pre><code class='language-javascript code-basic'>" + screenFunc.replace(/</g, "&lt;").replace(/>/g, "&gt;") + "</code></pre>",
          style: { border: { radius: "0px 0px 10px 10px" } }
        },
        {
          contents: "<pre><code class='language-javascript code-basic'>" + eventStr.replace(/</g, "&lt;").replace(/>/g, "&gt;") + "</code></pre>",
          style: { border: { radius: "0px 0px 10px 10px" } }
        },
        {
          contents: "<pre><code class='language-javascript code-basic'>" + common + "</code><pre>",
          style: { border: { radius: "0px 0px 10px 10px" } }
        },
        {
          contents: "<pre><code class='language-javascript code-basic'>"  +beforeCreate+ "</code><pre>",
          style: { border: { radius: "0px 0px 10px 10px" } }
        },
        ]
      });

      if (myTabs.customZone.item()) {
        myTabs.customZone.item().getContainer().firstChild.onclick = function () {
          switch (myTabs.tabs.getActiveTabIndex()) {
            case 0:
              copyToClipboard(myTabs.contents.items(0).getContainer().firstChild.firstChild.innerText);
              break;
            case 1:
              copyToClipboard(copyData);
              break;
            case 2:
              copyToClipboard(screenFunc.replace(/</g, "&lt;").replace(/>/g, "&gt;"));
              break;
            case 3:
              copyToClipboard(eventStr.replace(/</g, "&lt;").replace(/>/g, "&gt;"));
              break;
            case 4:
              copyToClipboard(common);
              break;
            case 5:
              copyToClipboard(beforeCreate);
              break;
          }

          function copyToClipboard(val) {
            var t = document.createElement("textarea");
            document.body.appendChild(t);
            t.value = val;
            t.select();
            document.execCommand('copy');
            document.body.removeChild(t);
          }
        }
      }
      // html 코드 구문이 문자열로 들어가는 경우 탭 컨텐츠에 안나오는 현상
      if (myTabs.contents.items(0)) myTabs.contents.items(0).getContainer().firstChild.firstChild.innerText = samplePageObj.initStr ? samplePageObj.initStr : "var options = " + _init;
      if (myTabs.contents.items(1)) myTabs.contents.items(1).getContainer().firstChild.firstChild.innerText = _data;

      //js highlight
      document.querySelectorAll('pre code').forEach(function (block) {
        //highlight 적용
        hljs.highlightBlock(block);

        //특정 문자에 대한 강조 넣기
        var mark = findMark(url);
        if (mark != "") {
          var markArr = mark.split(",");
          for (var i in markArr) {
            var str = block.innerHTML;
            if (block.className.indexOf("language-json") > -1) {
              str = str.replace(new RegExp("<span class=\"hljs-attr\">\"(" + markArr[i] + ")\"</span>", "g"), "<span class='hljs-marker'>\"$1\"</span>");
            } else {
              str = str.replace(new RegExp("([^A-Za-z])(" + markArr[i] + ")", "g"), "$1<span class='hljs-marker'>$2</span>");
            }
            block.innerHTML = str;
          }
        }
      });

      // //설명 접고 펼침
      // document.getElementById("foldBtn").addEventListener("click",function(){
      //   if(document.getElementById("descFunc").style.display == "none"){
      //     document.getElementById("descFunc").style.display = "block";
      //     document.getElementById("foldBtn").title = "기능설명 접기";
      //     document.getElementById("foldBtn").style.backgroundImage = "url(../assets/imgs/comment-icon-close.png)";
      //   }else{
      //     document.getElementById("descFunc").style.display = "none";
      //     document.getElementById("foldBtn").title = "기능설명 펼침";
      //     document.getElementById("foldBtn").style.backgroundImage = "url(../assets/imgs/comment-icon.png)";
      //   }
      // },0);

      //시트 객체 생성
      samplePageObj.create();

    })
    .fail(function (jqxhr, settings, exception) {
      console.log("%cJS FILE Load Error", "color:red", jqxhr, settings, exception);
    });
};

//index-menu.js 파일 내에 mark를 찾아서 리턴
var findMark = function (url) {
  for (var i = 0; i < menu_arr.length; i++) {
    var item = menu_arr[i];
    if (item["child"]) {
      for (var x = 0; x < item["child"].length; x++) {
        if (item["child"][x]["url"] == url) {
          return item["child"][x]["mark"] ? item["child"][x]["mark"] : "";
        }
      }
    } else {
      if (item["url"] == url) {
        return item["mark"] ? item["mark"] : "";
      }
    }
  }
};