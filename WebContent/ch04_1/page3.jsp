<%@ page contentType="text/html; charset=EUC-KR"
    	 pageEncoding="UTF-8"
    	 trimDirectiveWhitespaces="false"
    	 isELIgnored="true"
    	 %>
<%
/*  charset:Client가 받아볼 html 소스의 인코딩 방식
	pageEncoding : 현재 JSP 소스의 인코딩 방식       
	그러나 pageEncoding 선언되지 않으면 charset이 두가지를 다 세팅함.*/
	request.setCharacterEncoding("EUC-KR");
%>
세션ID:<%=session.getId()%>
사이트명:${site}