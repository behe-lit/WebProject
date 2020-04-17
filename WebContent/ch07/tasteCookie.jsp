<%@ page contentType="text/html; charset=EUC-KR"
    %>
<%
	request.setCharacterEncoding("EUC-KR");
	//
	Cookie[] cookies = request.getCookies();
	
	if(!cookies.equals("") || cookies != null) {
		for(int i=0; i<cookies.length; i++) {%>
			Cookie Name = <%=cookies[i].getName()%><br>
			Cookie Value = <%=cookies[i].getValue()%><p>
			<%
		}
	}
%>

<a href="cookieCookie.jsp">ÄíÅ°¿ä¸®</a>