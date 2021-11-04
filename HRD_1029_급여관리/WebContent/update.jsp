<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적조회</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<section>
		<div>
			<h2>성적조회</h2>
		</div>
		<div style="height: 400px; overflow: auto">
			<table border="1" width="800" style="margin:0 auto">
				<tr>
					<th>사원번호</th>
					<th>사원명</th>
					<th>부서번호</th>
					<th>입사일자</th>
					<th>사원상태코드</th>
					<th>사원상태명</th>
						<select name="">
							<option value="1"
								<%=EMPLOYEE_STATUS.equals("1")?"selected":"" %>>입사</option>
							<option value="2"
								<%=EMPLOYEE_STATUS.contains("2")?"selected":"" %>>퇴사</option>
							<option value="3"
								<%=EMPLOYEE_STATUS.contains("3")?"selected":"" %>>휴직</option>
						</select>
				</tr>
				<%
				sql   = " "; 
				sql  += " "; 
			
				rs =stmt.executeQuery(sql);
			
				while(rs.next()){ //한 줄이 아니라 여러 줄이라서 
				%>
					<tr align="center">
						<td><%=rs.getInt(1) %></td> 
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getInt(3) %></td>
						<td><%=rs.getDate(4) %></td>
						<td><%=rs.getString(5) %></td>
						<td><%=rs.getString(6) %></td>
					</tr> 
				<%	
				}
				%>
								
				<tr>
					<th colspan="2">
						<input type="submit" value="등록" onclick="check(); return false">
						<input type="button" value="조회" onclick="location='select.jsp'">
					</th>	
				 </tr>
				
			</table>
		</div>
    </section>
	<%@include file="footer.jsp"%>
</body>
</html>


















