<%@ page  contentType="text/html; charset=EUC-KR" %>
http://localhost:8080/jsp/a12_js.jsp<br>
<script>
    score1 = prompt("점수 입력");
    score = eval(score1);
    var grade;
    if(score<=100){
        switch(score/10) {
            case 10:
                grade = "A+";
                document.write("점수 = "+score+", 학점 = "+grade);
                break;
            case 9:
                grade = "A";
                document.write("점수 = "+score+", 학점 = "+grade);
                break;
            case 8:
                grade = "B";
                document.write("점수 = "+score+", 학점 = "+grade);
                break;
            case 7:
                grade = "C";
                document.write("점수 = "+score+", 학점 = "+grade);
                break;
            default:
                grade ="F";
                document.write("점수 = "+score+", 학점 = "+grade);
                break;
        }
    }
    else {
        document.write(score+"은 만점인 100점 이상으로 잘못 입력");
    }
</script>

