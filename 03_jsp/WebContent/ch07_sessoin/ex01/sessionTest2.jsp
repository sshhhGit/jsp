<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- sessionTest2.jsp --%>
<%
request.setCharacterEncoding("UTF-8");

String season = request.getParameter("season");
String fruit = request.getParameter("fruit");
String id = (String)session.getAttribute("id");

String sessionID = session.getId(); //sessionID는 자동으로 부여된다
%>

<%
if(id != null){ //로그인 상태라면
	%>
	<b><%=id %></b>님이 좋아하는 계절과 과일은<br>
	<b><%=season %></b>과<b><%=fruit %></b>입니다
	<br>
	sessionID : <%=sessionID %>
	<%
}else{ //로그인 상태가 아니라면
	out.println("세션시간이 경과 되었거나 다른이유로 연결할 수 없습니다. 다시 로그인 해주세요.");
	
}
%>