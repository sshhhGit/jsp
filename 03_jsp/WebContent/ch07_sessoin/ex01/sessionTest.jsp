<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- sessionTest.jsp --%>
<%
request.setCharacterEncoding("UTF-8");

String id = request.getParameter("id");
String pw = request.getParameter("pw");

session.setAttribute("id", id); //중요
%>
<form method="post" action="sessionTest2.jsp">
1. 좋아하는 계절은?<br>
<input type="radio" name="season" value="봄">봄<br>
<input type="radio" name="season" value="여름">여름<br>
<input type="radio" name="season" value="가을">가을<br>
<input type="radio" name="season" value="겨울">겨울<br>
<br>
<br>
2. 가장 좋아하는 과일은?<br>
<input type="radio" name="fruit" value="복숭아">복숭아<br>
<input type="radio" name="fruit" value="수박">수박<br>
<input type="radio" name="fruit" value="참외">참외<br>
<input type="radio" name="fruit" value="배">배<br>
<br>
<input type="submit" value="전송">
</form>