<%@ page  contentType="text/html; charset=EUC-KR" %>
http://localhost:8080/jsp/a8.jsp<br>
<%
    int n1 = 5;
    int n2 = 7;
    int s1 = n1+n2;
    int s2 = n1-n2;
    int s3 = n1*n2;
    int s4 = n1/n2;
    int s5 = n1%n2;

    out.print("n1 = "+n1+" n2 = "+n2+" n1+n2 = "+s1+"<br>");
    out.print("n1 = "+n1+" n2 = "+n2+" n1-n2 = "+s2+"<br>");
    out.print("n1 = "+n1+" n2 = "+n2+" n1*n2 = "+s3+"<br>");
    out.print("n1 = "+n1+" n2 = "+n2+" n1/n2 = "+s4+"<br>");
    out.print("n1 = "+n1+" n2 = "+n2+" n1%n2 = "+s5+"<br>");

%>


<