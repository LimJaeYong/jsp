<%@ page  contentType="text/html; charset=EUC-KR" %>
http://localhost:8080/jsp/a5.jsp<br>
<html>
<body>
<table border="10" width="50" height="30">
<%
    int res;

    for(int i= 2; i<10; i++){
        out.print("<tr>");
        for(int j=1; j<10; j++){
            res = i*j;
            out.print("<td>"+i+"*"+j+"="+res+" </td>");
        }
        out.print("<br></tr>");
    }
%>
</table>
</body>
</html>



