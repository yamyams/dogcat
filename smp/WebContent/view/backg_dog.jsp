<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> -->
<!doctype html>
<head>
<meta charset="UTF-8">
<title>with Pet -Dog </title>

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
                                <a href="../dmc.do" class="site-header__menu-main-link">
                                    <span class="site-header__menu-main-text">
                                         introduce
                                    </span>
                                </a>
                            </div>
                            
                        </li>
                        <li class="site-header__menu-item site-header__menu-item--women">
                            <div class="site-header__menu-main">
                                <a href="../dmc.do?m=pacel" class="site-header__menu-main-link">
                                    <span class="site-header__menu-main-text">
                                        parcel out
                                    </span>
                                </a>
                            </div>
                            
                        </li>
                        <li class="site-header__menu-item site-header__menu-item--acc">
                            <div class="site-header__menu-main">
                                <a href="../dgc.do" class="site-header__menu-main-link">
                                    <span class="site-header__menu-main-text">
                                        pet goods
                                    </span>
                                </a>
                            </div>
                            
                        </li>
                        <li class="site-header__menu-item site-header__menu-item--golf">
                            <div class="site-header__menu-main">
                                <a href="../board.do" class="site-header__menu-main-link">
                                    <span class="site-header__menu-main-text">
                                        Free board
                                    </span>
                                </a>
                            </div>
                            
                        </li>
                        <li class="site-header__menu-item site-header__menu-item--beauty">
                            <div class="site-header__menu-main">
                                <a href="../dmc.do?m=backg" class="site-header__menu-main-link">
                                    <span class="site-header__menu-main-text">
                                        background
                                    </span>
                                </a>
                            </div>
                            
                        </li>
                        <li>
                            <div>
                                <form name="f" action="" method="get">
									<input type="text" name="is_keyword" class="iText" value=""  style="height:31px; width:420px;"/>
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
                <a href="../dmc.do" class="visual-banner__link">
                    <figure class="visual-banner__figure">
                        <span class="visual-banner__image" style="background-image: url('../main/upload/banner/dog_introduce.jpg')"></span>
                    </figure>
                    <h1 id="text">
   						 INTRODUCE
  					</h1>
                </a>
            </div>
            <div class="visual-banner__item">
                <a href="../dmc.do?m=pacel" class="visual-banner__link">
                    <figure class="visual-banner__figure">
                        <span class="visual-banner__image" style="background-image: url('../main/upload/banner/parcel.jpg')"></span>
                    </figure>
                    <h1 id="text">
   						 PARCEL OUT
  					</h1>
                </a>
            </div>
            <div class="visual-banner__item">
                <a href="../dgc.do" class="visual-banner__link">
                    <figure class="visual-banner__figure">
                        <span class="visual-banner__image" style="background-image: url('../main/upload/banner/petgoods.jpg')"></span>
                    </figure>
                    <h1 id="text">
   						 PET GOODS
  					</h1>
                </a>
            </div>
            <div class="visual-banner__item">
                <a href="../board.do" class="visual-banner__link">
                    <figure class="visual-banner__figure">
                        <span class="visual-banner__image" style="background-image: url('../main/upload/banner/freeboard.jpg')"></span>
                    </figure>
                    <h1 id="text">
   						 FREE BOARD
  					</h1>
                </a>
            </div>
            <div class="visual-banner__item">
                <a href="../dmc.do?m=backg" class="visual-banner__link">
                    <figure class="visual-banner__figure">
                        <span class="visual-banner__image" style="background-image: url('../main/upload/banner/dog_background.jpg')"></span>
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
  <h1>  Dog pictures</h1>
      <div class="ma">
  <p>Need some cute dog pictures? All WithPet images are 100% free to download and use.</p>
  	</div>
</div>

<!-- Photo Grid -->
<div class="row"> 
  <div class="column">
<a download="dog1" href="../backgimage/dog1.jpg" title="dog1">
    <img alt="dog1" src="../backgimage/dog1.jpg">
