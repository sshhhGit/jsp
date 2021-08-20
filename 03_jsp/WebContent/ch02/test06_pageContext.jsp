<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
JspWriter out2 = pageContext.getOut();
out2.println("화요일");
%>
<br>
out객체 사용 : <%= pageContext.getOut() %><br>
request객체 사용 : <%= pageContext.getRequest() %><br>
session객체 사용 : <%= pageContext.getSession() %><br>
<br>
<%
pageContext.getOut().println("화요일2");
String name = pageContext.getServletContext().getInitParameter("name");
out.println("이름 : " + name);
%>
</body>
</html>