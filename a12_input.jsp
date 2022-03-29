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
                    out.print("점수 = "+score+", 학점 = "+grade+"<br>");
                    break;
                case 9:
                    grade = "A";
                    out.print("점수 = "+score+", 학점 = "+grade+"<br>");
                    break;
                case 8:
                    grade = "B";
                    out.print("점수 = "+score+", 학점 = "+grade+"<br>");
                    break;
                case 7:
                    grade = "C";
                    out.print("점수 = "+score+", 학점 = "+grade+"<br>");
                    break;
                default:
                    grade ="F";
                    out.print("점수 = "+score+", 학점 = "+grade+"<br>");
                    break;
            }
        }
        else {
            out.print(score+"은 만점인 100점 이상으로 잘못 입력");
        }
    }
%>
<hr>
점수 입력창<hr>
<form>
    사용자 점수 <input type = "text" name ="a1"><br>
    제출 : <input type = "submit" value="점수 확인"><br>
</form>

