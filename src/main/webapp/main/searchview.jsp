<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html> 
<script type="text/javascript">
var sch;
$(function(){
	$sch = $("#searchText");
        $sch.keyup(function(){
	        var val = $(this).val();
            $('#searchTxtArea').html(val);
        });
});
</script>
<!-- 슬라이더 메인 -->
<div class="section" id="search">
<section class="mbr-slider mbr-section mbr-section--no-padding carousel slide" data-ride="carousel" data-wrap="true" data-interval="5000" id="slider-64" style="background-color: rgb(255, 255, 255);">
	<div class="searchArea">
		<div id="searchTxtArea" class="searchTxtArea"></div>
		<fieldset>
			<input type="text" placeholder="여행지를 입력하세요" id="searchText" title="검색어" class="placeholder">
			<a href="#" class="searchBtn"><img src="../backgroundimg/main/btn_search.png" alt="검색"></a>
		</fieldset>
		<!-- <ul class="favorSList">
		
				<li><a href="#none" onclick="$KE.search('시드니'); return false;">시드니</a></li>
				
				<li><a href="#none" onclick="$KE.search('오클랜드'); return false;">오클랜드</a></li>
				
				<li><a href="#none" onclick="$KE.search('방콕'); return false;">방콕</a></li>
				
				<li><a href="#none" onclick="$KE.search('괌'); return false;">괌</a></li>
				
				<li><a href="#none" onclick="$KE.search('러시아'); return false;">러시아</a></li>
				
		</ul> -->
	</div>
	
    <div class="mbr-section__container">
        <div>
            <ol class="carousel-indicators" style="">
                <li data-app-prevent-settings="" data-target="#slider-64" class="active" data-slide-to="0"></li><li data-app-prevent-settings="" data-target="#slider-64" data-slide-to="1"></li><li data-app-prevent-settings="" data-target="#slider-64" data-slide-to="2"></li><li data-app-prevent-settings="" data-target="#slider-64" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--bg-adapted item dark center mbr-section--full-height active" style="background-image: url(http://www.ultimatekoreatour.com/wp-content/uploads/2014/09/%EB%82%A8%EC%82%B0_03.jpg);">
                    <div class="mbr-box__magnet mbr-box__magnet--sm-padding">
                        <div class=" container">
                            
<!--                             <div class="row"><div class="col-sm-8 col-sm-offset-2">
                                <div class="mbr-hero">
                                    <h1 class="mbr-hero__text">Slide 1</h1>
                                    <p class="mbr-hero__subtext">Develop fully responsive, mobile-optimized websites that look amazing on any devices and browsers. Preview how your website will appear on phones, tablets and desktops directly in the visual editor.</p>
                                </div>
                                <div class="mbr-buttons btn-inverse mbr-buttons--center"><a class="mbr-buttons__btn btn btn-lg btn-danger" href="http://mobirise.com">FOR WINDOWS</a> <a class="mbr-buttons__btn btn btn-lg btn-default" href="http://mobirise.com">FOR MAC</a></div>
                            </div></div> -->
                        </div>
                    </div>
                </div><div class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--bg-adapted item dark center mbr-section--full-height" style="background-image: url(http://pds.joins.com/news/component/htmlphoto_mmdata/201505/19/htm_20150519170735515.jpg);">
                    <div class="mbr-box__magnet mbr-box__magnet--sm-padding">
                        <div class=" container">
                            
<!--                             <div class="row"><div class="col-sm-8 col-sm-offset-2">
                                <div class="mbr-hero">
                                    <h1 class="mbr-hero__text">Slide 2</h1>
                                    <p class="mbr-hero__subtext">Mobirise is based on Bootstrap 3 - most powerful mobile first framework. Use any bootstrap themes with no extra work.</p>
                                </div>
                                <div class="mbr-buttons btn-inverse mbr-buttons--center"><a class="mbr-buttons__btn btn btn-lg btn-danger" href="http://mobirise.com">FOR WINDOWS</a> <a class="mbr-buttons__btn btn btn-lg btn-default" href="http://mobirise.com">FOR MAC</a></div>
                            </div></div> -->
                        </div>
                    </div>
                </div>
                <div class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--bg-adapted item dark center mbr-section--full-height" style="background-image: url(https://static.pexels.com/photos/4097/city-cars-traffic-lights.jpeg);">
                    <div class="mbr-box__magnet mbr-box__magnet--sm-padding">
                        <div class=" container">
                            
<!--                             <div class="row"><div class="col-sm-8 col-sm-offset-2">
                                <div class="mbr-hero">
                                    <h1 class="mbr-hero__text">Slide 3</h1>
                                    <p class="mbr-hero__subtext">Choose from the large selection of latest pre-made blocks - jumbotrons, hero images, parallax scrolling, video backgrounds, hamburger menu, sticky header and more.</p>
                                </div>
                                <div class="mbr-buttons btn-inverse mbr-buttons--center"><a class="mbr-buttons__btn btn btn-lg btn-danger" href="http://mobirise.com">FOR WINDOWS</a> <a class="mbr-buttons__btn btn btn-lg btn-default" href="http://mobirise.com">FOR MAC</a></div>
                            </div></div> -->
                        </div>
                    </div>
                </div>
                <div class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--bg-adapted item dark center mbr-section--full-height" style="background-image: url(https://static.pexels.com/photos/11519/pexels-photo-11519-large.jpeg);">
                    <div class="mbr-box__magnet mbr-box__magnet--sm-padding">
                        <div class=" container">
                            
<!--                             <div class="row"><div class="col-sm-8 col-sm-offset-2">
                                <div class="mbr-hero">
                                    <h1 class="mbr-hero__text">Slide 3</h1>
                                    <p class="mbr-hero__subtext">Choose from the large selection of latest pre-made blocks - jumbotrons, hero images, parallax scrolling, video backgrounds, hamburger menu, sticky header and more.</p>
                                </div>
                                <div class="mbr-buttons btn-inverse mbr-buttons--center"><a class="mbr-buttons__btn btn btn-lg btn-danger" href="http://mobirise.com">FOR WINDOWS</a> <a class="mbr-buttons__btn btn btn-lg btn-default" href="http://mobirise.com">FOR MAC</a></div>
                            </div></div> -->
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</section>
</div>