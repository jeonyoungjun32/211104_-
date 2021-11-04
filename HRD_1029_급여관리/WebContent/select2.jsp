<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>급여조회</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<section>
		<div>
			<h2>급여조회</h2>
		</div>
		<div style="height: 400px; overflow: auto">
			<table border="1" width="800" style="margin:0 auto">
				<tr>
					<th>근무년월</th>
				</tr>
				<%
				
			
				rs =stmt.executeQuery(sql);
			
				while(rs.next()){ 
				%>
					<tr align="center">
						<td><%=rs.getInt(1) %></td> 
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getInt(3) %></td>
					</tr> 
				<%	
				}
				%>				
				
				
				
				<tr>
					<th>사원번호</th>
				</tr>
				<%
				sql   = "select EMPLOYEE_NO"; 
				sql  += " from EMPLOYEE_TBL_13"; 
			
				rs =stmt.executeQuery(sql);
			
				while(rs.next()){ 
				%>
					<tr align="center">
						<td><%=rs.getInt(1) %></td> 
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getInt(3) %></td>
					</tr> 
				<%	
				}
				%>
				
				
				
				
				
				
				<tr>
					<th>급여</th>
				</tr>
				<%
				sql   = " "; 
				sql  += " "; 
			
				rs =stmt.executeQuery(sql);
			
				while(rs.next()){ 
				%>
					<tr align="center">
						<td><%=rs.getInt(1) %></td> 
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getInt(3) %></td>
					</tr> 
				<%	
				}
				%>
				
			</table>
		</div>
    </section>
	<%@include file="footer.jsp"%>
</body>
</html>



















