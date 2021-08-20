<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>forward 액션</h2>
<form action="forwardPro.jsp" method="post">
 <table>
  <tr>
   <td>이름</td>
   <td><input type="text" name="name" size="30"></td>
  </tr>
  <tr>
   <td>전화</td>
   <td><input type="text" name="tel" size="14"></td>
  </tr>
  <tr>
   <td>주소</td>
   <td><input type="text" name="addr" size="50"></td>
  </tr> 
  <tr>
   <td colspan="2" align="center">
    <input type="submit" value="전송">&nbsp;
    <input type="reset" value="다시입력">&nbsp;
   </td>
  </tr>
 </table> 
</form>
</body>
</html>