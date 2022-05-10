<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>

<%
    Connection conn = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        //Class.forName("org.gjt.mm.mysql.Driver");
        out.println("드라이버 로딩 성공");
    } catch (ClassNotFoundException e) {
        out.println("드라이버 로딩 실패");
        out.println(e.getMessage());
    }

    try {
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db7?serverTimezone=UTC","kk1", "pp11##11qq");
        out.println("DB 연결");
    } catch(SQLException e) {
        out.println("DB 연결안됨");
        out.println(e);
    }
%>