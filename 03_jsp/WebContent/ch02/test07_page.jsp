<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="예제" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

info : <%= this.getServletInfo() %><br>
서블릿 이름 : <%= this.getServletName() %><br>
클래스 : <%= this.getClass() %>

</body>
</html>