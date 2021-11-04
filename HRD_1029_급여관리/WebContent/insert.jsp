<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 급여관리 </title>
	<style>
		table{
			margin: auto;
			border: 1px solid black;
			width: 500px;  
		}
		
		th{
			text-align: center;
			border: 1px solid black;
		}
		
		td{
			border: 1px solid black;
		}
	</style>
	<script>
		function check(){
			if(f.EMPLOYEE_NO.value==""){
				alert("사원번호가 입력되지 않았습니다.");
				return f.EMPLOYEE_NO.focus();
			}
			if(f.EMPLOYEE_NAME.value==""){
				alert("사원명이 입력되지 않았습니다.");
				return f.EMPLOYEE_NAME.focus();
			}
			if(f.DEPT_NO.value==""){
				alert("부서번호가 입력되지 않았습니다.");
				return f.DEPT_NO.focus();
			}
			if(f.HIRE_DATE.value==""){
				alert("입사일자가 입력되지 않았습니다.");
				return f.HIRE_DATE.focus();
			}
			if(f.EMPLOYEE_STATUS[0].value==""
			&&f.EMPLOYEE_STATUS[1].value==""
			&&f.EMPLOYEE_STATUS[2].value==""){
				alert("사원상태가 입력되지 않았습니다.");
				return f.EMPLOYEE_STATUS.focus();
			}
			
			f.submit();
		}
	</script>
</head>
<body>
	<%@ include file="header.jsp" %>
	<%
	
	
	%>
	<section>
		<div>
			<h2>사원등록</h2>
		</div>
		<form action="insertPro.jsp"  name="f"  method="post">
			<table border="1" width="400" style="margin:0 auto">
				<tr hidden="STUDENT_NO">
					<th>사원번호</th>
					<td>
						<input type="text" name="EMPLOYEE_NO" maxlength="20" > 
					</td>
				</tr>
				<tr>
					<th>사원명</th>
					<td>
						<input type="text" name="EMPLOYEE_NAME" value="" size="20"  maxlength="20" > 
					</td>
				</tr>
				<tr>
					<th>부서번호</th>
					<td>
						<input type="text" name="DEPT_NO" value="" size="20"  maxlength="2" > 
					</td>
				</tr>
				<tr>
					<th>입사일자</th>
					<td>
						<input type="text" name="HIRE_DATE" value="" size="20"> 
					</td>
				</tr>
				<tr>
					<th>지원상태</th>
					<td>
						<input type="text" name="EMPLOYEE_STATUS" > 
							<select name="EMPLOYEE_STATUS">
								<option value="입사">입사</option>
								<option value="퇴사">퇴사</option>
							</select>
					</td>
				
				
				<tr>
					<th colspan="2">
						<input type="submit" value="등록" onclick="check(); return false">
						<input type="button" value="조회" onclick="location='select.jsp'">
					</th>	
				 </tr>
			</table>
		</form>
	</section>
	<%@include file="footer.jsp"%>
</body>
</html>