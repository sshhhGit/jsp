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
	//파일업로드
	MultipartRequest mul = new MultipartRequest(request, savepath, size, "utf-8", new DefaultFileRenamePolicy());
	
	//일반데이터 받아서 처리
	String name = mul.getParameter("name");
	String tel = mul.getParameter("tel");
	String email = mul.getParameter("email");
	
	out.println("이름 : " + name + "<br>");
	out.println("전화 : " + tel + "<br>");
	out.println("이메일 : " + email + "<br>");
	
	//파일 업로드 관련 처리
	
	//서버에 저장된 이름
	String fileName2 = mul.getFilesystemName("f1");
	
	//원래이름
	String originalName = mul.getOriginalFileName("f1");
	
	//파일 정보를 File형으로 리턴
	File file = mul.getFile("f1");
	
	//전송된 file의 contnetType
	String type = mul.getContentType("f1");
	
	out.println("<br><br>originalName : " + originalName + "<br>");
	out.println("서버에 저장된 파일 이름 : " + fileName2 + "<br>");
	out.println("ContentType : " + type + "<br>");
	
	if(file != null){
		out.println("파일 size : " + file.length()+"<br>");
	}
}catch(Exception ex){
	out.println("파일 업로드 예외 : " + ex);
} 
%>