<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbcon.jsp"  %>
 <%@ page import="java.sql.*" %>
 
 <%
 request.setCharacterEncoding("utf-8");
 
 Class.forName("Oracle.jdbc.OracleDriver");
 
 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
 
 Statement stmt = con.createStatement();
 PreparedStatement ps = null;
 
 
 ResultSet rs=null;
 String sql = "";
 %>