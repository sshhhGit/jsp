<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- writeForm.jsp --%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2><center>글쓰기 폼</center></h2>

<form action="writePro.jsp" method="post">
  <table border="1" align="center">
    <tr>
      <td colspan="2" align="right">
        <a href="list.jsp">리스트</a>
      </td>
    </tr>
    
    <tr>
      <td>아이디</td>
      <td><input type="text" name="id" size="20"></td>
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
      <td>글내용</td>
      <td>
      <textarea rows="10" cols="50" name="content"></textarea>
      </td>
    </tr>
    <tr>
      <td colspan="2" align="center">
        <input type="submit" value="글쓰기">
        <input type="reset" value="취소">
        <a href="list.jsp">리스트</a>
      </td>
    </tr>  
  </table>
</form>
</body>
</html>