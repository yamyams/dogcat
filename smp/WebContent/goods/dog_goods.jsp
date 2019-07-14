<%@page import="smp.cd.dog_goods.model.DogGoodsDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<head>
<meta charset="UTF-8">
<title>with Pet -Dog </title>
<link rel="stylesheet" href="main/assets/css/vendor18d6.css?v=20181219">
<link rel="stylesheet" href="main/assets/css/app18d6.css?v=20181219">
<script src="main/assets/js/vendor18d6.js?v=20181219"></script>
<script src="main/assets/js/app18d6.js?v=20181219"></script>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$( document ).ready( function() {
    $( window ).scroll( function() {
      if ( $( this ).scrollTop() > 200 ) {
        $( '.site-footer__logo' ).fadeIn();
      } else {
        $( '.site-footer__logo' ).fadeOut();
      }
    } );
    $( '.site-footer__logo' ).click( function() {
      $( 'html, body' ).animate( { scrollTop : 0 }, 400 );
      return false;
    } );
  } );
</script>
</head>
<body id="hazzys-main" class="hazzys-main">


<header class="site-header">
    <div class="site-header__content">
        <div class="site-header__logo-etc">
            <h1 class="site-header__logo">
                <a href="index.jsp" class="site-header__logo-link">
                </a>
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
                                <a href="dmc.do" class="site-header__menu-main-link">
                                    <span class="site-header__menu-main-text">
                                         introduce
                                    </span>
                                </a>
                            </div>
                            
                        </li>
                        <li class="site-header__menu-item site-header__menu-item--women">
                            <div class="site-header__menu-main">
                                <a href="dmc.do?m=pacel" class="site-header__menu-main-link">
                                    <span class="site-header__menu-main-text">
                                        parcel out
                                    </span>
                                </a>
                            </div>
                            
                        </li>
                        <li class="site-header__menu-item site-header__menu-item--acc">
                            <div class="site-header__menu-main">
                                <a href="dgc.do?m=goods" class="site-header__menu-main-link">
                                    <span class="site-header__menu-main-text">
                                        pet goods
                                    </span>
                                </a>
                            </div>
                            
                        </li>
                        <li class="site-header__menu-item site-header__menu-item--golf">
                            <div class="site-header__menu-main">
                                <a href="board.do" class="site-header__menu-main-link">
                                    <span class="site-header__menu-main-text">
                                        Free board
                                    </span>
                                </a>
                            </div>
                            
                        </li>
                        <li class="site-header__menu-item site-header__menu-item--beauty">
                            <div class="site-header__menu-main">
                                <a href="dmc.do?m=backg" class="site-header__menu-main-link">
                                    <span class="site-header__menu-main-text">
                                        background
                                    </span>
                                </a>
                            </div>
                            
                        </li>
                        <li>
                            <div>
                                <form name="f" action="dgc.do" method="get">
									<input type="text" name="is_keyword" class="iText" value=""/>
									<span class="submit"><input type="submit" value="search" /></span>	
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
                <a href="dmc.do" class="visual-banner__link">
                    <figure class="visual-banner__figure">
                        <span class="visual-banner__image" style="background-image: url('main/upload/banner/dog_introduce.jpg')"></span>
                    </figure>
                    <h1 id="text">
   						 INTRODUCE
  					</h1>
                </a>
            </div>
            <div class="visual-banner__item">
                <a href="dmc.do?m=pacel" class="visual-banner__link">
                    <figure class="visual-banner__figure">
                        <span class="visual-banner__image" style="background-image: url('main/upload/banner/parcel.jpg')"></span>
                    </figure>
                    <h1 id="text">
   						 PARCEL OUT
  					</h1>
                </a>
            </div>
            <div class="visual-banner__item">
                <a href="dgc.do?m=goods" class="visual-banner__link">
                    <figure class="visual-banner__figure">
                        <span class="visual-banner__image" style="background-image: url('main/upload/banner/petgoods.jpg')"></span>
                    </figure>
                    <h1 id="text">
   						 PET GOODS
  					</h1>
                </a>
            </div>
            <div class="visual-banner__item">
                <a href="board.do" class="visual-banner__link">
                    <figure class="visual-banner__figure">
                        <span class="visual-banner__image" style="background-image: url('main/upload/banner/freeboard.jpg')"></span>
                    </figure>
                    <h1 id="text">
   						 FREE BOARD
  					</h1>
                </a>
            </div>
            <div class="visual-banner__item">
                <a href="dmc.do?m=backg" class="visual-banner__link">
                    <figure class="visual-banner__figure">
                        <span class="visual-banner__image" style="background-image: url('main/upload/banner/dog_background.jpg')"></span>
                    </figure>
                    <h1 id="text">
   						 BACKGROUND
  					</h1>
                </a>
            </div>
            </div>
    </section>
	
    
    <!-- 각자 업무 영역 시작 -->
	<div class="body-top" style="height: 1000px; background:url('goods/background.jpg') no-repeat; ">
		<div><h2 style="text-align:center; font-size: 40px; color:#fff; margin-bottom: 30px;"><br/>다양한 애완용품에 대해 이야기하는 곳입니다</h2></div>
		<%
		DogGoodsDTO info = (DogGoodsDTO)request.getAttribute("info");
		if(info !=null){
		%>
			<div>
			<table style="width:60%; height:80%; margin:auto; text-align: center;">
				<tr>
					<th colspan="3" style="font-size: 25px; color:#FF0303;">제목</th>
				</tr>
				<tr>
					<td colspan="3" style="font-size: 30px; color:#fff;"><%=info.getDg_subject() %></td>
				</tr>
				<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
				<tr>
					<th colspan="1" style="font-size: 25px; color:#004AEA; width: 33%;">날짜</th>
					<th colspan="1" style="font-size: 25px; color:#004AEA; width: 33%;">작성자</th>
					<th colspan="1" style="font-size: 25px; color:#004AEA; width: 33%;">조회수</th>
				</tr>
				<tr>
					<td colspan="1" style="font-size: 30px; color:#fff;"><%=info.getDg_wdate() %></td>
					<td colspan="1" style="font-size: 30px; color:#fff;"><%=info.getId() %></td>
					<td colspan="1" style="font-size: 30px; color:#fff;"><%=info.getDg_readnum() %></td>
				</tr>
				<tr>
				</tr>
				<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
				<tr>
					<th colspan="3" style="font-size: 25px; color:#004AEA;">내용</th>
				</tr>
				<tr>
					<td colspan="3" style="font-size: 18px; color:#fff;"><%=info.getDg_content() %></td>
				</tr>
				<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
			</table>
			<%
				String remove = null;
				remove = (String) request.getAttribute("remove");
				if(remove != null){
			%>
			<a href="dgc.do?m=delete&dg_seq=<%=info.getDg_seq() %>" style="display:inline-block; text-align:center; vertical-align:middle; text-decoration:none; margin-left: 65%; background-color: #DF013A;
			font-size:20px; color:#fff; border:3px solid #fff; width:100px; height:50px; line-height:50px; margin-bottom: 50px; font-family: 'Hanna';">
			삭제</a>
			<%
				}
			%>
			
		</div>
		<%
		}else{
		
			if (session.getAttribute("id") != null) {
				id = (String) session.getAttribute("id");
			}
			if(id != null){
		%>
			<a href="dgc.do?m=wirte_form" style="display:inline-block; text-align:center; vertical-align:middle; text-decoration:none; margin-left: 50%; background-color: #004AEA;
			font-size:20px; color:#fff; border:3px solid #fff; width:400px; height:50px; line-height:50px; margin-bottom: 50px; font-family: 'Hanna';">
			유용한 정보를 서로 공유해요! (글쓰기 버튼)</a>
		<%
			}else{
		%>
			<a href="mem.do?m=login" style="display:inline-block; text-align:center; vertical-align:middle; text-decoration:none; margin-left: 50%; background-color: #DF013A;
			font-size:20px; color:#fff; border:3px solid #fff; width:400px; height:50px; line-height:50px; margin-bottom: 50px; font-family: 'Hanna';">
			글쓰기는 회원만 가능합니다 (로그인 버튼)</a>
		<%
			}
		%>
		<div>
			<table style="width:60%; height:80%; margin:auto; text-align: center;">
				<tr>
					<th style="font-size: 30px; color:#fff;">번호</th>
					<th style="font-size: 30px; color:#fff; width:40%;">제목</th>
					<th style="font-size: 30px; color:#fff;">작성자</th>
					<th style="font-size: 30px; color:#fff;">등록일</th>
					<th style="font-size: 30px; color:#fff;">조회수</th>
				</tr>
				<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
				<%
					ArrayList<DogGoodsDTO> list = (ArrayList<DogGoodsDTO>)request.getAttribute("list");
					for(DogGoodsDTO dto : list){
				%>
				<tr>
					<td style="font-size: 18px; color:#004AEA;"><%=dto.getRownum() %></td>
					<td style="font-size: 18px; color:#004AEA;">
						<a href="dgc.do?m=info&dg_seq=<%=dto.getDg_seq()%>" class="site-header__menu-main-text" style="font-size: 18px; color:#81F7BE;"><%=dto.getDg_subject() %></a>
					</td>
					<td style="font-size: 18px; color:#004AEA;" ><%=dto.getId() %></td>
					<td style="font-size: 18px; color:#004AEA;"><%=dto.getDg_wdate() %></td>
					<td style="font-size: 18px; color:#004AEA;"><%=dto.getDg_readnum() %></td>
				</tr>
				<%
					}
		}
				%>
			</table>
		</div>
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
	<!-- 각자 업무 영역 끝 -->
<footer class="site-footer" style="clear:both;">
    <div class="site-footer__inner">
        <a href="#" class="site-footer__logo">
            <img class="site-footer__logo-image" src="main/assets/images/common/logo_small.png">
        </a>
    </div>
    <div class="site-footer__copy">
        @ 2019 with Pet. All Rights Reserved.
    </div>
</footer></body>
</html>