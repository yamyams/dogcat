<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<head>
<meta charset="UTF-8">
<title>with Pet -Cat </title>

<link rel="stylesheet" href="../main/assets/css/vendor18d6.css?v=20181219">
<link rel="stylesheet" href="../main/assets/css/app18d6.css?v=20181219">
  
<script src="../main/assets/js/vendor18d6.js?v=20181219"></script>

<script src="../main/assets/js/app18d6.js?v=20181219"></script>
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
                <a href="../index.jsp" class="site-header__logo-link">
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
                                <a href="../cmc.do" class="site-header__menu-main-link">
                                    <span class="site-header__menu-main-text">
                                         introduce
                                    </span>
                                </a>
                            </div>
                            
                        </li>
                        <li class="site-header__menu-item site-header__menu-item--women">
                            <div class="site-header__menu-main">
                                <a href="../cmc.do?m=pacel" class="site-header__menu-main-link">
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
                                <a href="" class="site-header__menu-main-link">
                                    <span class="site-header__menu-main-text">
                                        Free board
                                    </span>
                                </a>
                            </div>
                            
                        </li>
                        <li class="site-header__menu-item site-header__menu-item--beauty">
                            <div class="site-header__menu-main">
                                <a href="../cmc.do?m=backg" class="site-header__menu-main-link">
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
                <a href="../cmc.do" class="visual-banner__link">
                    <figure class="visual-banner__figure">
                        <span class="visual-banner__image" style="background-image: url('../main/upload/banner/cat_introduce.jpg')"></span>
                    </figure>
                    <h1 id="text">
   						 INTRODUCE
  					</h1>
                </a>
            </div>
            <div class="visual-banner__item">
                <a href="../cmc.do?m=pacel" class="visual-banner__link">
                    <figure class="visual-banner__figure">
                        <span class="visual-banner__image" style="background-image: url('../main/upload/banner/cat_parcel.jpg')"></span>
                    </figure>
                    <h1 id="text">
   						 PARCEL OUT
  					</h1>
                </a>
            </div>
            <div class="visual-banner__item">
                <a href="" class="visual-banner__link">
                    <figure class="visual-banner__figure">
                        <span class="visual-banner__image" style="background-image: url('../main/upload/banner/petgoods.jpg')"></span>
                    </figure>
                    <h1 id="text">
   						 PET GOODS
  					</h1>
                </a>
            </div>
            <div class="visual-banner__item">
                <a href="" class="visual-banner__link">
                    <figure class="visual-banner__figure">
                        <span class="visual-banner__image" style="background-image: url('../main/upload/banner/freeboard.jpg')"></span>
                    </figure>
                    <h1 id="text">
   						 FREE BOARD
  					</h1>
                </a>
            </div>
            <div class="visual-banner__item">
                <a href="../cmc.do?m=backg" class="visual-banner__link">
                    <figure class="visual-banner__figure">
                        <span class="visual-banner__image" style="background-image: url('../main/upload/banner/cat_background.jpg')"></span>
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
<style>
* {
  box-sizing: border-box;
}

body {
  margin: 0;
  padding: 0;
  font-family: Arial;
}

.header {
  text-align: center;
   font-size:large; 
  padding-top: 70px;
}

.ma{
	padding-top: 30px;
}
.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  padding: 50px;
}

/* Create four equal columns that sits next to each other */
.column {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
  max-width: 25%;
  padding: 15px;
}

.column img {
  margin-top: 30px;
  vertical-align: middle;
  width: 100%;
}

/* Responsive layout - makes a two column-layout instead of four columns */
@media screen and (max-width: 800px) {
  .column {
    -ms-flex: 50%;
    flex: 50%;
    max-width: 50%;
  }
}

