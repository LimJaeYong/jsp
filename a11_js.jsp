<%@ page  contentType="text/html; charset=EUC-KR" %>
http://localhost:8080/jsp/a11_js.jsp<br>
<script>
    aa = prompt("���� �Է�");
    aa1 = seval(aa);
    j=Math.floor(aa1/10);
    document.write(j+"<br>");
    if(j==10){
        document.write("�����Դϴ�. <br>");
    }
    if(j==9){
        document.write("90�����Դϴ�. <br>");
    }
    if(j==8){
        document.write("80�����Դϴ�. <br>");
    }
    else{
        document.write("80���� �̸� �Ǵ� 100�� ���Ϸ� ������. <br>");
    }
</script>


