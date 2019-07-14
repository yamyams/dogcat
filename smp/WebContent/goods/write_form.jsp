<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/custom.css">
	<title>with Pet</title>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</head>
<body>
<body style="background-color: #fca61f;">
	<div class="container" align="center">
	<br/><br/>
		<form method="post" action="../dgc.do?m=write">
			<table class="table table-bordered table-hover" style="width:600px; text-align: center; border: 2px solid #fca61f">
				<thead>
					<tr>
						<th colspan="2" style="background-color: #fca61f; color: white; text-align: center;">
						<h4 style="font-size:24px;font-weight: bold;">Welcome to with Pet!</h4></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width:150px; background-color: #fca61f; color: white; text-align: center;">
						<h5 style="font-size:24px;font-weight: bold;">Subject</h5></td>
						<td><input class="form-control" type="text" id="dg_subject" name="dg_subject" maxLength="20" placeholder="제목을 입력해주세요"></td>
					</tr>
					<tr>
						<td colspan="2" style="background-color: #fca61f; color: white; text-align: center;">
						<h5 style="font-size:24px;font-weight: bold;">Content</h5></td>
					</tr>
					<tr>
						<td colspan="2">
						<textarea style="height: 300px;" class="form-control" id="dg_content" name="dg_content" maxLength="1300"  placeholder="내용을 입력해주세요"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align:left" colspan="1"><input class="btn btn-primary pull-right" type="submit" value="글쓰기" 
						style="background-color: #fca61f; border: 2px solid #fff; width:100px; height:50px"></td>
					</tr>
				</tbody>
			</table>
		</form>
		<a href="../dgc.do" style="display:inline-block; text-align:center; vertical-align:middle; text-decoration:none; 
		font-size:18px; color:#fff; border:2px solid #fff; width:500px; height:50px; line-height:38px;">여기를 누르면 전 페이지로 돌아가요 ^^</a>
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
					<div class="modal-content <%if(messageType.equals("알리미")) out.println("panel-warning"); else out.println("panel-success"); %>">
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
</body>
</html>