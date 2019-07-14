<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*, smp.cd.freeboard.model.FreeBoardDTO" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="board/css/bootstrap.css">
</head>
<body>
<div class="container">
<table class="table table-hover">
	<thead>
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>날짜</th>
		<th>조회수</th>
	</tr>
	</thead>
	<tbody>
	<tr>
		<td>1</td>
		<td>테스트</td>
		<td>조으창</td>
		<td>2019.06.07</td>
		<td>0</td>
	</tr>
	<tr>
		<td>1</td>
		<td>테스트</td>
		<td>조으창</td>
		<td>2019.06.07</td>
		<td>0</td>
	</tr>
	<tr>
		<td>1</td>
		<td>테스트</td>
		<td>조으창</td>
		<td>2019.06.07</td>
		<td>0</td>
	</tr>
	</tbody>
</table>
<hr/>
	<a class="btn btn-default pull-right">글쓰기</a>
	<div class="text-center">
		<ul class="pagination">
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
		</ul>
	</div>

<script src="js/jquery-3.4.1.js"></script>
<script src="js/bootstrap.js"></script>
</div>
</body>
</html>