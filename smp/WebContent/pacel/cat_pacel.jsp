<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<head>
<meta charset="UTF-8">
<title>with Pet -Cat</title>

<link rel="stylesheet" href="main/assets/css/vendor18d6.css?v=20181219">
<link rel="stylesheet" href="main/assets/css/app18d6.css?v=20181219">

<script src="main/assets/js/vendor18d6.js?v=20181219"></script>

<script src="main/assets/js/app18d6.js?v=20181219"></script>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(window).scroll(function() {
			if ($(this).scrollTop() > 200) {
				$('.site-footer__logo').fadeIn();
			} else {
				$('.site-footer__logo').fadeOut();
			}
		});
		$('.site-footer__logo').click(function() {
			$('html, body').animate({
				scrollTop : 0
			}, 400);
			return false;
		});
	});
</script>

<style>
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	vertical-align: baseline;
}

.subWrap {
	clear: both;
	width: 1200px;
	height: auto;
	overflow: hidden;
	margin: 57px auto;
}

.title {
	width: 1200px;
	height: 37px;
	font-weight: bold;
	margin-bottom: 10px;
}

.title .big {
	float: left;
	font-size: 28px;
	padding-bottom: 13px; /*border-bottom:2px solid #000000;*/
	letter-spacing: -2px;
	color: #f07600;
}

.title .small {
	float: left;
	font-size: 15px;
	padding: 10px 2px 16px 20px;
	border-bottom: 2px solid #fca61f;
	color: #fca61f;
}

.searchBar {
	width: 700px;
	height: 45px;
	overflow: hidden;
	float: right;
	text-align: right;
}

.searchBar select {
	vertical-align: middle;
	width: 180px;
	height: 45px;
	border: 1px solid #fca61f;
	font-size: 15px;
	color: #fca61f;
}

.searchBar input {
	vertical-align: middle;
	width: 60px;
	height: 45px;
	background: #fca61f;
	color: white;
	border: none;
	font-weight: bold;
	font-size: 14px;
	line-height: 30px;
}

.dogList {
	width: 1200px;
	height: auto;
	padding-top: 10px;
	overflow: hidden;
}

.dogList ul {
	display: block;
	width: 1200px;
	height: auto;
	overflow: hidden;
}

.dogList ul li {
	display: block;
	float: left;
	width: 285px;
	height: 240px;
	position: relative;
	padding-right: 20px;
	margin-bottom: 20px;
}

.dogList ul li:nth-child(4n+0) {
	padding-right: 0px;
}

.dogList ul li a {
	display: block;
	width: 100%;
	height: 200px;
	color: white;
}

.dogList ul li .gradation {
	width: 285px;
	height: 30px;
	text-align: center;
	font-size: 14px;
	font-weight: bold;
	line-height: 28px;
	color: #fca61f;
}

.dogList ul li .price {
	text-align: center;
	font-weight: bold;
	color: #0174DF;
	font-size: 14px;
}

.dogList .paging {
	width: 1200px;
	height: 42px;
	text-align: center;
	padding-top: 20px;
}

.dogList .paging a {
	display: inline-block;
	width: 40px;
	height: 40px;
	line-height: 40px;
	text-aling: center;
	font-size: 14px;
	color: #fca61f;
	border: 1px solid #fca61f;
	border-right: none;
	margin-right: -4px;
}

.dogList .paging a:last-child {
	border-right: 1px solid #3a619c;
}

.dogList .paging a.on {
	background: #3a619c;
	color: white;
}

.dogList .paging02 {
	width: 1200px;
	height: 42px;
	text-align: center;
	padding-top: 20px;
}

.dogList .paging02 a {
	display: inline-block;
	width: 40px;
	height: 40px;
	line-height: 40px;
	text-aling: center;
	font-size: 14px;
	color: #fca61f;
	border: 1px solid #fca61f;
	border-right: none;
	margin-right: -4px;
}

.dogList .paging02 a:last-child {
	border-right: 1px solid #fca61f;
}

.dogList .paging02 a.on {
	background: #fca61f;
	color: white;
}

.paging {
	width: 1200px;
	height: 42px;
	text-align: center;
	padding-top: 20px;
}

.paging a {
	display: inline-block;
	width: 40px;
	height: 40px;
	line-height: 40px;
	text-aling: center;
	font-size: 14px;
	color: #fca61f;
	border: 1px solid #fca61f;
	border-right: none;
	margin-right: -4px;
}

