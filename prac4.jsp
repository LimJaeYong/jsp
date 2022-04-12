<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%
    request.setCharacterEncoding("utf-8");

    String n = request.getParameter("site");
    //int m = Integer.parseInt(n);


    if(n.equals(1))
        response.sendRedirect("http://www.halla.ac.kr");
    if(n == "2")
        response.sendRedirect("http://www.naver.com");
    if(n == "3")
        response.sendRedirect("http://www.daum.net");

    /*switch(Integer.parseInt(n)){
        case 1:
        response.sendRedirect("http://www.halla.ac.kr");
        break;
        case 2:
        response.sendRedirect("http://www.naver.com");
        break;
        case 3:
        response.sendRedirect("http://www.daum.net");
        break;
    }*/
%>


