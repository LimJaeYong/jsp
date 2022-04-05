<%@ page  contentType="text/html; charset=UTF-8" %>
http://localhost:8080/jsp/a19.jsp<br>
<%
    out.print("10보다 작은 짝수는 다음과 같다. <br>");

    for(int i = 0; i<10; i++) {
        if(i%2==1) {
            continue;
        }
        out.print(i+"<br>");
    }
    
%>

