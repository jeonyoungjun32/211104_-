<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="dbcon.jsp" %>

<%
try{
	sql="insert into student_tbl values(?,?,?,?,?)";
	
	ps= con.prepareStatement(sql);
	
	ps.setInt(1,Integer.parseInt(request.getParameter("EMPLOYEE_NO")));
	ps.setString(2, request.getParameter("EMPLOYEE_NAME"));
	ps.setString(3, request.getParameter("DEPT_NO"));
	ps.setString(4, request.getParameter("HIRE_DATE"));
	ps.setString(5, request.getParameter("EMPLOYEE_STATUS"));
	
	ps.executeUpdate();//업데이트 성공하면 1리턴 받음
%>
	<!-- 성공 알림창 -->
	<script>
		alert("사원등록이 완료되었습니다");
		location.href="insert.jsp";//★★문제를 읽고 이동하는 경로 확인하기  (예)location.href="select.jsp";
		//location="insert.jsp" 위와 동일
		//history.back(); - ★★반드시 문제 확인하고 넣을지 판단!()
		
	</script>
	
<%
}catch(Exception e){//업데이트 실패 => 예외 발생
	%>
	<!-- 실패 알림창 -->
	<script>
		alert("사원등록이 실패했습니다");
		history.back();//또는 history.go(-1);
	</script>

<%
}finally{
	try{
		if(con != null) con.close();
		if(stmt != null) stmt.close();
		if(ps != null) ps.close();
		if(rs != null) rs.close();		
	}catch(Exception e){
		e.printStackTrace();
	}
}

%>








