<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test08postForm.jsp</title>
</head>
<body>
<h2>post요청</h2>
<form method="post" action="test08Pro.jsp">
이름 : <input type="text" name="name" size="30"><br>
주소 : <input type="text" name="addr" size="60"><br>
<input type="submit" value="전송">
<input type="reset" value="다시입력">
</form>
</body>
</html>