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
					<li class="site-header__etc-item"><a href="../mem.do?m=logout"
						class="site-header__etc-link site-header__etc-link--join">
							LOGOUT </a></li>
					<%
						} else {
					%>
					<li class="site-header__etc-item"><a href="../mem.do?m=login"
						class="site-header__etc-link site-header__etc-link--login">
							LOGIN </a></li>
					<li class="site-header__etc-item"><a href="../mem.do"
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
                                <a href="dgc.do" class="site-header__menu-main-link">
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
                                <a href="dmc.do?m=backg" class="site-header__menu-main-link">
                                    <span class="site-header__menu-main-text">
                                        background
                                    </span>
                                </a>
                            </div>
                            
                        </li>
                        <li>
                            <div>
                                <form name="f" action="" method="post">
									<input type="text" name="is_keyword" class="iText" value="" style="height:31px; width:420px;"/>
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
                <a href="dgc.do" class="visual-banner__link">
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
	  <table class="table table-hover">
		<tr>
		  <td align="center" width="15%"><b>순번</b></td>
		  <td align="center" width="35%">&nbsp;<%=dto.getDb_seq() %></td>
		  <td align="center" width="15%"><b>날짜</b></td>
		  <td align="center" width="35%">
			&nbsp;<%=dto.getDb_wdate() %>
		  </td>
		</tr>
		<tr>
		  <td align="center" width="15%"><b>글쓴이</b></td>
		  <td align="center" width="35%">
			&nbsp; <%=dto.getId() %>
	      </td>
		  <td align="center" width="15%"><b>추천수</b></td>
		  <td align="center" width="35%">
		    &nbsp;<%=dto.getDb_recommend() %>
		  </td>
		</tr>
		<tr>
		  <td colspan="3">&nbsp;</td>
		  <td><b>조회수</b> : <%=dto.getDb_readnum()%></td>
		</tr>
		<tr>
		  <td colspan="2"><b>제목</b> : <%=dto.getDb_subject() %></td>
		  <td colspan="2"><b>첨부파일</b>:

               <a href="board2/">
               <%=dto.getDb_filename() %>
			   </a>

		  </td>
		</tr>
		<tr>

		  <td colspan="4"><b>내용</b> : <%=dto.getDb_content() %></td>
		</tr>
		<tr>
		  <td colspan="4" align="center">
		    <hr width="550" color="Maroon" size="2" noshade>
			<!----------------- re 변화 2 ---------------->
			<a href="board.do?m=list">목록</a> | 
			<a href="board.do?m=update_form&db_seq=<%=dto.getDb_seq()%>">편집</a> | 
			<a href="board.do?m=delete&db_seq=<%=dto.getDb_seq()%>">삭제</a> | 
		    <!-- <a href=
	"reboard_rewrite.jsp?idx=13&ref=9&lev=0&sunbun=0&cp=1">
			  답변
		    </a> -->
			
			<!-------------------------------------------->
		  </td>
		</tr>
		<tr align="center" id="ta">
		  <td>
		     리플달기 
		  </td>

          <script language="javascript">
              loginJs = false;
              function check()
              {
                  if(!loginJs)
                  {
                      yesNo = confirm(
                         "먼저 로그인을 하셔야 합니다. 로그인 페이지로 이동할까요?");
                      if(yesNo)
                      {
                         location.href="/M2Project/login.do";
  
                      }
                      
                      return;
                  }
                  else
                  {
                      if(f1.content_reply.value == "" || f1.pwd_reply.value == "")
	                  {
	                      alert("리플 내용과 비밀번호를 모두 입력하셔야 합니다.");
	                      return;
	                  }
                  	  f1.submit();
                  }
              }
          </script>
		  <form name="f1" action="rb-reply-save.do">
			  <td colspan="3">
			     <input type="hidden" name="method" value="replySave">
				 <input type="text" name="content_reply" size="50">
				 &nbsp;&nbsp;비밀번호
				 <input type="text" name="pwd_reply" size="10">
				 <input type="button" value="등록" onclick="check()">
			  </td>
		  </form>
		</tr>
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