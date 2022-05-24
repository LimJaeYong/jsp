<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>

<%
    Connection conn = null;
    Statement st = null;
    ResultSet rs = null;
    try {
        //Class.forName("com.mysql.jdbc.Driver");
        Class.forName("org.gjt.mm.mysql.Driver");
        out.println("드라이버 로딩 성공<br><br>");
    } catch (ClassNotFoundException e) {
        out.println("드라이버 로딩 실패<br>");
        out.println(e.getMessage());
    }

    try {
        String url = "jdbc:mysql://localhost:3306/db22?serverTimezone=UTC";
        conn = DriverManager.getConnection(url,"kk1", "pp11##11qq");
        st = conn.createStatement();
        
        String sql = "select * from woori";
        rs = st.executeQuery(sql);
%>
<table border=2>
<tr>
    <td>아이디</td><td>이름</td><td>이메일</td><td>비밀번호</td>
</tr>
<%
        while(rs.next()) {
            out.println("<tr>");
            out.println("<td>"+rs.getString(1)+"</td>");
            out.println("<td>"+rs.getString(2)+"</td>");
            out.println("<td>"+rs.getString(3)+"</td>");
            out.println("<td>"+rs.getInt(4)+"</td>");
            out.println("</tr>");
        }
        
        rs.close();
        st.close();
        conn.close();
    } catch(SQLException e) {
        out.println(e);
    }
%>
</table>

<br><a href="p209_main.html">메인으로</a>
    