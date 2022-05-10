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
        String url = "jdbc:mysql://localhost:3306/db1?serverTimezone=UTC";
        conn = DriverManager.getConnection(url,"kk1", "pp11##11qq");
        st = conn.createStatement();
        
        String sql = "select * from t_db1";
        rs = st.executeQuery(sql);
        while(rs.next()) {
            out.println(rs.getString(1));
            out.println(rs.getInt(2));
            out.println(rs.getString(3));
            out.println("<br>");
        }
        rs.close();
        st.close();
        conn.close();
    } catch(SQLException e) {
        out.println(e);
    }
%>