<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%! public String insa() {
    String b1 = "안녕";
    return b1;
}
%>
application 이용 <br>
<%
    application.setAttribute("N1","유정수");
    application.setAttribute("insa",insa());
%>
이름 : <%= application.getAttribute("N1")%><br>
인사 : <%= application.getAttribute("insa")%>
