<%@ page  contentType="text/html; charset=EUC-KR" %>
http://localhost:8080/jsp/a12.jsp<br>
<%
    int score = 80;
    String grade;
    if(score<=100){
        switch(score/10) {
            case 10:
                grade = "A+";
                out.print("점수 = "+score+", 학점 = "+grade);
                break;
            case 9:
                grade = "A";
                out.print("점수 = "+score+", 학점 = "+grade);
                break;
            case 8:
                grade = "B";
                out.print("점수 = "+score+", 학점 = "+grade);
                break;
            case 7:
                grade = "C";
                out.print("점수 = "+score+", 학점 = "+grade);
                break;
            default:
                grade ="F";
                out.print("점수 = "+score+", 학점 = "+grade);
                break;
        }
    }
    else {
        out.print(score+"은 만점인 100점 이상으로 잘못 입력");
    }
%>




