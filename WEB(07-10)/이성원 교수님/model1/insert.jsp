<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file ="db.jsp"%>
<%

    request.setCharacterEncoding("utf-8");
    String course =  request.getParameter("course");
    String gisu =  request.getParameter("gisu");
    String name =  request.getParameter("name");
    String gender =  request.getParameter("gender");
    String regdate =  "2023-07-07";    
    
    out.println(course);

    PreparedStatement pstmt = null;
    try{
        String sql = "insert into member(course,gisu,name,gender,regdate) VALUES(?,?,?,?,?)";

        pstmt = conn.prepareStatement(sql);    
        pstmt.setString(1,course);
        pstmt.setString(2,gisu);
        pstmt.setString(3,name);        
        pstmt.setString(4,gender);   
        pstmt.setString(5,regdate);      
        
        out.println(sql);

        pstmt.executeUpdate();
    }catch(SQLException ex) {
        out.println(ex.getMessage());
    }finally{
        if(pstmt != null)
            pstmt.close();
        if(conn != null)
            conn.close();
    }
    response.sendRedirect("./select.jsp");
%>