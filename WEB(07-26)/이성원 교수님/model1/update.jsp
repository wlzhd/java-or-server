<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "header.jsp" %>
<%
    
    String course="";
    String gisu="";
    String name="";
    String gender="";

    request.setCharacterEncoding("utf-8");
    int idx =  Integer.parseInt(request.getParameter("idx"));

    ResultSet rs=null;
    PreparedStatement pstmt=null;

    try{
     //String sql = "select * from member where idx = 1";
     String sql = "select * from member where idx = ?";     
     pstmt = conn.prepareStatement(sql);
     pstmt.setInt(1,idx);

     rs = pstmt.executeQuery();
     while(rs.next()) {
        idx = rs.getInt("idx");
        course = rs.getString("course");
        gisu = rs.getString("gisu");
        name = rs.getString("name");
        gender = rs.getString("gender");                   
%>
<div class="container">
  <h2>회원수정</h2>
  <form action="update_ok.jsp" method="post" name="myform">
    <input type = "hidden" name = "idx" value = "<%=course%>">
    <div class="form-group">
      <label for="course">과정</label>
      <input type="text" class="form-control" id="course" placeholder=<%=course%> name="course">
    </div>
    <div class="form-group">
      <label for="gisu">기수</label>
      <input type="text" class="form-control" id="gisu" placeholder=<%=gisu%> name="gisu">
    </div>
    <div class="form-group">
      <label for="name">이름</label>
      <input type="text" class="form-control" id="name" placeholder=<%=name%> name="name">
    </div>
    <div class="form-group">
      <label for="gender">성별</label>
      <input type="text" class="form-control" id="gender" placeholder=<%=gender%> name="gender">
    </div> 
    <button type="submit" class="btn btn-default">회원수정</button>
  </form>
</div>
<%
    }
    }catch(SQLException ex) {
    out.println(ex.getMessage());

    }finally{
    if(rs != null)
    rs.close();
    if(pstmt != null)
        pstmt.close();
    if(conn != null)
        conn.close(); 
    }
%>