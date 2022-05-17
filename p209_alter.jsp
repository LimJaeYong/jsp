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
        st.executeUpdate("alter table woori modify name char(10) not null");
        st.executeUpdate("alter table woori add email char(30)");
        st.executeUpdate("alter table woori add password integer");
    } catch (SQLException e) {
        out.println(e);
    }

    try {
        rs=st.executeQuery("select * from woori");
        ResultSetMetaData rsmd = rs.getMetaData();
        out.println("테이블 수정<br>");
        out.println(rsmd.getColumnCount()+"개 컬럼(필드)<br>");
        for(int i = 1; i<=rsmd.getColumnCount(); i++) {
            out.print(i+"번째 컬럼 : "+rsmd.getColumnName(i)+"<br>");
            out.print(i+"번째 컬럼 유형 : "+rsmd.getColumnTypeName(2)+"<br>");
            out.print(i+"번째 컬럼 크기 : "+rsmd.getPrecision(2)+"<br>");
        }
        rs.close();
        st.close();
        conn.close();
    } catch(SQLException e) {
        out.println(e);
    }
%>
<a href="p209_main.html">메인으로</a>