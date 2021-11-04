<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="dbcon.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>급여관리 프로그램</title>
<style type="text/css">
ul{
	list-style: none;
}
nav li {
list-style: none;
	float: left;
	margin: 20px;
}

</style>
</head>
<body>
	
	<header>
		<h2 style="text-align: center;">급여관리</h2>
	<nav>
		<ul>
			<li><a href="insert.jsp">사업등록</a> </li>
			<li><a href="select.jsp">사원목록조회/수정</a> </li>
			<li><a href="select2.jsp">급여조회</a> </li>
			<li><a href="index.jsp">홈으로</a> </li>
		</ul>
	 </nav>
	</header>
