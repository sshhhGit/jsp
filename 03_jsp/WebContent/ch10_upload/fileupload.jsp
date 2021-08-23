<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="upload.*"
    
    %>
<%-- fileupload.jsp --%>

<jsp:useBean id="up" class="upload.FileUploadBean"/>

<%=up.upload(request)%>