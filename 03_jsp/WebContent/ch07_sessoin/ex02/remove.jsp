<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>

<%-- remove.jsp --%>

<%
Vector vec = (Vector)session.getAttribute("cart");
%>
<h2>삭제할 CD를 선택하시오</h2>
<form method="post" action="cart.jsp">
	<select name="item">
	<%
	 for(int i=0; i<vec.size(); i++){
	%>
	<option value="<%vec.get(i).toString();%>"><%vec.get(i).toString();%></option>
	<%
	 }
	%>
	</select>
	<input type="hidden" name="step" value="remove">
	<input type="submit" value="삭제">
</form>