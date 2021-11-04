<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbcon.jsp" %>
<%
sql ="insert into EMPLOYEE_TBL_13 values(?,?,?,?,?)";

try {
	pstmt = con.prepareStatement(sql);
	
	pstmt.setInt(1, Integer.parseInt(request.getParameter("EMPLOYEE_NO")));
	pstmt.setString(2, request.getParameter("EMPLOYEE_NAME"));
	pstmt.setString(3, request.getParameter("DEPT_NO"));
	pstmt.setString(4, request.getParameter("HIER_DATE"));
	pstmt.setString(5, request.getParameter("EMPLOYEE_STATUS"));
	
	pstmt.executeUpdate();
	
	%>
	<script type="text/javascript">
	alert("사원등록이 성공했습니다.");
	location="select.jsp";
	</script>
	<%
} catch (Exception e) {
	%>
	<script type="text/javascript">
	alert("사원등록이 실패했습니다.");
	history.back();
	</script>
	<%
} finally {
	try {
		if(st != null) st.close();
		if(pstmt != null) pstmt.close();
		if(rs != null) rs.close();
		if(con != null) con.close();		
	} catch (Exception e) {
		e.printStackTrace();
	}
}


%>