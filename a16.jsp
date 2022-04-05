<%@ page  contentType="text/html; charset=UTF-8" %>
http://localhost:8080/jsp/a16.jsp<br>
<form>
끝 값: <input type="text" name ="a1">
<input type="submit" value="합은?">
<form>

<%
    int i = 0;
    int sum = 0;
    String num1 = request.getParameter("a1");

    if(num1 != null) {
        int num = Integer.parseInt(num1);
    while(i<num) {
        i++;
        sum = sum +i;
        out.print("반복횟수="+i+"&nbsp; 1부터"+i+"까지의 합="+sum+"<br>");
    }
    }
%>

