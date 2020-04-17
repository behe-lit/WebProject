<!-- script.jsp -->
<%@ page contentType="text/html; charset=EUC-KR"%>
<!-- 선언문(Declaration) --> //거의 사용 안됨
<%!
		String declaration = "Declaration";
		
		public String decMethod(){
			return declaration;
		}
%>
<!-- 스크립트릿(Scriptlet) --> //서비스 메소드 안에 표기되는 영역 (일반 메소드 선언 불가능)
<%
		String scriptlet = "Scriptlet";
		String comment = "Comment";
		
		out.println("내장객체를 이용한 출력 : " + declaration +"<p>");
%>
<!-- 표현식(Expression) -->

선언문의 출력1 : <%=declaration %><p>
선언문의 출력2 : <%=decMethod() %><p>
스크립트릿의 출력1 : <%=scriptlet %><p>



<%
	//한줄주석
	/*여러줄 주석(부분주석)*/
	String s /*부분설명*/="";
%>
