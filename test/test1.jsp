<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id ="cal" class="com.dto.Calculator" scope="page" />

<%
    request.setCharacterEncoding("utf-8");
    int m=cal.f(2);
    out.println(m);
%>