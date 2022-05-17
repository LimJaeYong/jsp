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
%>

<%
    try {
        st = conn.createStatement();
        st.executeUpdate("create table woo55 (id char(10) primary key, name char(10))");
    } catch(SQLException e) {
        out.print(e);
    }

    try {
        rs=st.executeQuery("select * from woori");
        ResultSetMetaData rsmd = rs.getMetaData();
        out.print("새로운 테이블 생성");
        out.print(rsmd.getColumnCount()+"개의 컬럼(필드)"+"<br>");
        out.print("첫번째 컬럼 :"+rsmd.getColumnName(1)+"<br>");
        out.print("두번째 컬럼 :"+rsmd.getColumnName(2)+"<br>");
        rs.close();
        st.close();
        conn.close();
    } catch(SQLException e) {
        out.println(e);
    }
%>
<a href="p209_main.html">메인으로</a>