</a>        
<a download="dog2" href="../backgimage/dog2.jpg" title="dog2">
    <img alt="dog2" src="../backgimage/dog2.jpg">
</a>    
<a download="dog3" href="../backgimage/dog3.jpg" title="dog3">
    <img alt="dog3" src="../backgimage/dog3.jpg">
</a>        
<a download="dog4" href="../backgimage/dog4.jpg" title="dog4">
    <img alt="dog4" src="../backgimage/dog4.jpg">
</a>    
<a download="dog5" href="../backgimage/dog5.jpg" title="dog5">
    <img alt="dog5" src="../backgimage/dog5.jpg">
</a>        
<a download="dog6" href="../backgimage/dog6.jpg" title="dog6">
    <img alt="dog6" src="../backgimage/dog6.jpg">
</a>    
<a download="dog26" href="../backgimage/dog26.jpg" title="dog26">
    <img alt="dog26" src="../backgimage/dog26.jpg">
</a>        
<a download="dog27" href="../backgimage/dog27.jpg" title="dog27">
    <img alt="dog27" src="../backgimage/dog27.jpg">
</a>    
<a download="dog28" href="../backgimage/dog28.jpg" title="dog28">
    <img alt="dog28" src="../backgimage/dog28.jpg">
</a>        
<a download="dog29" href="../backgimage/dog29.jpg" title="dog29">
    <img alt="dog29" src="../backgimage/dog29.jpg">
</a>    
<a download="dog30" href="../backgimage/dog30.jpg" title="dog30">
    <img alt="dog30" src="../backgimage/dog30.jpg">
</a>         
  </div>
  
  <div class="column">
  <a download="dog7" href="../backgimage/dog7.jpg" title="dog7">
    <img alt="dog7" src="../backgimage/dog7.jpg">
</a>        
<a download="dog8" href="../backgimage/dog8.jpg" title="dog8">
    <img alt="dog8" src="../backgimage/dog8.jpg">
</a>    
<a download="dog9" href="../backgimage/dog9.jpg" title="dog9">
    <img alt="dog9" src="../backgimage/dog9.jpg">
</a>        
<a download="dog10" href="../backgimage/dog10.jpg" title="dog10">
    <img alt="dog10" src="../backgimage/dog10.jpg">
</a>    
<a download="dog11" href="../backgimage/dog11.jpg" title="dog11">
    <img alt="dog11" src="../backgimage/dog11.jpg">
</a>        
<a download="dog12" href="../backgimage/dog12.jpg" title="dog12">
    <img alt="dog12" src="../backgimage/dog12.jpg">
</a>    
<a download="dog32" href="../backgimage/dog32.jpg" title="dog32">
    <img alt="dog32" src="../backgimage/dog32.jpg">
</a>        
<a download="dog33" href="../backgimage/dog33.jpg" title="dog33">
    <img alt="dog33" src="../backgimage/dog33.jpg">
</a>    
<a download="dog34" href="../backgimage/dog34.jpg" title="dog34">
    <img alt="dog34" src="../backgimage/dog34.jpg">
</a>        
<a download="dog35" href="../backgimage/dog35.jpg" title="dog35">
    <img alt="dog35" src="../backgimage/dog35.jpg">
</a>    
<a download="dog36" href="../backgimage/dog36.jpg" title="dog36">
    <img alt="dog36" src="../backgimage/dog36.jpg">
</a>         
<a download="dog41" href="../backgimage/dog41.jpg" title="dog41">
    <img alt="dog41" src="../backgimage/dog41.jpg">
</a>         
<a download="dog42" href="../backgimage/dog42.jpg" title="dog42">
    <img alt="dog42" src="../backgimage/dog42.jpg">
</a>    
<a download="dog43" href="../backgimage/dog43.jpg" title="dog43">
    <img alt="dog43" src="../backgimage/dog43.jpg">
</a>         
<a download="dog50" href="../backgimage/dog50.jpg" title="dog50">
    <img alt="dog50" src="../backgimage/dog50.jpg">
