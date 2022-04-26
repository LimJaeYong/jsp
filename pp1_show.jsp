<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.io.*" %>
<html><body>
<%
    File board_file = new File("C:/jsp/jsp_2022/pp1_write.txt");
    String s = null;

    try {
        FileReader in1 = new FileReader(board_file);
        BufferedReader in2 = new BufferedReader(in1);
        while((s=in2.readLine()) != null) {
            out.println(s);
        }
        in2.close();
    } catch(IOException e) {
        out.println(e.getMessage());
    }
%>
<CENTER>
<a href="pp1.html">글쓰기</a>
</CENTER>
</body></html>