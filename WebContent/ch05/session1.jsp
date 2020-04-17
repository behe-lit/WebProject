<%@ page contentType="text/html; charset=UTF-8"
    %>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	//DB연동
	//세션이라는 저장 공간에 저장 : 클라이언트 단위로 객체가 생성
	session.setAttribute("id", "pwd");
	
	session.setMaxInactiveInterval(3*60); //3분
%>
<FORM METHOD="POST" ACTION="session2.jsp">
    1.가장 좋아하는 계절은?<br>
	<INPUT TYPE="radio" NAME="season" VALUE="봄">봄
	<INPUT TYPE="radio" NAME="season" VALUE="여름">여름
	<INPUT TYPE="radio" NAME="season" VALUE="가을">가을
	<INPUT TYPE="radio" NAME="season" VALUE="겨울">겨울<p>

	2.가장 좋아하는 과일은?<br>
	<INPUT TYPE="radio" NAME="fruit" VALUE="watermelon">수박
	<INPUT TYPE="radio" NAME="fruit" VALUE="melon">멜론
	<INPUT TYPE="radio" NAME="fruit" VALUE="apple">사과
	<INPUT TYPE="radio" NAME="fruit" VALUE="orange">오렌지<p>
	<INPUT TYPE="submit" VALUE="결과보기">
</FORM>