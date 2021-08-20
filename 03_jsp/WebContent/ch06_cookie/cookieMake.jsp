<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<%-- cookieMake.jsp --%>
<%
request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//쿠키심기
String visitor = request.getParameter("visitor");

Cookie cookie = new Cookie("visitor", URLEncoder.encode(visitor));
response.addCookie(cookie); //클라이언트에 쿠키 심기
%>

<a href="cookieView.jsp">cookieView.jsp 돌아가기</a>
</body>
</html>