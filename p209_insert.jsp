<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
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
    String p_id = request.getParameter("id");
    String p_pd = request.getParameter("password");
    String p_nm = request.getParameter("username");
    String p_em = request.getParameter("email");
    int cnt = 0;

    int i_pd = Integer.parseInt(p_pd);

    st = conn.createStatement();
    rs=st.executeQuery("select * from woori where id = '"+p_id+"'");
    if(!(rs.next())) {
        String sql = "insert into woori(id, name, email, password)";
        sql += "values('"+p_id+"','"+p_nm+"','"+p_em+"',"+p_pd+")";
        cnt = st.executeUpdate(sql);
        if(cnt>0) 
            out.print("데이터 입력 성공<br>");
        
        else
            out.print("데이터 입력 실패");
    }
    else
        out.print("이미 존재하는 ID");
    st.close();
    conn.close();
%>

<a href="p209_insert.html">회원등록 페이지로</a><br>
<a href="p209_selectall.jsp">등록된 회원확인 페이지로</a><br>
<a href="p209_main.html">메인으로</a>