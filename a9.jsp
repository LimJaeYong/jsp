<%@ page  contentType="text/html; charset=EUC-KR" %>
http://localhost:8080/jsp/a9.jsp<br>
<%
    String[][] list = new String[3][2];

    list[0][0] = "ȫ�浿";
    list[0][1] = "hong@mail.com";

    list[1][0] = "�̼���";
    list[1][1] = "lee@mail.com";

    list[2][0] = "������";
    list[2][1] = "gang@mail.com";

    out.print(list[0][0] + "�� �����ּҴ� : "+list[0][1]+"<br>");
    out.print(list[1][0] + "�� �����ּҴ� : "+list[1][1]+"<br>");
    out.print(list[2][0] + "�� �����ּҴ� : "+list[2][1]+"<br>");

    int num[] = new int[5];
    out.print("num[1]=" +num[1]+"<br>");
    int num3[]={10,20,30,40};
    out.print("num3[1]="+num3[1]+"<br>");

    String[] gd = new String[]{"��", "��","��"};
    String[] name = new String[3];

    name[0] = "������";
    name[1] = "�����";
    name[2]="��ä��";

    for(int i = 0; i<3; i++) {
        out.print(name[i]+"�л��� �⸻������ "+gd[i]+" �Դϴ�.<br>");
    }
    
%>

