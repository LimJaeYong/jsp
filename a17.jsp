<%@ page  contentType="text/html; charset=UTF-8" %>
http://localhost:8080/jsp/a17.jsp<br>
<%
    int i = 1;

    do{
        out.print("고객님은 " +i+"번째 방문입니다.<br>");
        i++;
    }while(i<10);
    
%>

