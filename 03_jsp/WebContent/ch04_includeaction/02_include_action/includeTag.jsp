<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>includeTag.jsp</title>
</head>
<body>
includeTag.jsp 본문내용<br>
includeTag.jsp 본문내용<br>
includeTag.jsp 본문내용<br>
includeTag.jsp 본문내용<br>
<hr>
<jsp:include page="top.jsp">
	<jsp:param value="수퍼맨" name="name"/>
	<jsp:param value="서울 강남구" name="addr"/>
</jsp:include>
<hr>
includeTag.jsp 본문내용<br>
includeTag.jsp 본문내용<br>
includeTag.jsp 본문내용<br>
includeTag.jsp 본문내용<br>
</body>
</html>