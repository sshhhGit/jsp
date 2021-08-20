<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- login.jsp --%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>로그인</h2>

<table border="1" align="center">
	<tr>
		<td>ID</td>
		<td><input type="text" name="id" size="20"></td>
	</tr>
	<tr>
		<td>암호</td>
		<td><input type="password" name="pw" size="20"></td>
	</tr>
	
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="전송">&nbsp;
			<input type="reset">
		</td>
	</tr>
</table>
</body>
</html>