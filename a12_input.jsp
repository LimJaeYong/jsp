<%@ page  contentType="text/html; charset=EUC-KR" %>
http://localhost:8080/jsp/a12_input.jsp<br>
<%
    int score, num;
    String num1 = request.getParameter("a1");
    if(num1 != null) {
        score = Integer.parseInt(num1);
        String grade;
        if(score<=100){
            switch(score/10) {
                case 10:
                    grade = "A+";
                    out.print("���� = "+score+", ���� = "+grade+"<br>");
                    break;
                case 9:
                    grade = "A";
                    out.print("���� = "+score+", ���� = "+grade+"<br>");
                    break;
                case 8:
                    grade = "B";
                    out.print("���� = "+score+", ���� = "+grade+"<br>");
                    break;
                case 7:
                    grade = "C";
                    out.print("���� = "+score+", ���� = "+grade+"<br>");
                    break;
                default:
                    grade ="F";
                    out.print("���� = "+score+", ���� = "+grade+"<br>");
                    break;
            }
        }
        else {
            out.print(score+"�� ������ 100�� �̻����� �߸� �Է�");
        }
    }
%>
<hr>
���� �Է�â<hr>
<form>
    ����� ���� <input type = "text" name ="a1"><br>
    ���� : <input type = "submit" value="���� Ȯ��"><br>
</form>

