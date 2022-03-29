<%@ page language="java" contentType="text/html; charset=EUC-KR" %>
http://localhost:8080/jsp/a2.jsp<br>

<%
    out.print("이곳에 쓰면 된다.<br>");
    int r1 = 10;
    float pi=3.14f;
    float b1=2*pi*r1;
%>
반지름이 <%=r1%>인 원의 둘레는 <%=b1%>입니다.


