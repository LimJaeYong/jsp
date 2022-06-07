<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
    PreparedStatement pst = null;
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

        String p_id = request.getParameter("u_id");
        String p_name = request.getParameter("u_name");
        String p_mail = request.getParameter("u_mail");

        st=conn.createStatement();
        String sql = "update woori set ";
        sql = sql +"name = '"+p_name+"',"+"email='"+p_mail+"'";
        sql = sql +"where id='"+p_id+"'";

        st.executeUpdate(sql);
        st.close();
        
    } catch(SQLException e) {
        out.println(e);
    } catch(NumberFormatException e) {
        out.println("ID를 입력해주세요.<br>");
        out.println(e);
    }
%>

<a href="p209_main.html">메인으로</a>
    