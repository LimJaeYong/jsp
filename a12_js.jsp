<%@ page  contentType="text/html; charset=EUC-KR" %>
http://localhost:8080/jsp/a12_js.jsp<br>
<script>
    score1 = prompt("���� �Է�");
    score = eval(score1);
    String grade;
    if(score<=100){
        switch(score/10) {
            case 10:
                grade = "A+";
                document.write("���� = "+score+", ���� = "+grade);
                break;
            case 9:
                grade = "A";
                document.write("���� = "+score+", ���� = "+grade);
                break;
            case 8:
                grade = "B";
                document.write("���� = "+score+", ���� = "+grade);
                break;
            case 7:
                grade = "C";
                document.write("���� = "+score+", ���� = "+grade);
                break;
            default:
                grade ="F";
                document.write("���� = "+score+", ���� = "+grade);
                break;
        }
    }
    else {
        document.write(score+"�� ������ 100�� �̻����� �߸� �Է�");
    }
</script>

