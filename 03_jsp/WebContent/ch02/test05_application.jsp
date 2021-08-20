<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
out.println("application.getServerInfo():"+application.getServerInfo()+"<br>");
//aa.html
//aa.html의 MIME Type 알아보기
out.println(application.getMimeType("aa.html")+"<br>");

/* 
MIME type
MIME(Multi purpose Internet Mail Extensions)
은 인터넷 전자우편으로 텍스트이외의 음성, 동영상등 다양한 데이터르 보내기 위한 표준
예: text/html, text/xml, image/jpg, image/gif

따라서 JSP 컨테이너가 클라이언트에게 문서를 보낼때
이문서는 어떤 형식의 문서이다(text/html)라고 지정해 주어야한다 **/

%>
<h2>사용버전 알아내기</h2>
메이저 버전 : <%= application.getMajorVersion() %><br>
마이너 버전 : <%= application.getMinorVersion() %><br>

<br>
실제경로 : <%= application.getRealPath("/") %>

<%
//log기록
application.log("오늘은 화요일");
%>
<%-- context경로 구하기, 이미지를 출력 할 때 사용 --%>
<br>
context path : 
<%= application.getContextPath() %>
</body>
</html>