</a>         
  </div>   
    
  <div class="column">
  <a download="dog13" href="../backgimage/dog13.jpg" title="dog13">
    <img alt="dog13" src="../backgimage/dog13.jpg">
</a>        
<a download="dog14" href="../backgimage/dog14.jpg" title="dog14">
    <img alt="dog14" src="../backgimage/dog14.jpg">
</a>    
<a download="dog15" href="../backgimage/dog15.jpg" title="dog15">
    <img alt="dog15" src="../backgimage/dog15.jpg">
</a>        
<a download="dog16" href="../backgimage/dog16.jpg" title="dog16">
    <img alt="dog16" src="../backgimage/dog16.jpg">
</a>    
<a download="dog17" href="../backgimage/dog17.jpg" title="dog17">
    <img alt="dog17" src="../backgimage/dog17.jpg">
</a>        
<a download="dog18" href="../backgimage/dog18.jpg" title="dog18">
    <img alt="dog18" src="../backgimage/dog18.jpg">
</a>    
<a download="dog38" href="../backgimage/dog38.jpg" title="dog38">
    <img alt="dog38" src="../backgimage/dog38.jpg">
</a>        
<a download="dog39" href="../backgimage/dog39.jpg" title="dog39">
    <img alt="dog39" src="../backgimage/dog39.jpg">
</a>    
<a download="dog40" href="../backgimage/dog40.jpg" title="dog40">
    <img alt="dog40" src="../backgimage/dog40.jpg">
</a>        
<a download="dog49" href="../backgimage/dog49.jpg" title="dog49">
    <img alt="dog49" src="../backgimage/dog49.jpg">
</a>    
<a download="dog48" href="../backgimage/dog48.jpg" title="dog48">
    <img alt="dog48" src="../backgimage/dog48.jpg">
</a>         
<a download="dog44" href="../backgimage/dog44.jpg" title="dog44">
    <img alt="dog44" src="../backgimage/dog44.jpg">
</a>
<a download="dog45" href="../backgimage/dog45.jpg" title="dog45">
    <img alt="dog45" src="../backgimage/dog45.jpg">
</a>                  
  </div>   
  
  <div class="column">
  <a download="dog19" href="../backgimage/dog19.jpg" title="dog19">
    <img alt="dog19" src="../backgimage/dog19.jpg">
</a>        
<a download="dog20" href="../backgimage/dog20.jpg" title="dog20">
    <img alt="dog20" src="../backgimage/dog20.jpg">
</a>    
<a download="dog21" href="../backgimage/dog21.jpg" title="dog21">
    <img alt="dog21" src="../backgimage/dog21.jpg">
</a>        
<a download="dog22" href="../backgimage/dog22.jpg" title="dog22">
    <img alt="dog22" src="../backgimage/dog22.jpg">
</a>    
<a download="dog23" href="../backgimage/dog23.jpg" title="dog23">
    <img alt="dog23" src="../backgimage/dog23.jpg">
</a>        
<a download="dog24" href="../backgimage/dog24.jpg" title="dog24">
    <img alt="dog24" src="../backgimage/dog24.jpg">
</a>    
<a download="dog25" href="../backgimage/dog25.jpg" title="dog25">
    <img alt="dog25" src="../backgimage/dog25.jpg">
</a>        
<a download="dog31" href="../backgimage/dog31.jpg" title="dog31">
    <img alt="dog31" src="../backgimage/dog31.jpg">
</a>    
<a download="dog37" href="../backgimage/dog37.jpg" title="dog37">
    <img alt="dog37" src="../backgimage/dog37.jpg">
</a>        
<a download="dog46" href="../backgimage/dog46.jpg" title="dog46">
    <img alt="dog46" src="../backgimage/dog46.jpg">
</a>    
<a download="dog51" href="../backgimage/dog51.jpg" title="dog51">
    <img alt="dog51" src="../backgimage/dog51.jpg">
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