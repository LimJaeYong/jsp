<%@ page  contentType="text/html; charset=UTF-8" %>
<br>
<h3>request 객체 정보</h3><p>
<%="요청정보 길이 : "+request.getContentLength()+"<p>"%>
<%="웹 전달 경로 : "+request.getContextPath()+"<p>" %>
<%="클라이언트 이름 : "+request.getRemoteHost()+"<p>" %>
<%="클라이언트 IP 주소 : "+request.getRemoteAddr() +"<p>" %>
<%="프로토콜 이름 : "+request.getProtocol()+"<p>" %>
<%="클라이언트 URL 경로 : "+request.getRequestURL()+"<p>"  %>
<%="서버 이름 : "+request.getServerName()+"<p>" %>
<%="서버 포트 번호 : "+request.getServerPort()+"<p>" %>
<%="전송 방식 : "+request.getMethod()+"<p>" %>
