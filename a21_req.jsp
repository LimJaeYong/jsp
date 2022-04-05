<%@ page contentType="text/html; charset=utf-8"%>
<%
    request.setCharacterEncoding("utf-8");
    String name1 = request.getParameter("name");
    String pwd1 = request.getParameter("pwd");
    out.print("이름은 "+name1+"<br>");
    out.print("비밀번호는 "+pwd1+"<br>");
%>