<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test07_WhileForm.jsp</title>
</head>
<body>
<center><h2>while문 예제</h2></center>

<form method="post" action="test07_whilePro.jsp">

반복하고싶은 문구 : <input type="text" name="msg" size="50"><br>
반복하고싶은 횟수 : <input type="text" name="cnt" size="20"><br>
<input type="submit" value="전송">
<input type="reset" value="다시입력">

</form>

</body>
</html>