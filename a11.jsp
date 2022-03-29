<%@ page  contentType="text/html; charset=EUC-KR" %>
http://localhost:8080/jsp/a11.jsp<br>
<%
    int i, num;

    try{
        String num_1 = request.getParameter("aa");
    
        if(num_1 != null){
            int score = Integer.parseInt(num_1);
            if(score>90) {
                out.print("최우수");
            }
            else if(score>80) {
                out.print("우수");
            }
            else if(score>70) {
                out.print("보통");
            }
            else {
                out.print("분발");
            }
        }    
    }
    catch(NumberFormatException e) {
        out.print("다시 입력");
    }
%>

<form>
    <input type="text" name="aa">
    <input type="submit" name="점수입력">
</form>



