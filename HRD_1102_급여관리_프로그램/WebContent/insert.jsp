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
	sql ="select nvl(max(EMPLOYEE_NO),0)+1 from EMPLOYEE_TBL_13";
	int number =0;
	pstmt = con.prepareStatement(sql);
	
	rs = pstmt.executeQuery();
	if(rs.next()) number = rs.getInt(1);
%>
	<section>
	<br>
	<br>	
		<h2 style="text-align: center; border: 1px;">사원등록</h2>
		<form name="s" action="insertPro.jsp" method="post">
			<table style="margin: 0 auto;">
				<tr>
					<th>사원번호</th>
					<td><input type="text" name="EMPLOYEE_NO" value="<%=number%>"></td>
				</tr>
				<tr>
					<th>사원명</th>
					<td><input type="text" name="EMPLOYEE_NAME" value=""></td>
				</tr>
				<tr>
					<th>부서번호</th>
					<td><input type="text" name="DEPT_NO" value=""></td>
				</tr>
				<tr>
					<th>입사일자</th>
					<td><input type="date" name="HIER_DATE" value=""></td>
				</tr>
				<tr>
					<th>사원상태</th>
					<td>
						<select name="EMPLOYEE_STATUS">
								<option value="1">입사</option>
								<option value="2">휴직</option>
								<option value="3">퇴사</option>
						</select>
					</td>
				</tr>
			</table>
			<div style="text-align: center;	">
				<input type="submit" value="등록" onclick="check(); return false;">
				<input type="submit" value="조회" onclick="location='select.jsp'">
			</div>

		</form>
	</section>
	<%@ include file="footer.jsp"%>