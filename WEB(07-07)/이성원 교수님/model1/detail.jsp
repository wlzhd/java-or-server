<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.dto.MemberVo"%>

<%
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
%>
<div class="container">
    <h3>main > detail</h3>
    <p>
<div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>번호</th>
        <th>이름</th>
        <th>날짜</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><%=rs.getInt("idx")%></td>
        <td><%=rs.getString("name")%></td>
        <td><%=rs.getString("regdate")%></td>
      </tr>
      <tr>
        <td colspan="3">
            <table class="table">
                <tr>
                    <td>과정 : </td>
                    <td><%=rs.getString("course")%></td>
                </tr>
                <tr>
                    <td>기수 : </td>
                    <td><%=rs.getString("gisu")%></td>
                </tr>
                <tr>
                    <td>성별 : </td>
                    <td><%=rs.getString("gender")%></td>
                </tr>                
                <tr>
                    <td>성적 : </td>
                    <td>
                        <table class="table">
                        <tr>
                            <td>자바</td>
                            <td>시스템</td>
                            <td>웹</td>
                            <td>데이터베이스</td>
                            <td>스프링</td>
                            <td>프로젝트</td>                                                                                                                                             
                        </tr>
                        <tr>
                            <td>100</td>
                            <td>100</td>
                            <td>100</td>
                            <td>100</td>
                            <td>100</td>
                            <td>100</td>                                                                                                                                            
                        </tr>                        
                        </table>

                    </td>
                </tr>                
            </table>

        </td>
      </tr>   
    </tbody>
  </table>

  </div>  
  <button type="button" class="btn btn-primary"><a href="select.jsp">목록</a></button>
  <button type="button" class="btn btn-warning"><a href="update.jsp?idx=<%=idx%>">수정</a></button>
  <button type="button" class="btn btn-danger"><a href="delete.jsp?idx=<%=idx%>">삭제</a></button>
    <!--<a href="/board/detail.jsp?idx="></a> -->
    </p>
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