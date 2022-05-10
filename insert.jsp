<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>

<%
    Connection conn = null;
    Statement st = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        //Class.forName("org.gjt.mm.mysql.Driver");
        out.println("드라이버 로딩 성공");
    } catch (ClassNotFoundException e) {
        out.println("드라이버 로딩 실패");
        out.println(e.getMessage());
    }

    try {
        String url = "jdbc:mysql://localhost:3306/db1?serverTimezone=UTC";
        conn = DriverManager.getConnection(url,"kk1", "pp11##11qq");
        st = conn.createStatement();
        String sql = "INSERT INTO t_db1 VALUES('15', 15, '김길동')";
        st.executeUpdate(sql);
        st.close();
        conn.close();
    } catch(SQLException e) {
        out.println("DB 연결안됨");
        out.println(e);
    }
%>