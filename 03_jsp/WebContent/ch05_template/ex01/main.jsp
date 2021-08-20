<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- main.jsp --%>

<jsp:forward page="template.jsp">
 <jsp:param value="content.jsp" name="contentPage"/>
</jsp:forward>