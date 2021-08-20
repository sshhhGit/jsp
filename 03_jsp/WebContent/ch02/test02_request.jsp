<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test02_request.jsp</title>
</head>
<body>
<%
String ip = request.getRemoteAddr();
if(ip.equals("192.168.0.34")||ip.equals("192.168.0.36")){
	out.println("이" +ip+"로는 접속이 불가능 합니다.");
	%>
	<script>
	alert("이  <%=ip%> 로는 접속 불가능 합니다")
	history.back();
	</script>
	<%
	return;
}
%>
<ol>
 <li>메서드 방식 : <%= request.getMethod() %>
 <li>요청 URI : <%= request.getRequestURI()%>
 <li>요청 URL : <%= request.getRequestURL()%>
 <br>
 <li>프로토콜 : <%= request.getProtocol() %>
 <li>서버이름 : <%= request.getServerName() %>
 <li>서버포트 : <%= request.getServerPort() %>
 <br>
 <li>클라이언트 IP주소 : <%= request.getRemoteAddr() %>
 <li>클라이언트 컴퓨터 이름 : <%= request.getRemoteHost() %>
 <br>
 <li>현재 사용중인 웹 브라우저 : <br>
 <%= request.getHeader("user-Agent") %>
</ol>
</body>
</html>