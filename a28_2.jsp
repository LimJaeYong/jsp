<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page isErrorPage="true"%>
<%
    out.print("에러 메시지 : "+exception.getMessage()+"<br>");
    out.print("에러클래스와 메시지 : "+ exception.toString()+"<br>");
%>
