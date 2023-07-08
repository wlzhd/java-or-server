<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<%@ include file = "db.jsp" %>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "com.dto.MemberVo"%>
<%@ page import = "com.dao.MemberData"%>    

<!DOCTYPE html>
<html lang="en">
<head>
  <title>2023_산대특(model1)</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!--add-->
  <link rel="stylesheet" href="model1.css">
  <script src="model1.js"></script>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">나는 개발자다</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.jsp">Home</a></li>
      <li><a href="select.jsp">회원관리</a></li>
      <li><a href="">게시판관리</a></li>
      <li><a href="#">로그인</a></li>
    </ul>
  </div>
</nav>