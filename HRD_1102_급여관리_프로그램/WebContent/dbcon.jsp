<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");

Class.forName("oracle.jdbc.OracleDriver");

String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "system";
String password = "1234";
Connection con = DriverManager.getConnection(url, user, password);

Statement st =con.createStatement();
PreparedStatement pstmt = null;
ResultSet rs = null;
String sql = "";
%>