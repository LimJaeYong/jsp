<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>

<%
    Connection conn = null;
    Statement st = null;
    ResultSet rs = null;
    try {
        //Class.forName("com.mysql.jdbc.Driver");
        Class.forName("org.gjt.mm.mysql.Driver");
        out.println("드라이버 로딩 성공<br>");
    } catch (ClassNotFoundException e) {
        out.println("드라이버 로딩 실패<br>");
        out.println(e.getMessage());
    }

     try {
        String url = "jdbc:mysql://localhost:3306/db22?serverTimezone=UTC";
        conn = DriverManager.getConnection(url,"kk1", "pp11##11qq");
        out.print("DB연결성공");
    } catch(SQLException e) {
        out.print("DB연결실패");
        out.println(e);
    }

    try {
        st = conn.createStatement();
        st.executeUpdate("drop table woori");
    } catch(SQLException e) {
        out.print("DB연결실패");
        out.println(e);
    }
%>
<a href="p209_main.html">메인으로</a>