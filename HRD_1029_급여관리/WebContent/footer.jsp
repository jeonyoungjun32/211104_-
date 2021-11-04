<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<footer>
		HRDKOREA Copyrightⓒ 2016 All right reserved. Human Resources Development Service of Korea.
	</footer>
</body>
</html>

<%
try{
	if(con != null) con.close();
	if(stmt != null) stmt.close();
	if(rs != null) rs.close();
	if(ps != null) ps.close();
}catch(Exception e){
	e.printStackTrace();
}

%>


