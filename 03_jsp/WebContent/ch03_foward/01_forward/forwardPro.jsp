<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8"); //포스트요청 한글 처리
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>forwardPro.jsp</title>
</head>
<body>
<h2>^.^ forwardPro.jsp ^.^</h2>

<jsp:forward page="forwardPro2">
 <jsp:param value="ppp@naver.com" name="email"/>
 <jsp:param value="ppp123" name="pw"/>
</jsp:forward>

</body>
</html>