<%@ page  contentType="text/html; charset=EUC-KR" %>
http://localhost:8080/jsp/a10.jsp<br>
<%

    int n1 = 4;
    if(n1>10) {
        out.print("회원은 골드 등급입니다.<br)");
    }
    else if(n1>5){
        out.print("회원은 실버 등급입니다.<br>");
    }
    else {
        out.print("회원입니다.<br>");
    }

%>


