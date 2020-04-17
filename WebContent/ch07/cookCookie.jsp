
<%@ page contentType="text/html; charset=EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
	String cookieName = "myCookie";
	//쿠키 객체를 생성
	Cookie cookie = new Cookie(cookieName,"Apple");
	cookie.setMaxAge(60);//1분 후 자동 소멸
	//쿠키값 변경
	cookie.setValue("Melone");
	//쿠키는 서버에서 객체를 생성 -> Client로 보낸다
	response.addCookie(cookie);
%>
쿠키제작 <br>
쿠키내용은 <a href="tasteCookie.jsp"></a>