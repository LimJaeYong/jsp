<%@ page  contentType="text/html; charset=EUC-KR" %>
http://localhost:8080/jsp/a11.jsp<br>
<%
    int i, num;

    try{
        String num_1 = request.getParameter("aa");
    
        if(num_1 != null){
            int score = Integer.parseInt(num_1);
            if(score>90) {
                out.print("�ֿ��");
            }
            else if(score>80) {
                out.print("���");
            }
            else if(score>70) {
                out.print("����");
            }
            else {
                out.print("�й�");
            }
        }    
    }
    catch(NumberFormatException e) {
        out.print("�ٽ� �Է�");
    }
%>

<form>
    <input type="text" name="aa">
    <input type="submit" name="�����Է�">
</form>



