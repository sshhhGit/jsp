<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test03_response.jsp</title>
</head>
<body>
<%
out.println("현재 설정된 인코딩 문자 알아내기 <br>");
out.println(response.getCharacterEncoding());

//2초후에 네이버로 이동
//response.setHeader("Refresh", "2;URL=https://www.naver.com");
response.sendRedirect("test_request.jsp");
%>
<!-- <meta http-equiv="refresh" content="2;https://www.naver.com"> -->

</body>
</html>