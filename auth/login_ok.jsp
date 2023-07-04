<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id ="login" class="com.dto.LoginVO" scope="page" />

<%
    request.setCharacterEncoding("utf-8");
    String username =  request.getParameter("username");
    String password =  request.getParameter("password");
    String chkUsername = "";
    String chkPassword = "";

    out.println(username);
    out.println(password);

    chkUsername = login.getUsername();
    chkPassword = login.getPassword();

    out.println(chkUsername);
    out.println(chkPassword);

    if(username.equals(chkUsername)&&password.equals(chkPassword)){
        out.println("로그인 완");
    }else{
        out.println("오류 다시");
    }
%>