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

        String p_id = request.getParameter("id");
        String p_pd = request.getParameter("password").trim();
        int i_pd = Integer.parseInt(p_pd);
        
        String sql = "select * from woori where id=?";
        pst = conn.prepareStatement(sql);
        pst.setString(1,p_id);
        rs = pst.executeQuery();

        out.println("===회원정보===<br>");
        if(!(rs.next())) {
            out.println("등록되지 않은 사용자 정보");
        }
        else {
            if(i_pd==rs.getInt(4)) {
                out.println("사용자 ID = "+p_id+"인 회원정보<br>");
                out.println("정보변경하려면 내용 입력 후 <수정>클릭");

                %>

                <form method="post" action="p209_update.jsp">
                <input type ="hidden" value="<%=p_id%>" name="p23_id"><br>
                이름:<input type ="text" value="<%=rs.getString(2)%>" name="p23_name"><br>
                메일:<input type ="text" value="<%=rs.getString(3)%>" name="p23_mail"><br><br>
                <input type="submit" value="수정하기"><br>
                <a href ="p209_delete.jsp?p_id=<%=p_id%>"><br>삭제페이지</a>
                </form>
                <%

            }
            else{
                out.print("비밀번호 틀림");
            }
        }




        rs.close();
        conn.close();
    } catch(SQLException e) {
        out.println(e);
    }
%>

<a href="p209_main.html">메인으로</a>
    