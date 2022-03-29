<%@ page  contentType="text/html; charset=EUC-KR" %>
http://localhost:8080/jsp/a9.jsp<br>
<%
    String[][] list = new String[3][2];

    list[0][0] = "홍길동";
    list[0][1] = "hong@mail.com";

    list[1][0] = "이순신";
    list[1][1] = "lee@mail.com";

    list[2][0] = "강감찬";
    list[2][1] = "gang@mail.com";

    out.print(list[0][0] + "의 메일주소는 : "+list[0][1]+"<br>");
    out.print(list[1][0] + "의 메일주소는 : "+list[1][1]+"<br>");
    out.print(list[2][0] + "의 메일주소는 : "+list[2][1]+"<br>");

    int num[] = new int[5];
    out.print("num[1]=" +num[1]+"<br>");
    int num3[]={10,20,30,40};
    out.print("num3[1]="+num3[1]+"<br>");

    String[] gd = new String[]{"상", "중","하"};
    String[] name = new String[3];

    name[0] = "유정수";
    name[1] = "고명진";
    name[2]="정채민";

    for(int i = 0; i<3; i++) {
        out.print(name[i]+"학생의 기말성적은 "+gd[i]+" 입니다.<br>");
    }
    
%>

