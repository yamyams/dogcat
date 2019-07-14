<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
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

<c:forEach items="${list}" var="dto">
<style>
@import url(http://fonts.googleapis.com/earlyaccess/hanna.css);
*{
	font-family: 'Hanna';
}
.introduce{
	text-align: center;
}
ul{
    list-style:none;
    display:inline-block; display:inline; zoom:1;
}
#${dto.dog_variety} {
    float: left;
    margin: 50px;
    width: 200px; height: 200px;
    object-fit: cover;
    border-radius: 50%;
    cursor: pointer;
    transition: 0.3s;
}
#${dto.dog_variety}:hover {opacity: 0.7;}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    /* z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0, 0, 0); /* Fallback color */
    background-color: rgba(0, 0, 0, 0.8); /* Black w/ opacity */
}

/* Modal Content (Image) */
.modal-content {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 500px;
}

/* Caption of Modal Image (Image Text) - Same Width as the Image */
#caption {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 800px;
    text-align: center;
    color: #ccc;
    padding: 20px 0;
    height: auto;
    font-size: 15px;
}

/* Add Animation - Zoom in the Modal */
.modal-content, #caption { 
    -webkit-animation-name: zoom;
    -webkit-animation-duration: 0.6s;
    animation-name: zoom;
    animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
    from {-webkit-transform:scale(0)} 
    to {-webkit-transform:scale(1)}
}

@keyframes zoom {
    from {transform:scale(0)} 
    to {transform:scale(1)}
}

/* The Close Button */
.close {
    position: fixed;
    top: 15px;
    right: 35px;
    color: #fca61f;
    font-size: 40px;
    font-weight: bold;
    transition: 0.3s;
}

.close:hover,
.close:focus {
    color: #cc6600;
    text-decoration: none;
    cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
    .modal-content {
        width: 100%;
    }
}
</style>
</c:forEach>


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
                                <form name="f" action="dmc.do" method="get">
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
    
    <!-- 각자 업무 영역 시작 -->
    <c:forEach items="${list}" var="dto">
    <div class="introduce">
    	<ul>
			<li>
	            <img id="${dto.dog_variety }" src="${dto.dog_src }" alt="${dto.dog_variety}<br/><br/>
	            ${dto.dog_weight}<br/><br/>${dto.dog_furcolor}<br/><br/>${dto.dog_furtype}<br/><br/>${dto.dog_character}" width="300" height="200">
	        </li>
		</ul>
    </div>
    <!-- The Modal -->
	<div id="myModal" class="modal">
	  <!-- The Close Button -->
	  <span class="close" onclick="document.getElementById('myModal').style.display='none'">&times;</span>
	
	  <!-- Modal Content (The Image) -->
	  <img class="modal-content" id="img01">
	
	  <!-- Modal Caption (Image Text) -->
	  <div id="caption"></div>
	</div>
    
    <script>
		// Get the modal
		var modal = document.getElementById('myModal');
		
		// Get the image and insert it inside the modal - use its "alt" text as a caption
		var img = document.getElementById('${dto.dog_variety }');
		var modalImg = document.getElementById("img01");
		var captionText = document.getElementById("caption");
		img.onclick = function(){
		    modal.style.display = "block";
		    modalImg.src = this.src;
		    modalImg.alt = this.alt;
		    captionText.innerHTML = this.alt;
		}
		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];
		
		// When the user clicks on <span> (x), close the modal
		span.onclick = function() { 
		  modal.style.display = "none";
		}
</script>
</c:forEach>

	
	
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