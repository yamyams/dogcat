<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<title>with Pet Intro Page</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="./intro/css/gate.css" />
	<link rel="stylesheet" href="./login/css/bootstrap.css">
	<link rel="stylesheet" href="./login/css/custom.css">
	<script type="text/javascript" src="./intro/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="./intro/js/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="./intro/js/jquery.easing.1.3.js"></script>
	
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="./login/js/bootstrap.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$(".text-box").each(function(i) {
				var obj = $(this);
				obj.on("mouseover", function(e) {
				//	e.stopPropagation();
					$(this).parent().addClass("on").end().next().animate({
						'opacity': 0.3
					}, 200);
					$("h1").addClass("on");
					/** 0811 삭제
					$(".gate-wrap").removeClass("on01 on02").addClass("on0"+(i+1));
					**/
		
					/** 0811 추가 **/
					$(".gate-back-wrap").eq(i).animate({
						opacity : 1
					},1000);
					$(".gate-back-wrap").eq(i).siblings(".gate-back-wrap").animate({
						opacity : 0
					},1000);
					/** e 0811 추가 **/
		
					$(".gate-wrap > div").addClass("back-hide");
					$(this).parent().parent().siblings().find("a").addClass("other");
				});
		
				obj.on("mouseout", function(e) {
					e.stopPropagation();
		
					$(this).parent().removeClass().end().next().removeAttr("style");
					$(this).parent().parent().siblings().find("a").removeClass("other");
				});
			});
		
				$(".back-out").on("mouseout", function(e) {
		
					$(".gate-wrap > div").removeClass("back-hide");
					$("h1").removeClass("on");
				});
		});
		</script>
</head>
<body>
	<div id="wrap">
		<h1 style="font-family:'Georgia' ">with PET</h1>
		<div class="gate-back-wrap on01"></div> <!-- 0811 추가 -->
		<div class="gate-back-wrap on02"></div> <!-- 0811 추가 -->
		<div class="gate-wrap">
			<div class="daemyung">
				<a href="dmc.do">
					<div class="text-box">
						<div>
							<div class="blank"></div>
							
							<h2>Dog<br><strong>강아지</strong></h2>
							<hr>
							<p><strong>당신의 심장을 녹여줄 애교 많은 </strong><span> 강아지들을<br> 만나보세요</span></p>
						</div>
					</div>
					<div class="back-dim"></div>
				</a>
			</div>
			<div class="shinevill">
				<a href="cmc.do">
					<div class="text-box">
						<div>
							<div class="blank"></div>
							
							<h2>Cat<br><strong>고양이</strong></h2>
							<hr>
							<p><strong>시크하고 카리스마 넘치는</strong><span> 고양이들을<br> 만나보세요</span></p>
						</div>
					</div>
					<div class="back-dim"></div>
				</a>
			</div>
			<div class="back-out"></div> <!-- 0811 추가 -->
		</div>
	</div>
	<%
		String messageContent = null;
		if(session.getAttribute("messageContent") != null){
			messageContent = (String) session.getAttribute("messageContent");
		}
		String messageType = null;
		if(session.getAttribute("messageType") != null){
			messageType = (String) session.getAttribute("messageType");
		}
		if(messageContent != null){
	%>
		<div class="modal fade" id="messageModal" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="vertical-alignment-helper">
				<div class="modal-dialog vertical-align-center">
					<div class="modal-content <%if(messageType.equals("Error!")) out.println("panel-warning"); else out.println("panel-success"); %>">
						<div class="modal-header panel-heading">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span>
								<span class="sr-only">Close</span>
							</button>
							<h4 class="modal-title">
								<%= messageType %>
							</h4>
						</div>
						<div class="modal-body">
							<%=messageContent %>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary" data-dismiss="modal" style="background-color: #fca61f; border: 2px solid #fff">확인</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			$('#messageModal').modal("show");
		</script>
	<%
		session.removeAttribute("messageContent");
		session.removeAttribute("messageType");
		}
	%>
	<div class="modal fade" id="checkModal" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="vertical-alignment-helper">
				<div class="modal-dialog vertical-align-center">
					<div id="checkType" class="modal-content panel-info">
						<div class="modal-header panel-heading">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span>
								<span class="sr-only">Close</span>
							</button>
							<h4 class="modal-title">
								확인 메세지
							</h4>
						</div>
						<div class="modal-body" id="checkMessage">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary" data-dismiss="modal" style="background-color: #fca61f; border: 2px solid #fff">확인</button>
						</div>
					</div>
				</div>
			</div>
		</div>
<script type="text/javascript">
$("iframe[name=google_conversion_frame]").hide();
</script>
</body>
</html>