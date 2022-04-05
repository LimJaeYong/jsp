<%@ page contentType="text/html; charset=utf-8"%>
<%
    request.setCharacterEncoding("utf-8");
    String name1 = request.getParameter("n1");
    String p1 = request.getParameter("p1");
    String p2 = request.getParameter("p2");
    String p3 = request.getParameter("p3");
    out.print("방문자 : "+name1+"<br>");

    int sum =0;
    if(p1 != null) {
        out.println("<img src='imgs\1.jpg'>");
        sum += 1000;}
    if(p2 != null) {
        out.println("<img src='imgs\2222.jpg'>");
        sum += 2000;}
    if(p3 != null) {
        out.println("<img src='imgs\3.jpg'>");
        sum += 3000;}

    out.print("가격 : "+sum+"<br>");
%>
