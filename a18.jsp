<%@ page  contentType="text/html; charset=UTF-8" %>
http://localhost:8080/jsp/a18.jsp<br>
<%
    int i = 0;

    while(true) {
        if(i==3) {
            break;
        }

        i++;
        out.print(i+"번 수행");
    }
    
%>

