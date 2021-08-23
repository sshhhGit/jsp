<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.io.*"
    import="java.util.*"
    import="com.oreilly.servlet.*"
    import="com.oreilly.servlet.multipart.*"
    %>
<%-- fileupload2.jsp --%>
<%
request.setCharacterEncoding("UTF-8");
String savepath = "c:\\_upload\\";
int size = 1024*1024*5;

try{
	MultipartRequest mul = new MultipartRequest(request, savepath, size, "utf-8", new DefaultFileRenamePolicy());
	
	String name = mul.getParameter("name");
	String tel = mul.getParameter("tel");
	String email = mul.getParameter("email");
	
	out.println("이름 : " + name + "<br>");
	out.println("전화 : " + tel + "<br>");
	out.println("이메일 : " + email + "<br>");
}catch(Exception ex){
	
}
%>