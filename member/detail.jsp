<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "com.dto.MemberVO"%>

<jsp:useBean id="mb" class="com.dao.MemberDate" scope="page" />


<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>member > detail</h2> 
  <p>회원상세보기</p> 

  <%
  request.setCharacterEncoding("utf-8");
  String idx = request.getParameter("idx");
  if(mb.search(idx)){
    out.println("검색성공");
  }else {
    out.println("검색실패");
  }
  %>

</div>
</body>
</html>