<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.io.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
    String board_file = "C:/jsp/jsp_2022/pp1_write.txt";
    try {
        PrintWriter pw = new PrintWriter(new FileWriter(board_file, true));
        pw.println("글쓴이 : "+request.getParameter("name")+"<br>");
        pw.println("글제목 : "+request.getParameter("subject")+"<br>");
        pw.println("E-mail : "+request.getParameter("email")+"<br>");
        pw.println("작성일 : "+(new java.util.Date()).toLocaleString()+"<br>");

        pw.println("<hr>");
        pw.println(request.getParameter("content"));
        pw.println("<hr>");
        pw.close();
    } catch (IOException e) {
        out.print(e.getMessage());
    }
%>
    <a href="pp1.html">저장하는 곳으로</a>