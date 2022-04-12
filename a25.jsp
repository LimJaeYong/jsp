<%@ page language="java" contentType="text/html; charset=utf-8"%>
<% 
    request.setCharacterEncoding("utf-8");
    String userId=request.getParameter("id");
    String userPwd=request.getParameter("pwd");
    String sessionId = session.getId();
    int sessionTime = session.getMaxInactiveInterval();

    out.print(userId + " 님 환영합니다.<br>");
    out.print("생성된 세션 ID : " + sessionId+"<br>");
    out.print("세션 유지 시간 : "+ sessionTime+"초 입니다.");

%>
