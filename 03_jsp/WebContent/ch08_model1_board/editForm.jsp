<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<%-- editForm.jsp --%>
<%!
String DRIVER = "com.mysql.jdbc.Driver";
String URL = "jdbc:mysql://localhost:3306/mydb";
String USER = "root";
String PWD = "12345";
%>
<%
request.setCharacterEncoding("UTF-8");
String num = request.getParameter("num");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	h2{text-align: center;}
	table {margin: auto;}
</style>
<script type="text/javascript">
	function check() {
		if (document.editForm.pw.value=='') {
			alert("암호를 입력하세요");
			document.editForm.pw.focus();
			return false;
		}
		document.editForm.action = "editPro.jsp?num=<%=num%>";
		document.editForm.submit();
	}
</script>
</head>
<body>
<%
Class.forName(DRIVER); //드라이버 로딩
Connection con = DriverManager.getConnection(URL,USER,PWD); //드라이버 연결
Statement stmt = con.createStatement(); //Statement생성

String sql = "select * from board1 where num=" + num;
ResultSet rs = stmt.executeQuery(sql); //쿼리 수행

if(rs.next()){
	String writer = rs.getString("writer");
	String subject = rs.getString("subject");
	String content = rs.getString("content");
%>
	<h2>글 수정 폼</h2>
	<form name="editForm" method="post">
	  <table border="1" width="50%">
	    <tr>
	      <td>글쓴이</td>
	      <td>
	      <input type="text" name="writer" size="30" value="<%=writer%>">
	      </td>
	    </tr>
	    <tr>
	      <td>글제목</td>
	      <td>
	      <input type="text" name="subject" size="40" value="<%=subject%>">
	      </td>
	    </tr>
	    <tr>
	      <td>글수정</td>
	      <td>
	      <textarea rows="10" cols="50" name="content"><%=content %></textarea>
	      </td>
	    </tr>
	    
	    <tr>
	      <td>암호</td>
	      <td>
	      <input type="password" name="pw" size="10">
	      <input type="hidden" name="num" value="<%=num%>">
	      </td>
	    </tr>
	    <tr>
	      <td colspan="2" align="center">
	        <input type="button" value="글수정" onclick="javaScript:check()">
	        <input type="button" value="이전" onclick="history.back()">
	        <input type="button" value="리스트" onClick="location.href="list.jsp"> 
	        <!-- <a href="list.jsp">리스트</a> -->
	      </td>
	    </tr>
	  </table>
	</form>

<%
}
%>
</body>
</html>