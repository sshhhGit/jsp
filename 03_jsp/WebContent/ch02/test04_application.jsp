<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>web.xml에 설정된 초기 파라미터 실습</h2>

이름 : <%= application.getInitParameter("name") %><br>
ID : <%= application.getInitParameter("id") %><br>
</body>
</html>