<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*, smp.cd.freeboard.model.FreeBoardDTO" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<head>
<meta charset="UTF-8">
<title>with Pet -Dog </title>
<link rel="stylesheet" href="board/css/bootstrap.css">
<link rel="stylesheet" href="main/assets/css/vendor18d6.css?v=20181219">
<link rel="stylesheet" href="main/assets/css/app18d6.css?v=20181219">
<script src="main/assets/js/vendor18d6.js?v=20181219"></script>

<script src="main/assets/js/app18d6.js?v=20181219"></script>

<style>
.introduce{
	text-align: center;
}

@-webkit-keyframes zoom {
    from {-webkit-transform:scale(0)} 
    to {-webkit-transform:scale(1)}
}

@keyframes zoom {
    from {transform:scale(0)} 
    to {transform:scale(1)}
}
</style>

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
                    <li class="site-header__etc-item">
                                <a href=""
                                   class="site-header__etc-link site-header__etc-link--login">
                                    LOGIN
                                </a>
                            </li>
                            <li class="site-header__etc-item">
                                <a href=""
                                   class="site-header__etc-link site-header__etc-link--join">
                                    JOIN
                                </a>
                            </li>
                </ul>
            </nav>
        </div>

        <div class="site-header__menu">
            <div class="site-header__menu-container">
                <nav class="site-header__menu-box">
                    <ul class="site-header__menu-items">
                        <li class="site-header__menu-item site-header__menu-item--men">
                            <div class="site-header__menu-main">
                                <a href="" class="site-header__menu-main-link">
                                    <span class="site-header__menu-main-text">
                                         introduce
                                    </span>
                                </a>
                            </div>
                            
                        </li>
                        <li class="site-header__menu-item site-header__menu-item--women">
                            <div class="site-header__menu-main">
                                <a href="" class="site-header__menu-main-link">
                                    <span class="site-header__menu-main-text">
                                        parcel out
                                    </span>
                                </a>
                            </div>
                            
                        </li>
                        <li class="site-header__menu-item site-header__menu-item--acc">
                            <div class="site-header__menu-main">
                                <a href="" class="site-header__menu-main-link">
                                    <span class="site-header__menu-main-text">
                                        pet goods
                                    </span>
                                </a>
                            </div>
                            
                        </li>
                        <li class="site-header__menu-item site-header__menu-item--golf">
                            <div class="site-header__menu-main">
                                <a href="./board.do" class="site-header__menu-main-link">
                                    <span class="site-header__menu-main-text">
                                        Free board
                                    </span>
                                </a>
                            </div>
                            
                        </li>
                        <li class="site-header__menu-item site-header__menu-item--beauty">
                            <div class="site-header__menu-main">
                                <a href="" class="site-header__menu-main-link">
                                    <span class="site-header__menu-main-text">
                                        background
                                    </span>
                                </a>
                            </div>
                            
                        </li>
                        <li>
                            <div>
                                <form name="f" action="" method="post">
									<input type="text" name="is_keyword" class="iText" value="" />
									<span class="submit"><input type="submit" value="search" /></span>	
								</form>
                            </div>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</header><section class="hazzys-container">
    <section class="hazzys-main__visul-banner visual-banner">
        <div class="visual-banner__wrap">

            <div class="visual-banner__item">
                <a href="" class="visual-banner__link">
                    <figure class="visual-banner__figure">
                        <span class="visual-banner__image" style="background-image: url('main/upload/banner/dog_introduce.jpg')"></span>
                    </figure>
                    <h1 id="text">
   						 INTRODUCE
  					</h1>
                </a>
            </div>
            <div class="visual-banner__item">
                <a href="" class="visual-banner__link">
                    <figure class="visual-banner__figure">
                        <span class="visual-banner__image" style="background-image: url('main/upload/banner/parcel.jpg')"></span>
                    </figure>
                    <h1 id="text">
   						 PARCEL OUT
  					</h1>
                </a>
            </div>
            <div class="visual-banner__item">
                <a href="" class="visual-banner__link">
                    <figure class="visual-banner__figure">
                        <span class="visual-banner__image" style="background-image: url('main/upload/banner/petgoods.jpg')"></span>
                    </figure>
                    <h1 id="text">
   						 PET GOODS
  					</h1>
                </a>
            </div>
            <div class="visual-banner__item">
                <a href="" class="visual-banner__link">
                    <figure class="visual-banner__figure">
                        <span class="visual-banner__image" style="background-image: url('main/upload/banner/freeboard.jpg')"></span>
                    </figure>
                    <h1 id="text">
   						 FREE BOARD
  					</h1>
                </a>
            </div>
            <div class="visual-banner__item">
                <a href="" class="visual-banner__link">
                    <figure class="visual-banner__figure">
                        <span class="visual-banner__image" style="background-image: url('main/upload/banner/dog_background.jpg')"></span>
                    </figure>
                    <h1 id="text">
   						 BACKGROUND
  					</h1>
                </a>
            </div>
            </div>
            <!--  
        <div class="visua-banner__controls">
            <button type="button" class="visual-banner__control visual-banner__control--prev">
                <span class="visual-banner__control-text">PREV</span>
            </button>
            <button type="button" class="visual-banner__control visual-banner__control--next">
                <span class="visual-banner__control-text">NEXT</span>
            </button>
        </div>
        -->
    </section>
    <br>
    <br>
<div class="container">
<style>
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
   padding: 10px 710px 5px 20px;
   border-bottom: 2px solid #fca61f;
   color: #fca61f;
}
.button {
   background-color: #fca61f;
   border: none;
   color: white;
   padding: 9px 20px;
   text-align: center;
   text-decoration: none;
   display: inline-block;
   font-size: 14px;
   font-weight: bold;
   margin: 0 auto;
   cursor: pointer;
}</style>
<%
	FreeBoardDTO dto = (FreeBoardDTO)request.getAttribute("dto");
%>
<div class="title">
               <div class="big">자유 게시판</div>
               <div class="small">회원만 글 작성 가능합니다.</div>
               <span><a href="board.do?m=write_form" class="button">글쓰기</a></span>
            </div>
<form name='f' method='post' action='board.do?m=update&db_seq=<%=dto.getDb_seq()%>'>
<input type='hidden' name='db_seq' value='<%=dto.getDb_seq()%>'>
<input type='hidden' name='id' value='<%=dto.getId()%>'>
<table table class="table table-hover"><tr>
<td width='30%' align='center'>글쓴이</td>
<td align='center'><input type='text' name='id' size='60' value='<%=dto.getId()%>' disabled></td>
</tr>
<tr>
<td width='30%' align='center'>글제목</td>
<td align='center'><input type='text' name='db_subject' size='60' value='<%=dto.getDb_subject()%>'></td>
</tr>
<tr>
<td width='30%' align='center'>글내용</td>
<td align='center'><textarea name='db_content' rows='5' cols='53'><%=dto.getDb_content()%></textarea></td>
</tr>
<tr>
<td colspan='2' align='center'>
<input type='submit' value='수정'>
</td>
</tr>
</table>
</form>
</table>	  
	  <br><hr width="600" color="Maroon" size="2" noshade><br>
<hr/>

<script src="js/jquery-3.4.1.js"></script>
<script src="js/bootstrap.js"></script>
</div>

<footer class="site-footer" style="clear:both;">
    <div class="site-footer__inner">
        <a href="" class="site-footer__logo">
            <img class="site-footer__logo-image" src="main/assets/images/common/logo_small.png">
        </a>
    </div>
    <div class="site-footer__copy">
        @ 2019 with Pet. All Rights Reserved.
    </div>
</footer></body>
</html>