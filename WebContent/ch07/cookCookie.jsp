
<%@ page contentType="text/html; charset=EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
	String cookieName = "myCookie";
	//��Ű ��ü�� ����
	Cookie cookie = new Cookie(cookieName,"Apple");
	cookie.setMaxAge(60);//1�� �� �ڵ� �Ҹ�
	//��Ű�� ����
	cookie.setValue("Melone");
	//��Ű�� �������� ��ü�� ���� -> Client�� ������
	response.addCookie(cookie);
%>
��Ű���� <br>
��Ű������ <a href="tasteCookie.jsp"></a>