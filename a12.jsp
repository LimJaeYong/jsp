<%@ page  contentType="text/html; charset=EUC-KR" %>
http://localhost:8080/jsp/a12.jsp<br>
<%
    int score = 80;
    String grade;
    if(score<=100){
        switch(score/10) {
            case 10:
                grade = "A+";
                out.print("���� = "+score+", ���� = "+grade);
                break;
            case 9:
                grade = "A";
                out.print("���� = "+score+", ���� = "+grade);
                break;
            case 8:
                grade = "B";
                out.print("���� = "+score+", ���� = "+grade);
                break;
            case 7:
                grade = "C";
                out.print("���� = "+score+", ���� = "+grade);
                break;
            default:
                grade ="F";
                out.print("���� = "+score+", ���� = "+grade);
                break;
        }
    }
    else {
        out.print(score+"�� ������ 100�� �̻����� �߸� �Է�");
    }
%>




