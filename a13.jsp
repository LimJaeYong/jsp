<%@ page  contentType="text/html; charset=EUC-KR" %>
http://localhost:8080/jsp/a13.jsp<br>
<%
    int n1 = 5;
    switch(n1) {
        case 10:
            out.print("회원은 골드 등급입니다.<br>");
            break;
        case 9:
        case 8:
        case 7:
        case 6:
        case 5:
            out.print("회원은 실버 등급입니다.<br>");
            break;
        default:
            out.print("회원입니다. <br>");
    }
%>




