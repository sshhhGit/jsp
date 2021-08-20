<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- join.jsp --%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h2><center>회원가입</center></h2>
 <table border="1" align="center">
 	<tr>
 	  <td>ID</td>
 	  <td><input type="text" name="id" size="20"></td>
 	</tr>
 	<tr>
 	  <td>암호</td>
 	  <td><input type="password" name="pw" size="10"></td>
 	</tr>
 	<tr>
  	  <td>이름</td>
 	  <td><input type="text" name="name" size="30"></td>
 	</tr>
 	<tr>
 	  <td>이메일</td>
 	  <td><input type="text" name="email" size="40"></td>
 	</tr>
 	<tr>
 	  <td>전화</td>
 	  <td><input type="text" name="tel" size="14"></td>
 	</tr>
 
 	<tr>
 	  <td colspan="2" align="center">
 	    <input type="submit" value="회원가입">
 	    <input type="reset">
 	</tr>
 </table>
</body>
</html>