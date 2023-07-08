<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "header.jsp" %>


<div class = "container">
    <h3>main > select</h3>
    <p>
        <table class="table table-hover">
            <thead>
              <tr>
                <th>번호</th>
                <th>과정</th>
                <th>기수</th>
                <th>이름</th>
                <th>날짜</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>0</td>
                <td>OOO</td>
                <td>OO</td>
                <td>OOO</td>
                <td>OOOO-OO-OO</td>
              </tr>
                <%
                    ResultSet rs = null;
                    PreparedStatement pstmt = null;
                    try{
                        String sql = "select * from member";
                        pstmt = conn.prepareStatement(sql);
                        rs = pstmt.executeQuery();

                        while(rs.next()){

                %>

              <tr>
                <td><a href = "detail.jsp?idx=<%=idx%>"><%=rs.getInt("idx")%></a></td>
                <td><%=rs.getString("course")%></td>
                <td>2기</td>
                <td><%=rs.getString("name")%></td>
                <td>2023-07-07</td>
              </tr>
              
              <%
                }
                }catch(SQLException ex){
                    out.println(ex.getMessage());
                } finally{
                    if(rs != null)
                        rs.close();
                    if(pstmt != null)
                        pstmt.close();
                    if(conn != null)
                        conn.close();
                    
                    
                }
                %>

            </tbody>
          </table>
            <button type="button" class="btn"><a href="/model1/insert.html">등록</a></button>
            <button type="button" class="btn btn-default">Default</button>
            <button type="button" class="btn btn-primary">Primary</button>
            <button type="button" class="btn btn-success">Success</button>
    </p>
</div>
<%@ include file = "footer.jsp" %>