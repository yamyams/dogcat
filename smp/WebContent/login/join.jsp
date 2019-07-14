<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/custom.css">
	<title>with Pet Join</title>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script type="text/javascript">
		function registerCheckFunction(){
			var id = $('#id').val();
			$.ajax({
				type: 'POST',
				url: '../mem.do?m=joinCheck',	//check!
				data: {id : id},
				success: function(result){
					if(result == 1){
						$('#checkMessage').html('존재하지 않는 ID입니다');
						$('#checkType').attr('class', 'modal-content panel-success');
					}else{
						$('#checkMessage').html('사용할 수 없는 ID입니다');
						$('#checkType').attr('class', 'modal-content panel-warning');
					}
					$('#checkModal').modal("show");
				}
			})
		}
		function passwordCheckFunction(){
			var pwd1 = $('#pwd1').val();
			var pwd2 = $('#pwd2').val();
			if(pwd1 != pwd2){
				$('#passwordCheckMessage').html('비밀번호가 서로 일치하지 않습니다');
			}else{
				$('#passwordCheckMessage').html('');
			}
		}
	</script>
</head>
<body style="background-color: #fca61f;">
	<div class="container" align="center">
	<br/><br/><br/><br/><br/><br/>
		<form method="post" action="../mem.do?m=join">
			<table class="table table-bordered table-hover" style="width:800px; text-align: center; border: 2px solid #fca61f">
				<thead>
					<tr>
						<th colspan="3" style="background-color: #fca61f; color: white; text-align: center;">
						<h4 style="font-size:24px;font-weight: bold;">Welcome to with Pet!</h4></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width:300px; background-color: #fca61f; color: white; text-align: center;">
						<h5 style="font-size:18px;font-weight: bold;">ID</h5></td>
						<td><input class="form-control" type="text" id="id" name="id" maxLength="20" placeholder="ID를 입력해주세요"></td>
						<td style="width:110px; ">
						<button class="btn btn-primary" onclick="registerCheckFunction();" type="button" style="background-color: #fca61f; border: 2px solid #fff">중복 확인</button>
						</td>
					</tr>
					<tr>
						<td style="background-color: #fca61f; color: white; text-align: center;">
						<h5 style="font-size:18px;font-weight: bold;">Password</h5></td>
						<td colspan="2"><input class="form-control" type="password" onkeyup="passwordCheckFunction();" id="pwd1" name="pwd1" maxLength="20"  placeholder="Password를 입력해주세요"></td>
					</tr>
					<tr>
						<td style="background-color: #fca61f; color: white; text-align: center;">
						<h5 style="font-size:18px;font-weight: bold;">Confirm Password</h5></td>
						<td colspan="2"><input class="form-control" type="password" onkeyup="passwordCheckFunction();" id="pwd2" name="pwd2" maxLength="20" placeholder="Password를 확인해주세요"></td>
					</tr>
					<tr>
						<td style="background-color: #fca61f; color: white; text-align: center;">
						<h5 style="font-size:18px;font-weight: bold;">Your Name</h5></td>
						<td colspan="2"><input class="form-control" type="text" id="m_name" name="m_name" maxLength="15" placeholder="이름을 입력해주세요"></td>
					</tr>
					<tr>
						<td style="background-color: #fca61f; color: white; text-align: center;">
						<h5 style="font-size:16px;font-weight: bold;">Phone Number (*Add a Hyphen ' - ')</h5></td>
						<td colspan="2"><input class="form-control" type="text" id="m_phone" name="m_phone" maxLength="15" placeholder="연락처를 입력해주세요"></td>
					</tr>
					<tr>
						<td style="background-color: #fca61f; color: white; text-align: center;">
						<h5 style="font-size:18px;font-weight: bold;">Your Email</h5></td>
						<td colspan="2"><input class="form-control" type="text" id="m_email" name="m_email" maxLength="30" placeholder="Email을 입력해주세요"></td>
					</tr>
					<tr>
						<td colspan="2" style="background-color: #fca61f; color: white; text-align: center;">
						<h5 style="font-size:24px;font-weight: bold;">당신이 우리의 with Pet 사이트에 가입을 하시다니... 정말 감격스러워요!</h5></td>
						<td style="text-align:left" colspan="1"><input class="btn btn-primary pull-right" type="submit" value="회원가입" 
						style="background-color: #fca61f; border: 2px solid #fff; width:100px; height:50px"></td>
					</tr>
					<tr>
						<td colspan="3" style="background-color: #fca61f; color: white; text-align: center;">
						<h5 style="color:red; font-size:20px;" id="passwordCheckMessage"></h5></td>
					</tr>
				</tbody>
			</table>
		</form>
		<a href="../index.jsp" style="display:inline-block; text-align:center; vertical-align:middle; text-decoration:none; 
		font-size:20px; color:#fff; border:2px solid #fff; width:800px; height:50px; line-height:38px; font-family: 'Hanna';">
		잠깐만요! 설마 뒤로 가시게요? &nbsp;&nbsp;&nbsp;어째서죠? &nbsp;&nbsp;&nbsp;저희는 주민번호도, 주소도 요구하지 않는데...</a>
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
</body>
</html>