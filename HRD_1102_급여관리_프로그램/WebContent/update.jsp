<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function check() {
	if(s.EMPLOYEE_NO.value ==""){
		alert("사원번호를 입력해주세요");
		return s.EMPLOYEE_NO.focus();
	}
	if(s.EMPLOYEE_NAME.value ==""){
		alert("사원명을 입력해주세여");
		return s.EMPLOYEE_NAME.focus();
	}
	if(s.DEPT_NO.value == ""){
		alert("부서번호를 입력해주세요");
		return DEPT_NO.focus();
	}
	if(s.HIER_DATE.value == ""){
		alert("입사일자를 입력해주세요");
		return HIER_DATE.focus();
	}
	if(s.EMPLOYEE_STATUS.value ==""){
		alert("사원상태를 입력해주세요");
		return EMPLOYEE_STATUS.focus();
	}
	s.submit();
}
</script>
</head>
<body>
<%@include file="header.jsp" %>
<%
	/* select 에서 던져준 값 가져오고 */
	int EMPLOYEE_NO = Integer.parseInt(request.getParameter("EMPLOYEE_NO"));

	sql ="select EMPLOYEE_NO, EMPLOYEE_NAME, DEPT_NO, to_char(HIER_DATE,'yyyy-mm-dd'), EMPLOYEE_STATUS from EMPLOYEE_TBL_13 where EMPLOYEE_NO=?";
	
	pstmt = con.prepareStatement(sql);
	pstmt.setInt(1, EMPLOYEE_NO);
	
	rs = pstmt.executeQuery();
	
	rs.next();
	
	String status = rs.getString(5);
	
	String select1 = "";
	String select2 = "";
	String select3 = "";
	if(status.equalsIgnoreCase("1")) {
		select1 = "selected";
	} else if(status.equalsIgnoreCase("2")) {
		select2 = "selected";
	} else if(status.equalsIgnoreCase("3")) {
		select3 = "selected";
	}
	
%>
	<section>
		<h2>사원등록</h2>
		<form name="s" action="insertPro.jsp" method="post">
			<table>
				<tr>
					<th>사원번호</th>
					<td><input type="text" name="EMPLOYEE_NO" value="<%=rs.getInt(1)%>"></td>
				</tr>
				<tr>
					<th>사원명</th>
					<td><input type="text" name="EMPLOYEE_NAME" value="<%=rs.getString(2)%>"></td>
				</tr>
				<tr>
					<th>부서번호</th>
					<td><input type="text" name="DEPT_NO" value="<%=rs.getString(3)%>"></td>
				</tr>
				<tr>
					<th>입사일자</th>
					<td><input type="text" name="HIER_DATE" value="<%=rs.getString(4)%>"></td>
				</tr>
				<tr>
					<th>사원상태</th>
					<td>
						<select name="EMPLOYEE_STATUS" >
								<option value="1" <%=select1 %>>입사</option>
								<option value="2" <%=select2 %>>퇴사</option>
								<option value="3" <%=select3 %>>휴직</option>
						</select>
					</td>
				</tr>
			</table>
			<div>
				<input type="submit" value="등록" onclick="check(); return false;">
				<input type="submit" value="조회" onclick="location='select.jsp'">
			</div>

		</form>
	</section>
	<%@ include file="footer.jsp"%>