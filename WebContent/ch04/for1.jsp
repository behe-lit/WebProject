<%@ page contentType="text/html; charset=EUC-KR"
    %>
<%@ page import = "ch04.MUtil" %>    
   

<%
	int sum=0;
	for(int i=1; i<=10; i++) {
		sum +=i;
	}
%>

<%

	int result;
	result = MUtil.totalCalc(9, 10);
	out.println("합계 :" + result);
%>

<!Doctype HTML>
<html>
<head>
<title></title>
</head>
<body>

합계:<%=sum%>

</body>
</html>