<%@ page  contentType="text/html; charset=EUC-KR" %>
http://localhost:8080/jsp/a13.jsp<br>
<%
    int n1 = 5;
    switch(n1) {
        case 10:
            out.print("ȸ���� ��� ����Դϴ�.<br>");
            break;
        case 9:
        case 8:
        case 7:
        case 6:
        case 5:
            out.print("ȸ���� �ǹ� ����Դϴ�.<br>");
            break;
        default:
            out.print("ȸ���Դϴ�. <br>");
    }
%>




