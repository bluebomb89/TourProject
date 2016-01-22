<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns:fb="http://ogp.me/ns/fb#">
<html>
<head>
  <!-- Site made with Mobirise Website Builder v2.4.1, http://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v2.4.1, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:700,400&amp;subset=cyrillic,latin,greek,vietnamese">
  <link rel="stylesheet" href="../css/main/main.min.css">
  <link rel="stylesheet" href="../css/main/animate.min.css">
  <link rel="stylesheet" href="../css/main/style.css">
  <link rel="stylesheet" href="../css/main/slidestyle.css">
  <link rel="stylesheet" href="../css/main/mbr-additional.css" type="text/css">
  <link rel="stylesheet" href="../css/main/search.css" type="text/css">  
  <link rel="stylesheet" href="../css/main/gstyle.css">
  <link rel="stylesheet" href="../css/main/mbr-additional.css" type="text/css">
  <link rel="stylesheet" href="../css/main/text.css" type="text/css">
  <link rel="stylesheet" href="../css/main/loginmodal.css" type="text/css">
  <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
  <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script> 
  <script type="text/javascript">
	  jQuery(document).ready(function($) {
	      $(".scroll").click(function(event){            
	              event.preventDefault();
	              $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
	      });
	  });
  </script>
  
	<script type="text/javascript">

      function initialize() {
        var mapLocation = new google.maps.LatLng('37.5666100', '126.9783880'); // 지도에서 가운데로 위치할 위도와 경도 
       
        var markLocation = new google.maps.LatLng('37.5666100', '126.9783880'); // 마커가 위치할 위도와 경도
        var markLocation1 = new google.maps.LatLng('37.5325270', '126.9904900');
        var markLocation2 = new google.maps.LatLng('37.5069777', '126.9280013');
        var mapOptions = {
          center: mapLocation, // 지도에서 가운데로 위치할 위도와 경도(변수)
          zoom: 11, // 지도 zoom단계
          mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        
        
        
        var map = new google.maps.Map(document.getElementById("map-canvas"), // id: map-canvas, body에 있는 div태그의 id와 같아야 함
            mapOptions);
        var size_x = 60; // 마커로 사용할 이미지의 가로 크기
        var size_y = 60; // 마커로 사용할 이미지의 세로 크기
		// 마커로 사용할 이미지 주소
        var image = new google.maps.MarkerImage( 'http://www.larva.re.kr/home/img/boximage3.png',
                            new google.maps.Size(size_x, size_y),
                            '',
                            '',
                            new google.maps.Size(size_x, size_y));
        var marker;
        marker = new google.maps.Marker({ 
               position: markLocation, // 마커가 위치할 위도와 경도(변수)
               map: map,
               icon: image, // 마커로 사용할 이미지(변수)
//             info: '말풍선 안에 들어갈 내용',

               title: '다덤벼' // 마커에 마우스 포인트를 갖다댔을 때 뜨는 타이틀
        });
        
        var marker;
        marker = new google.maps.Marker({ 
               position: markLocation1, // 마커가 위치할 위도와 경도(변수)
               map: map,
               icon: image, // 마커로 사용할 이미지(변수)
//             info: '말풍선 안에 들어갈 내용',

               title: '다덤벼' // 마커에 마우스 포인트를 갖다댔을 때 뜨는 타이틀
        });
        
        var marker;
        marker = new google.maps.Marker({ 
               position: markLocation2, // 마커가 위치할 위도와 경도(변수)
               map: map,
               icon: image, // 마커로 사용할 이미지(변수)
//             info: '말풍선 안에 들어갈 내용',

               title: '다덤벼' // 마커에 마우스 포인트를 갖다댔을 때 뜨는 타이틀
        });
        var content = "남영권 ! <br/> 지하철 타러 가자~"; // 말풍선 안에 들어갈 내용
        // 마커를 클릭했을 때의 이벤트. 말풍선 뿅~
		var infowindow = new google.maps.InfoWindow({ content: content});
        google.maps.event.addListener(marker, "click", function() {
        infowindow.open(map,marker);
	    });
      }
		google.maps.event.addDomListener(window, 'load', initialize);
	</script>
	
	
  
</head>

<body onload="initialize()">
<section class="engine"><a rel="nofollow" href="http://mobirise.com">Mobirise website maker</a></section>
<!-- 메뉴바 -->
<section class="mbr-navbar mbr-navbar--freeze mbr-navbar--absolute mbr-navbar--transparent mbr-navbar--sticky mbr-navbar--auto-collapse" id="menu-21">

    <div class="mbr-navbar__section mbr-section">
        <div class="mbr-section__container container">
            <div class="mbr-navbar__container">
                <div class="mbr-navbar__column mbr-navbar__column--s mbr-navbar__brand">
                    <span class="mbr-navbar__brand-link mbr-brand mbr-brand--inline">
                        <a class="mbr-brand__logo" href="main.do"><img class="mbr-navbar__brand-img mbr-brand__img" alt="" src="../backgroundimg/main/logo/otravel.png"></a>
                        <span class="mbr-brand__name"><a class="mbr-brand__name text-white" href="main.do">그냥가요</a></span>
                    </span>
                </div>
               

   
<div id="fb-root"></div>

        
        <fb:login-button show-faces="false" width="200" max-rows="1"></fb:login-button>
        <a href="#" onclick="FB.logout();">[logout]</a><br>
        <div align="left">
            <img id="image"/>
            <div id="name"></div>
        </div>
<!-- <div id="kakao-logged-group"></div> --> 
<div id="kakao-profile"></div>
                <div class="mbr-navbar__hamburger mbr-hamburger text-white"><span class="mbr-hamburger__line"></span></div>
                <div class="mbr-navbar__column mbr-navbar__menu">
                    <nav class="mbr-navbar__menu-box mbr-navbar__menu-box--inline-right">
                        <div class="mbr-navbar__column">
                        	<ul class="mbr-navbar__items mbr-navbar__items--right mbr-buttons mbr-buttons--freeze mbr-buttons--right btn-decorator mbr-buttons--active">
                        		<li class="mbr-navbar__item">
                        			<a class="mbr-buttons__link btn text-white"  href="main.do">HOME</a>
                        		</li><li class="mbr-navbar__item" id="kakao-logged-group">
                        			<!-- <a class="mbr-buttons__link btn text-white" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">로그인</a> -->
                        		</li>
                        		<li class="mbr-navbar__item">
                        			<a class="mbr-buttons__link btn text-white" href="http://mobirise.com">ABOUT</a>
                        		</li>
                        		<li class="mbr-navbar__item">
                        			<a class="mbr-buttons__link btn text-white" href="../detail/detail.do">CONTACT</a>
                        		</li>
         		                <li class="mbr-navbar__item">
                        			<a class="mbr-buttons__link btn text-white" href="http://mobirise.com">IMG</a>
                        		</li>
                        		<li class="mbr-navbar__item">
                        			<a class="mbr-buttons__link btn text-white" href="../member/member_insert.do">JOIN</a>
                        		</li>
                        	</ul>
                        </div>
                        
                        <div class="mbr-navbar__column">
                        	<ul class="mbr-navbar__items mbr-navbar__items--right mbr-buttons mbr-buttons--freeze mbr-buttons--right btn-inverse mbr-buttons--active">
                        	</ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- 모달 추가 -->
<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" style="width: 500px;">
    <div class="modal-content">
       <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel" style="font-size: 24px; color:#4A90E2">로그인</h4>
      </div>
      <div class="modal-body">
        <div class=form-group>
        	<div class=row>
        		<div class=col-sm-4>
        			<a href="#">페이스북</a>
        		</div>
        		<div class="col-sm-4" id="hnplogin"></div>
        		 <!-- <div id="kakao-logged-group" style="cursor:pointer"></div> -->
        	</div>
        	
        </div>
        <div class=form-group>
        <div class=login-mi>
        	<div class=login-label>
        		또는
        	</div>
        	<div class=login-line></div>
        </div>
        </div>
          <div class=login-text>
          		<label>아이디</label>
          		<input type="text" placeholder="이메일을입력하세요">
          </div>
          	<div class=login-text>
          		<label>비밀번호</label>
          		<input type="text" placeholder="비밀번호를입력하세요">
          	</div>
      </div>
      <div class="modal-footer">
        <input type="button" value="로그인">
        
      </div>
    </div>
  </div>
</div>
<!-- <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
       <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
      	 <div style="align=center;">
        	<fb:login-button show-faces="false" width="200" max-rows="1"></fb:login-button>
        </div>
        <div id="kakao-logged-group" style="cursor:pointer"></div>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div> -->

<div id="fullpage">
<div class="section" style="background-color: #edefed;">
<!-- 메인 인클루드 -->
<jsp:include page="${mainview}"></jsp:include>
</div>
<div class="section">
<!-- 검색창 인클루드 -->
<jsp:include page="${searchview}"></jsp:include>
</div>
<div class="section">
<!-- 카테고리 인클루드 -->
<jsp:include page="${categori}"></jsp:include>
 </div>
 <div class="section" id="map-canvas" style="width: 100%; height: 600px;">
<!-- 카테고리 인클루드 -->
<%-- <jsp:include page="${categori}"></jsp:include> --%>
<!-- <div id="map-canvas" style="width: 100%; height: 600px;"></div> -->
 </div>
 </div>
<!-- 푸터 -->
<footer class="mbr-section mbr-section--relative mbr-section--fixed-size" id="footer1-23" style="background-color: rgb(68, 68, 68);">
    
    <div class="mbr-section__container container">
        <div class="mbr-footer mbr-footer--wysiwyg row">
            <div class="col-sm-12">
                <p class="mbr-footer__copyright">Copyright (c) 2015 Company Name. <a class="mbr-footer__link text-gray" href="http://mobirise.com/">Terms of Use</a>  | <a class="mbr-footer__link text-gray" href="http://mobirise.com/">Privacy Policy</a></p>
            </div>
        </div>
    </div>


<!-- Small modal -->
</footer> 
  <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
  <script src="../js/main/jquery.min.js"></script>
  <script src="../js/main/bootstrap.min.js"></script>
  <script src="../js/main/SmoothScroll.js"></script>
  <script src="../js/main/bootstrap-carousel-swipe.js"></script>
  <script src="../js/main/jarallax.js"></script>
  <script src="../js/main/script.js"></script>
  <script src="../js/main/gscript.js"></script>
  <script src="../js/main/masonry.pkgd.min.js"></script>
  <script src="../js/main/imagesloaded.pkgd.min.js"></script>
  <script src="../js/main/kakaotalk.js"></script>
  <script src="../js/main/facebook.js"></script>
  
  
  
</body>
</html>