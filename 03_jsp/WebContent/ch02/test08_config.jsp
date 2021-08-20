<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
서블릿 이름 : <%= config.getServletName() %><br>
서블릿 : <%= config.getServletContext() %><br>

web.xml에 설정해놓은 값<br>
이름 : <%= application.getInitParameter("name")%><br>
이름 : <%= config.getServletContext().getInitParameter("name")%><br>
<br>
context : <%= config.getServletContext() %><br>
context : <%= request.getContextPath() %><br><br>

realpath : <%= config.getServletContext().getRealPath("/") %><br>
realpath : <%=request.getServletContext().getRealPath("/") %>
</body>
</html>