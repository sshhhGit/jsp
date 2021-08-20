<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- top.jsp --%>
<%
String id = (String)session.getAttribute("id");
String log = "";
String mem = "";

if(id == null){//로그인이 안된 경우
	log = "<a href='login.jsp'>로그인</a>";
}else{ //로그인이 된 경우
	log = "<a href='logout.jsp'>로그아웃</a>";
}

if(id == null){
	mem = "<a href='member.jsp'>회원가입</a>";
}else{ 
	mem = "<a href='memberUpdate.jsp'>내정보 수정</a>";
}
%>
<table width="70%" align="center" bgcolor="#ffff99">
 <tr bgcolor="#ffcc00">
  <td><%=log %></td>
  <td><%=mem %></td>
  <td><a href="">상품목록표</a></td>
  <td><a href="">장바구니</a></td>
  <td><a href="">구매목록</a></td>
 </tr>
</table>