/* Responsive layout - makes the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column {
    -ms-flex: 100%;
    flex: 100%;
    max-width: 100%;
  }
  }
  
}
</style>
<body>

<!-- Header -->
<div class="header">
  <h1>  Cat pictures</h1>
    <div class="ma">
  <p>Need some cute cat pictures? All WithPet images are 100% free to download and use.</p>
  	</div>
</div>

<!-- Photo Grid -->
<div class="row"> 
  <div class="column">
<a download="cat1" href="../backgimage/cat1.jpg" title="cat1">
    <img alt="cat1" src="../backgimage/cat1.jpg">
</a>        
<a download="cat7" href="../backgimage/cat7.jpg" title="cat7">
    <img alt="cat7" src="../backgimage/cat7.jpg">
</a>    
<a download="cat3" href="../backgimage/cat3.jpg" title="cat3">
    <img alt="cat3" src="../backgimage/cat3.jpg">
</a>        
<a download="cat4" href="../backgimage/cat4.jpg" title="cat4">
    <img alt="cat4" src="../backgimage/cat4.jpg">
</a>    
<a download="cat5" href="../backgimage/cat5.jpg" title="cat5">
    <img alt="cat5" src="../backgimage/cat5.jpg">
</a>        
<a download="cat6" href="../backgimage/cat6.jpg" title="cat6">
    <img alt="cat6" src="../backgimage/cat6.jpg">
</a>    
<a download="cat7" href="../backgimage/cat7.jpg" title="cat7">
    <img alt="cat7" src="../backgimage/cat7.jpg">
</a>        
<a download="cat8" href="../backgimage/cat8.jpg" title="cat8">
    <img alt="cat8" src="../backgimage/cat8.jpg">
</a>    
<a download="cat9" href="../backgimage/cat9.jpg" title="cat9">
    <img alt="cat9" src="../backgimage/cat9.jpg">
</a>        
<a download="cat10" href="../backgimage/cat10.jpg" title="cat10">
    <img alt="cat10" src="../backgimage/cat10.jpg">
</a>    
<a download="cat11" href="../backgimage/cat11.jpg" title="cat11">
    <img alt="cat11" src="../backgimage/cat11.jpg">
</a>         

  </div>
  <div class="column">
  <a download="cat12" href="../backgimage/cat12.jpg" title="cat12">
    <img alt="cat12" src="../backgimage/cat12.jpg">
</a>        
<a download="cat13" href="../backgimage/cat13.jpg" title="cat13">
    <img alt="cat13" src="../backgimage/cat13.jpg">
</a>    
<a download="cat14" href="../backgimage/cat14.jpg" title="cat14">
    <img alt="cat14" src="../backgimage/cat14.jpg">
</a>        
<a download="cat15" href="../backgimage/cat15.jpg" title="cat15">
    <img alt="cat15" src="../backgimage/cat15.jpg">
</a>    
<a download="cat16" href="../backgimage/cat16.jpg" title="cat16">
    <img alt="cat16" src="../backgimage/cat16.jpg">
</a>        
<a download="cat17" href="../backgimage/cat17.jpg" title="cat17">
    <img alt="cat17" src="../backgimage/cat17.jpg">
</a>    
<a download="cat18" href="../backgimage/cat18.jpg" title="cat18">
    <img alt="cat18" src="../backgimage/cat18.jpg">
</a>        
<a download="cat19" href="../backgimage/cat19.png" title="cat19">
    <img alt="cat19" src="../backgimage/cat19.png">
</a>    
<a download="cat20" href="../backgimage/cat20.jpg" title="cat20">
    <img alt="cat20" src="../backgimage/cat20.jpg">
</a>        
<a download="cat21" href="../backgimage/cat21.jpg" title="cat21">
    <img alt="cat21" src="../backgimage/cat21.jpg">
</a>    
<a download="cat22" href="../backgimage/cat22.jpg" title="cat22">
    <img alt="cat22" src="../backgimage/cat22.jpg">
</a>         
<a download="cat45" href="../backgimage/cat45.jpg" title="cat45">
    <img alt="cat45" src="../backgimage/cat45.jpg">
</a>         
  </div>   
    
  <div class="column">
  <a download="cat23" href="../backgimage/cat23.jpg" title="cat23">
    <img alt="cat23" src="../backgimage/cat23.jpg">
</a>        
<a download="cat24" href="../backgimage/cat24.jpg" title="cat24">
    <img alt="cat24" src="../backgimage/cat24.jpg">
</a>    
<a download="cat25" href="../backgimage/cat25.jpg" title="cat25">
    <img alt="cat25" src="../backgimage/cat25.jpg">
</a>        
<a download="cat26" href="../backgimage/cat26.jpg" title="cat26">
    <img alt="cat26" src="../backgimage/cat26.jpg">
</a>    
<a download="cat27" href="../backgimage/cat27.jpg" title="cat27">
    <img alt="cat27" src="../backgimage/cat27.jpg">
</a>        
<a download="cat28" href="../backgimage/cat28.jpg" title="cat28">
    <img alt="cat28" src="../backgimage/cat28.jpg">
</a>    
<a download="cat29" href="../backgimage/cat29.jpg" title="cat29">
    <img alt="cat29" src="../backgimage/cat29.jpg">
</a>        
<a download="cat30" href="../backgimage/cat30.jpg" title="cat30">
    <img alt="cat30" src="../backgimage/cat30.jpg">
</a>    
<a download="cat31" href="../backgimage/cat31.jpg" title="cat31">
    <img alt="cat31" src="../backgimage/cat31.jpg">
</a>        
<a download="cat32" href="../backgimage/cat32.jpg" title="cat32">
    <img alt="cat32" src="../backgimage/cat32.jpg">
</a>    
<a download="cat33" href="../backgimage/cat33.jpg" title="cat33">
    <img alt="cat33" src="../backgimage/cat33.jpg">
</a>         
<a download="cat46" href="../backgimage/cat46.jpg" title="cat46">
    <img alt="cat46" src="../backgimage/cat46.jpg">
</a>         
  </div>   
  
  <div class="column">
  <a download="cat34" href="../backgimage/cat34.jpg" title="cat34">
    <img alt="cat34" src="../backgimage/cat34.jpg">
</a>        
<a download="cat35" href="../backgimage/cat35.jpg" title="cat35">
    <img alt="cat35" src="../backgimage/cat35.jpg">
</a>    
<a download="cat36" href="../backgimage/cat36.jpg" title="cat36">
    <img alt="cat36" src="../backgimage/cat36.jpg">
</a>        
<a download="cat37" href="../backgimage/cat37.jpg" title="cat37">
    <img alt="cat37" src="../backgimage/cat37.jpg">
</a>    
<a download="cat38" href="../backgimage/cat38.jpg" title="cat38">
    <img alt="cat38" src="../backgimage/cat38.jpg">
</a>        
<a download="cat39" href="../backgimage/cat39.jpg" title="cat39">
    <img alt="cat39" src="../backgimage/cat39.jpg">
</a>    
<a download="cat40" href="../backgimage/cat40.jpg" title="cat40">
    <img alt="cat40" src="../backgimage/cat40.jpg">
</a>        
<a download="cat41" href="../backgimage/cat41.jpg" title="cat41">
    <img alt="cat41" src="../backgimage/cat41.jpg">
</a>    
<a download="cat42" href="../backgimage/cat42.jpg" title="cat42">
    <img alt="cat42" src="../backgimage/cat42.jpg">
</a>        
<a download="cat43" href="../backgimage/cat43.jpg" title="cat43">
    <img alt="cat43" src="../backgimage/cat43.jpg">
</a>    
<a download="cat44" href="../backgimage/cat44.jpg" title="cat44">
    <img alt="cat44" src="../backgimage/cat44.jpg">
</a>         
<a download="cat47" href="../backgimage/cat47.jpg" title="cat47">
    <img alt="cat47" src="../backgimage/cat47.jpg">
</a>         
<a download="cat48" href="../backgimage/cat48.jpg" title="cat48">
    <img alt="cat48" src="../backgimage/cat48.jpg">
</a>    
<a download="cat49" href="../backgimage/cat49.jpg" title="cat49">
    <img alt="cat49" src="../backgimage/cat49.jpg">
</a>           
  </div>   
    
</div>

</body>
	<!-- 각자 업무 영역 끝 -->
<footer class="site-footer" style="clear:both;">
    <div class="site-footer__inner">
        <a href="#" class="site-footer__logo">
            <img class="site-footer__logo-image" src="../main/assets/images/common/logo_small.png">
        </a>
    </div>
    <div class="site-footer__copy">
        @ 2019 with Pet. All Rights Reserved.
    </div>
</footer></body>
</html>