<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!--연결성공 했으면 볼일 없음-->

<%
  Connection conn = null;
  try{
      String url="jdbc:mysql://localhost:3306/master";
      String user="master";
      String password="123456";
      Class.forName("com.mysql.jdbc.Driver");
      conn = DriverManager.getConnection(url,user,password);
      // out.println("데이터베이스 연결이 성공했습니다");
  }catch(SQLException ex) {
      out.println("연결실패");
      out.println(ex.getMessage());
  }

%>