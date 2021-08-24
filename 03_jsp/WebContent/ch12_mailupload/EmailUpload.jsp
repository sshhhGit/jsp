<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.oreilly.servlet.*"
    import="com.oreilly.servlet.multipart.*"
    
    %>
<%-- EmailUpload.jsp --%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="bean" class="mailupload.EmailUpload"/>
<%=bean.upload(request) %>
  