<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>급여관리 프로그램 select</title>
</head>
<body>
<%@include file="header.jsp" %>
<section>
<br>
	<table>
		<tr>
			<th>사원번호</th>
			<th>사원명</th>
			<th>부서번호</th>
			<th>입사일자</th>
			<th>사원상태코드</th>
			<th>사원상태명</th>
		</tr>
		<%
//		sql = "select  EMPLOYEE_NO, EMPLOYEE_NAME, DEPT_NO, to_char(HIER_DATE,'yyyy-mm-dd'), EMPLOYEE_STATUS, decode(EMPLOYEE_STATUS,'1','입사','2','퇴사','3','휴직') from EMPLOYEE_TBL_13";
		sql = "select  EMPLOYEE_NO, EMPLOYEE_NAME, DEPT_NO, to_char(HIER_DATE,'yyyy-mm-dd'), EMPLOYEE_STATUS, EMPLOYEE_STATUS from EMPLOYEE_TBL_13";
		rs = st.executeQuery(sql);
		
		while(rs.next()) {
		%>
		<tr>
			<td><a href="update.jsp?EMPLOYEE_NO=<%=rs.getInt(1)%>"><%=rs.getInt(1) %></a> </td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<%--<td><%=rs.getString(6) %></td> --%>
			
			<%--이방법은 프로젝트에 썻다 --%>
			<%if (rs.getString(6).equalsIgnoreCase("1")) { %>
			<td>입사</td>
			<%} else if (rs.getString(6).equalsIgnoreCase("2")) {%>
			<td>퇴사</td>
			<%} else if (rs.getString(6).equalsIgnoreCase("3")) {%>
			<td>휴직</td>
			<%} %>
		</tr>
		<%} %>
	</table>

</section>
</body>
</html>