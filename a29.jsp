<%@ page language="java" contentType="text/html; charset=utf-8"%>
include 액션태그 호출 전<br>

<% 
    out.println("지금 호출<br>");
%>
<hr>
<jsp:include page="a25.jsp" />
<hr>
<%
    out.print("include 액션 호출 후<br>");
%>
