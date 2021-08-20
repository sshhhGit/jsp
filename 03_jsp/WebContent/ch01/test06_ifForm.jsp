<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
h2 {
	text-align: center;
}
table {
	margin: auto;
}
</style>
</head>
<body>
 <h2>아래 정보를 입력하세요</h2>
 <form method="post" action="test06_ifPro.jsp">
  <table border="1">
   <tr>
    <td>이름</td>
    <td><input type="text" name="name" size="30"></td>
   </tr>
   <tr>
    <td colspan="2">
    	당신이 좋아하는 색상을 선택하세요<br>
    	
    	<select name="color">
	    	 <option value="blue" selected>파랑</option>
	    	 <option value="yellow">노랑</option>
	    	 <option value="cyan">하늘</option>
	    	 <option value="red">빨강</option>
	    	 <option value="pink">분홍</option>
    	</select>	
    </td>	
   </tr>
   
   <tr>
    <td colspan="2" align="center">
     		<input type="submit" value="전송">
     		<input type="reset" value="다시입력">
    </td>
   </tr>
  </table>
 </form>
</body>
</html>