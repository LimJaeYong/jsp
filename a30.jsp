<%@ page language="java" contentType="text/html; charset=utf-8"%>

<% 
    request.setCharacterEncoding("utf-8");
    String name11 = request.getParameter("n1");
%>

<%= name11%>님이 방문하셨습니다.<br>
홈페이지 방문자입니다.<br>
<hr>
<jsp:include page ="a27.jsp" flush="false"/>
<hr>
<%= name11%>님이 즐거운 시간 보내셨습니까?<br>
