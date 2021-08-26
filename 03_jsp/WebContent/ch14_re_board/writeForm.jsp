<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- writeForm.jsp --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>wirteForm.jsp</title>
<style type="text/css">
	h2{text-align: center;}
	table {
		margin: auto;
		width: 80%;
		}
</style>

<script type="text/javascript">
	function check() {
		//데이터 유효성 체크
		ff=document.wirteForm;
		
		if(ff.name.value==''){
			alert("이름을 입력하세요");
			ff.name.focus();
			return false;
		}
		if(ff.subject.value==''){
			alert("제목을 입력하세요");
			ff.subject.focus();
			return false;
		}
		if(ff.content.value==''){
			alert("내용을 입력하세요");
			ff.content.focus();
			return false;
		}
		if(ff.pw.value==''){
			alert("암호를 입력하세요");
			ff.pw.focus();
			return false;
		}
		return true;
	}
</script>
</head>
<body>
<table>
  <tr>
    <td align="right">
      <a href="list.jsp">리스트</a>
    </td>
  </tr>
</table>

<form name="wirteForm" action="writePro.jsp" method="post" onsubmit="return check()">
<table border="1">
  <tr>
    <td colspan="2" align="center">
      <font size="5">[글쓰기]</font>
    </td>
  </tr>
  
  <tr>
    <td>이름</td>
    <td><input type="text" name="name" size="30"></td>
  </tr>
  <tr>
    <td>글제목</td>
    <td><input type="text" name="subject" size="40"></td>
  </tr>
  <tr>
    <td>글내용</td>
    <td><textarea name="content" rows="10" cols="50"></textarea></td>
  </tr>
  <tr>
    <td>암호</td>
    <td><input type="password" name="pw" size="10"></td>
  </tr>
  <tr>
    <td colspan="2" align="center">
      <input type="submit" value="등록">
      <input type="reset" value="취소">
      <input type="button" value="리스트" onclick="javaScript:location='list.jsp">
  </tr>
</table>
</form>
</body>
</html>