.paging a:last-child {
	border-right: 1px solid #fca61f;
}

.paging a.on {
	background: #fca61f;
	color: white;
}

.button {
	background-color: #fca61f;
	border: none;
	color: white;
	padding: 13px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	font-weight: bold;
	margin: 0 auto;
	cursor: pointer;
}
</style>
</head>
<body id="hazzys-main" class="hazzys-main">


	<header class="site-header">
		<div class="site-header__content">
			<div class="site-header__logo-etc">
				<h1 class="site-header__logo">
					<a href="index.jsp" class="site-header__logo-link"> </a>
				</h1>
				<nav class="site-header__etc">
					<ul class="site-header__etc-container">
					<%
						String id = null;
						if (session.getAttribute("id") != null) {
							id = (String) session.getAttribute("id");
						}
						if(id != null){
					%>
					<li class="site-header__etc-item"><p style="font-size:20px; font-family: 'Hanna'; color: #004AEA;"
						class="site-header__etc-link site-header__etc-link--login">
							<%=id %>님</p></li>
					<li class="site-header__etc-item"><a href="mem.do?m=logout"
						class="site-header__etc-link site-header__etc-link--join">
							LOGOUT </a></li>
					<%
						} else {
					%>
					<li class="site-header__etc-item"><a href="mem.do?m=login"
						class="site-header__etc-link site-header__etc-link--login">
							LOGIN </a></li>
					<li class="site-header__etc-item"><a href="mem.do"
						class="site-header__etc-link site-header__etc-link--join">
							JOIN </a></li>
					<% 
						}
					%>
					</ul>
				</nav>
			</div>

			<div class="site-header__menu">
				<div class="site-header__menu-container">
					<nav class="site-header__menu-box">
						<ul class="site-header__menu-items">
							<li class="site-header__menu-item site-header__menu-item--men">
								<div class="site-header__menu-main">
									<a href="cmc.do" class="site-header__menu-main-link"> <span
										class="site-header__menu-main-text"> introduce </span>
									</a>
								</div>

							</li>
							<li class="site-header__menu-item site-header__menu-item--women">
								<div class="site-header__menu-main">
									<a href="cmc.do?m=pacel" class="site-header__menu-main-link">
										<span class="site-header__menu-main-text"> parcel out </span>
									</a>
								</div>

							</li>
							<li class="site-header__menu-item site-header__menu-item--acc">
								<div class="site-header__menu-main">
									<a href="" class="site-header__menu-main-link"> <span
										class="site-header__menu-main-text"> pet goods </span>
									</a>
								</div>

							</li>
							<li class="site-header__menu-item site-header__menu-item--golf">
								<div class="site-header__menu-main">
									<a href="" class="site-header__menu-main-link"> <span
										class="site-header__menu-main-text"> Free board </span>
									</a>
								</div>

							</li>
							<li class="site-header__menu-item site-header__menu-item--beauty">
								<div class="site-header__menu-main">
									<a href="cmc.do?m=backg" class="site-header__menu-main-link"> <span
										class="site-header__menu-main-text"> background </span>
									</a>
								</div>

							</li>
							<li>
								<div>
									<form name="f" action="" method="post">
										<input type="text" name="is_keyword" class="iText" value="" />
										<span class="submit"><input type="submit"
											value="search" /></span>
									</form>
								</div>
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<section class="hazzys-container">
		<section class="hazzys-main__visul-banner visual-banner">
        <div class="visual-banner__wrap">

            <div class="visual-banner__item">
                <a href="cmc.do" class="visual-banner__link">
                    <figure class="visual-banner__figure">
                        <span class="visual-banner__image" style="background-image: url('main/upload/banner/cat_introduce.jpg')"></span>
                    </figure>
                    <h1 id="text">
   						 INTRODUCE
  					</h1>
                </a>
            </div>
            <div class="visual-banner__item">
                <a href="cmc.do?m=pacel" class="visual-banner__link">
                    <figure class="visual-banner__figure">
                        <span class="visual-banner__image" style="background-image: url('main/upload/banner/cat_parcel.jpg')"></span>
                    </figure>
                    <h1 id="text">
   						 PARCEL OUT
  					</h1>
                </a>
            </div>
            <div class="visual-banner__item">
                <a href="cmc.do" class="visual-banner__link">
                    <figure class="visual-banner__figure">
                        <span class="visual-banner__image" style="background-image: url('main/upload/banner/petgoods.jpg')"></span>
                    </figure>
                    <h1 id="text">
   						 PET GOODS
  					</h1>
                </a>
            </div>
            <div class="visual-banner__item">
                <a href="cmc.do" class="visual-banner__link">
                    <figure class="visual-banner__figure">
                        <span class="visual-banner__image" style="background-image: url('main/upload/banner/freeboard.jpg')"></span>
                    </figure>
                    <h1 id="text">
   						 FREE BOARD
  					</h1>
                </a>
            </div>
            <div class="visual-banner__item">
                <a href="cmc.do?m=backg" class="visual-banner__link">
                    <figure class="visual-banner__figure">
                        <span class="visual-banner__image" style="background-image: url('main/upload/banner/cat_background.jpg')"></span>
                    </figure>
                    <h1 id="text">
   						 BACKGROUND
  					</h1>
                </a>
            </div>
            </div>
        <div class="visua-banner__controls">
            <button type="button" class="visual-banner__control visual-banner__control--prev">
                <span class="visual-banner__control-text">PREV</span>
            </button>
            <button type="button" class="visual-banner__control visual-banner__control--next">
                <span class="visual-banner__control-text">NEXT</span>
            </button>
        </div>
    </section>

		<!-- 각자 업무 영역 시작 -->
		<div class="subWrap">
			<div class="section01">
				<div class="title">
					<div class="big">분양 게시판</div>
					<div class="small">귀여운 고양이들이 여러분들을 기다리고 있습니다!</div> 
					<span><a href="#" class="button">글쓰기</a></span>
				</div>
				<!-- title -->
				<form method="get" name="form" action="#" style="margin: 0px;">
					<INPUT TYPE="hidden" NAME="gubun" VALUE="2"> <INPUT
						TYPE="hidden" NAME="orderKey" VALUE=""> <INPUT
						TYPE="hidden" NAME="pageSize" VALUE="20">

					<div class="searchBar">
						<select name="priceEx">
							<option value="">크기: 전체</option>
							<option value="1">소형냥</option>
							<option value="5">중형냥</option>
							<option value="6">대형냥</option>
						</select> <select name="sType">
							<option value="">성별: 전체</option>
							<option value="1">수컷</option>
							<option value="2">암컷</option>
						</select> <input type="submit" value="검색" style="cursor: pointer";></input>
					</div>
					<!-- searchBar -->
				</form>

				<div class="dogList">
					<ul>
						<li><a href=''> <img
								src="http://www.thedogs.co.kr/data/__dog/20190306/5c7f1945eca4b.jpg__CROP285x200">
						</a>
							<div class="gradation">블랙퍼그</div>
							<div class="price">상담</div></li>
						<li><a href='sellView3004.html?m_no=760'> <img
								src="http://www.thedogs.co.kr/data/__dog/20190305/5c7e00ff6cd5f.jpg__CROP285x200">
						</a>
							<div class="gradation">포메라니안</div>
							<div class="price">상담</div></li>
						<li><a href=''> <img
								src="http://www.thedogs.co.kr/data/__dog/20190305/5c7de9778bae3.jpg__CROP285x200">
						</a>
							<div class="gradation">슈나우저</div>
							<div class="price">상담</div></li>
						<li><a href=''> <img
								src="http://www.thedogs.co.kr/data/__dog/20190220/5c6ce6fb44fca.jpg__CROP285x200">
						</a>
							<div class="gradation">시바견</div>
							<div class="price">상담</div></li>
						<li><a href=''> <img
								src="http://www.thedogs.co.kr/data/__dog/20190121/5c454e76000c0.jpg__CROP285x200">
						</a>
							<div class="gradation">치와와</div>
							<div class="price">상담</div></li>
						<li><a href=''> <img
								src="http://www.thedogs.co.kr/data/__dog/20190121/5c453701efd1f.jpg__CROP285x200">
						</a>
							<div class="gradation">말티즈</div>
							<div class="price">상담</div></li>
						<li><a href=''> <img
								src="http://www.thedogs.co.kr/data/__dog/20190121/5c452fc523a5d.jpg__CROP285x200">
						</a>
							<div class="gradation">패키니즈</div>
							<div class="price">상담</div></li>
						<li><a href=''> <img
								src="http://www.thedogs.co.kr/data/__dog/20190121/5c451f2f70771.jpg__CROP285x200">
						</a>
							<div class="gradation">포메라니안</div>
							<div class="price">상담</div></li>
						<li><a href=''> <img
								src="http://www.thedogs.co.kr/data/__dog/20190121/5c451f5268bde.jpg__CROP285x200">
						</a>
							<div class="gradation">푸들</div>
							<div class="price">상담</div></li>
						<li><a href=''> <img
								src="http://www.thedogs.co.kr/data/__dog/20190121/5c451c73e3d9c.jpg__CROP285x200">
						</a>
							<div class="gradation">포메라니안</div>
							<div class="price">상담</div></li>
						<li><a href=''> <img
								src="http://www.thedogs.co.kr/data/__dog/20190118/5c419639055a0.jpg__CROP285x200">
						</a>
							<div class="gradation">포메라니안</div>
							<div class="price">상담</div></li>
						<li><a href=''> <img
								src="http://www.thedogs.co.kr/data/__dog/20190118/5c4195131613f.jpg__CROP285x200">
						</a>
							<div class="gradation">푸들</div>
							<div class="price">상담</div></li>
						<li><a href=''> <img
								src="http://www.thedogs.co.kr/data/__dog/20190118/5c4190308f6a5.jpg__CROP285x200">
						</a>
							<div class="gradation">장모치와와</div>
							<div class="price">상담</div></li>
						<li><a href=''> <img
								src="http://www.thedogs.co.kr/data/__dog/20190118/5c41842b1291b.jpg__CROP285x200">
						</a>
							<div class="gradation">닥스훈트</div>
							<div class="price">상담</div></li>
						<li><a href=''> <img
								src="http://www.thedogs.co.kr/data/__dog/20190118/5c417e99e2a2e.jpg__CROP285x200">
						</a>
							<div class="gradation">포메라니안</div>
							<div class="price">상담</div></li>
						<li><a href=''> <img
								src="http://www.thedogs.co.kr/data/__dog/20190117/5c40258ce2d44.jpg__CROP285x200">
						</a>
							<div class="gradation">비숑프리제</div>
							<div class="price">상담</div></li>
						<li><a href=''> <img
								src="http://www.thedogs.co.kr/data/__dog/20190117/5c401f302a4f5.jpg__CROP285x200">
						</a>
							<div class="gradation">말티즈</div>
							<div class="price">상담</div></li>
						<li><a href=''> <img
								src="http://www.thedogs.co.kr/data/__dog/20181211/5c0f7dfdbe52e.jpg__CROP285x200">
						</a>
							<div class="gradation">포메라니안</div>
							<div class="price">상담</div></li>
						<li><a href=''> <img
								src="http://www.thedogs.co.kr/data/__dog/20181120/5bf3723b89b7b.jpg__CROP285x200">
						</a>
							<div class="gradation">포메라니안</div>
							<div class="price">상담</div></li>
						<li><a href=''> <img
								src="http://www.thedogs.co.kr/data/__dog/20181023/5bcebf1c54c01.jpg__CROP285x200">
						</a>
							<div class="gradation">블루멀포메라니안</div>
							<div class="price">상담</div></li>
					</ul>

					<div class="paging" style="display: none;">
						<a href="">&lt;&lt;</a><a href="#">&lt;</a> 
						<a href="" class='on'>1</a>
						<a href='#'>&gt;</a><a href="">&gt;&gt;</a>
					</div>
					<!-- paging -->



					<div class="paging02">
						<a href="" class='on'>1</a>
					</div>
					<!-- paging -->


				</div>
				<!-- dogList -->
			</div>
			<!-- section01 -->
		</div>
		<!-- subWrap -->



		<!-- 각자 업무 영역 끝 -->
		<footer class="site-footer" style="clear: both;">
			<div class="site-footer__inner">
				<a href="#" class="site-footer__logo"> <img
					class="site-footer__logo-image"
					src="main/assets/images/common/logo_small.png">
				</a>
			</div>
			<div class="site-footer__copy">@ 2019 with Pet. All Rights
				Reserved.</div>
		</footer>
</body>
</html>