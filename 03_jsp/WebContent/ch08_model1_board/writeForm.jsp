<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- writeForm.jsp --%>
<%
//글쓰기, 글수정, 글삭제
String id = (String)session.getAttribute("id");

/*
if(id == null){ //인증되지않은 상태
	out.println("<script>");
	out.println("alert('로그인을 하셔야 글 작성이 가능합니다.')");
	out.println("");
	out.println("</script>");
	return;
}
*/
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function check() {
		var ff = document.wForm;
		if(ff.writer.value==''){
			alert("이름을 입력하세요");
			ff.writer.focus();
			return false;
		}
		if(ff.subject.value==''){
			alert("글 제목을 입력하세요");
			ff.subject.focus();
			return false;
		}
		if(ff.content.value==''){
			alert("글 내용을 입력하세요");
			ff.content.focus();
			return false;
		}
		if(ff.pw.value==''){
			alert("암호를 입력하세요")
			ff.pw.focus();
			return false;
		}
		return true;
	}
</script>
<style type="text/css">
	h2{text-align: center;}
	table {margin: auto;}
</style>
</head>
<body>
<h2>글쓰기 폼</h2>
<table width="60%">
	<tr>
	  <td align="right">
	    <a href="list.jsp">리스트</a>
	  </td>
	</tr>
</table>

<form name="wForm" method="post" action="writePro.jsp" onSubmit="return check()">
	<table width="60%" border="1">
	  <tr>
	    <td>이름</td>
	    <td><input type="text" name="writer" size="30"></td>
	  </tr>
	  <tr>
	    <td>글제목</td>
	    <td><input type="text" name="subject" size="40"></td>
	  </tr>
	  <tr>
	    <td>글내용</td>
	    <td>
	    <textarea rows="10" cols="50" name="content"></textarea>
	    </td>
	  </tr>
	  <tr>
	    <td>암호</td>
	    <td><input type="password" name="pw" size="10"></td>
	  </tr>
	  <tr>
	    <td colspan="2" align="center">
	        <input type="submit" value="글쓰기">&nbsp;
	        <input type="reset">
	    </td>
	  </tr>
	</table>

</form>
</body>
</html>