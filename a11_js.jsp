<%@ page  contentType="text/html; charset=EUC-KR" %>
http://localhost:8080/jsp/a11_js.jsp<br>
<script>
    aa = prompt("점수 입력");
    aa1 = seval(aa);
    j=Math.floor(aa1/10);
    document.write(j+"<br>");
    if(j==10){
        document.write("만점입니다. <br>");
    }
    if(j==9){
        document.write("90점대입니다. <br>");
    }
    if(j==8){
        document.write("80점대입니다. <br>");
    }
    else{
        document.write("80점대 미만 또는 100점 이하로 쓰세요. <br>");
    }
</script>


