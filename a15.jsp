<%@ page  contentType="text/html; charset=UTF-8" %>
http://localhost:8080/jsp/a15.jsp<br>
<form>
시작값:<input type="text" name ="a1"><br>
끝 값: <input type="text" name ="a2">
<input type="submit" value="합은?">
<form>

<%
    int i = 0, sum = 0, num2, num1;
    String num1_1 = request.getParameter("a1");
    String num2_1 = request.getParameter("a2");
    if((num2_1 != null)) {
        num1 = Integer.parseInt(num1_1);
        num2 = Integer.parseInt(num2_1);
        for(i=num1; i<=num2;i++) {
            sum +=i;
        }
        out.print("<br>"+num1+" 부터 "+(i-1)+"까지의 합="+sum+"<br>");
    }
%>

