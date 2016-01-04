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
  <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
  <script type="text/javascript">
	  jQuery(document).ready(function($) {
	      $(".scroll").click(function(event){            
	              event.preventDefault();
	              $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
	      });
	  });
  </script>
  <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
</head>

<body>
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
               

    <script>
$(document).ready(function(){
Kakao.init('095fc61e29157624f94212b30372c244');
function getKakaotalkUserProfile(){
Kakao.API.request({
url: '/v1/user/me',
success: function(res) {
$("#kakao-profile").append(res.properties.nickname);
$("#kakao-profile").append($("<img/>",{"src":res.properties.profile_image,"alt":res.properties.nickname+"님의 프로필 사진"}));
},
fail: function(error) {
console.log(error);
}
});
}
function createKakaotalkLogin(){
$("#kakao-logged-group .kakao-logout-btn,#kakao-logged-group .kakao-login-btn").remove();
var loginBtn = $("<a/>",{"class":"kakao-login-btn","text":"카카오 톡으로 로그인하기"});
loginBtn.click(function(){
Kakao.Auth.login({
persistAccessToken: true,
persistRefreshToken: true,
success: function(authObj) {
getKakaotalkUserProfile();
createKakaotalkLogout();
},
fail: function(err) {
console.log(err);
}
});
});
$("#kakao-logged-group").prepend(loginBtn)
}
function createKakaotalkLogout(){
$("#kakao-logged-group .kakao-logout-btn,#kakao-logged-group .kakao-login-btn").remove();
var logoutBtn = $("<a/>",{"class":"kakao-logout-btn","text":"로그아웃"});
logoutBtn.click(function(){
Kakao.Auth.logout();
createKakaotalkLogin();
$("#kakao-profile").text("");
});
$("#kakao-logged-group").prepend(logoutBtn);
}
if(Kakao.Auth.getRefreshToken()!=undefined&&Kakao.Auth.getRefreshToken().replace(/ /gi,"")!=""){
createKakaotalkLogout();
getKakaotalkUserProfile();
}else{
createKakaotalkLogin();
}
});
</script>
<div id="fb-root"></div>
        <script>
          window.fbAsyncInit = function() {
            FB.init({
              appId      : '156610684706543', // 앱 ID
              status     : true,          // 로그인 상태를 확인
              cookie     : true,          // 쿠키허용
              xfbml      : true           // parse XFBML
            });
           
            FB.getLoginStatus(function(response) {
                if (response.status === 'connected') {
                    
                    FB.api('/me', function(user) {
                        if (user) {
                            var image = document.getElementById('image');
                            image.src = 'http://graph.facebook.com/' + user.id + '/picture';
                            var name = document.getElementById('name');
                            name.innerHTML = user.name
                            var id = document.getElementById('id');
                            id.innerHTML = user.id
                        }
                    });    
                     
                } else if (response.status === 'not_authorized') {

                } else {
                    
                }
            });

            FB.Event.subscribe('auth.login', function(response) {
                document.location.reload();
            });
          };
        
          // Load the SDK Asynchronously
          (function(d){
             var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
             if (d.getElementById(id)) {return;}
             js = d.createElement('script'); js.id = id; js.async = true;
             js.src = "//connect.facebook.net/ko_KR/all.js";
             ref.parentNode.insertBefore(js, ref);
           }(document));
        </script>
        
        <p>로그인 버튼 추가</p>
        <fb:login-button show-faces="false" width="200" max-rows="1"></fb:login-button>
        
        <p>사용자정보 출력</p>
        <div align="left">
            <img id="image"/>
            <div id="name"></div>
        </div>
<div id="kakao-logged-group"></div>
<div id="kakao-profile"></div>
                <div class="mbr-navbar__hamburger mbr-hamburger text-white"><span class="mbr-hamburger__line"></span></div>
                <div class="mbr-navbar__column mbr-navbar__menu">
                    <nav class="mbr-navbar__menu-box mbr-navbar__menu-box--inline-right">
                        <div class="mbr-navbar__column">
                        	<ul class="mbr-navbar__items mbr-navbar__items--right mbr-buttons mbr-buttons--freeze mbr-buttons--right btn-decorator mbr-buttons--active">
                        		<li class="mbr-navbar__item">
                        			<a class="mbr-buttons__link btn text-white"  href="main.do">HOME</a>
                        		</li><li class="mbr-navbar__item">
                        			<a class="mbr-buttons__link btn text-white" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">로그인</a>
                        		</li>
                        		<li class="mbr-navbar__item">
                        			<a class="mbr-buttons__link btn text-white" href="http://mobirise.com">ABOUT</a>
                        		</li>
                        		<li class="mbr-navbar__item">
                        			<a class="mbr-buttons__link btn text-white" href="http://mobirise.com">CONTACT</a>
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
                        		<li class="mbr-navbar__item">
                        			<a class="mbr-buttons__btn btn btn-default" href="http://mobirise.com">DOWNLOAD</a>
                        		</li>
                        	</ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
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
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

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

  <script src="../js/main/jquery.min.js"></script>
  <script src="../js/main/bootstrap.min.js"></script>
  <script src="../js/main/SmoothScroll.js"></script>
  <script src="../js/main/bootstrap-carousel-swipe.js"></script>
  <script src="../js/main/jarallax.js"></script>
  <script src="../js/main/script.js"></script>
  <script src="../js/main/gscript.js"></script>
  <script src="../js/main/masonry.pkgd.min.js"></script>
  <script src="../js/main/imagesloaded.pkgd.min.js"></script>
  
  
  
</body>
</html>