<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="mail.*"
    import="com.oreilly.servlet.*"
    %>
<%-- MailSender.jsp --%>

<jsp:useBean id="mm" class="mail.MailSender">
	<jsp:setProperty name="mm" property="*"/>
</jsp:useBean>

<% mm.send();%>