<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String name = "Korea Football";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>includeActionTest.jsp</title>
</head>
<body>
includeActionTest.jsp 내용<br>
includeActionTest.jsp 내용<br>
includeActionTest.jsp 내용<br>
<hr>

<jsp:include page="includeTop.jsp" />
	<jsp:param name="name" value="홍길동"/>


<hr>
includeActionTest.jsp 내용<br>
includeActionTest.jsp 내용<br>
includeActionTest.jsp 내용<br>
</body>
</html>