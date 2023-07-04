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
  <h2>member > list</h2>
  <p>회원목록</p>                                                                                      
  <div class="table-responsive">
  <table class="table">
    <thead>
      <tr>
        <th>번호</th>
        <th>과정</th>
        <th>기수</th>
        <th>이름</th>
        <th>성별</th>
        <th>등록날짜</th>
      </tr>
    </thead>
    <tbody>

      <% 
      ArrayList<MemberVO> listOfMembers = mb.memberTotal();
      for (int i=0; i<listOfMembers.size(); i++) {
       MemberVO m = listOfMembers.get(i);
      %>

      <tr>
        <td><a href="/member/detail.jsp?idx=<%=m.getIdx()%>"><%=m.getIdx()%></a></td>
        <td>산대특</td>
        <td>2기</td>
        <td>김지성</td>
        <td>남</td>
        <td>2023-07-03</td>
      </tr>  

       <%
        }
       %>

    </tbody>
  </table>
  </div>
</div>

</body>
</html>