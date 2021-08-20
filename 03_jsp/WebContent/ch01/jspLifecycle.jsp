<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//자바구문
//지역변수
%>
<%!
//전역변수
//메서드정의
%>


<%!
String msg = "Hello"; //전역변ㅂ소

//jspInit() 오버라이딩
public void jspInit(){
	msg+=" jspInit()";
	System.out.println(msg);
}

//jspDestroy() 오버라이딩
public void jspDestroy(){
	System.out.println("jspDestroy() called...");
}
%>

<%--
_jspService() 실행결과가 출력되는 부붑ㄴ
클라이언트 요청을 병행적으로 받아가서 처리한다.
 --%>
 
 <%
 msg+="<br>_jspService()실행<br>안녕<br>";
 %>
 <%= msg %>

</body>
</html>
<%-- 
1. JspPage : 인터페이스 메서드
	- jspInit() : JSP페이지가 초기화 될 때 한번 호출
	- jspDestory() : JSP페이지가 메모리에서 제거되기 직전에 호출된다
	
2. HttpJspPage : 인터페이스 메서드
	- _jspService() : 클라이언트 요청을 처리하는 메서드, JSP컨테이너에서 의해서 자동으로 생성되어진다
	
3. JSP생명주기 
	- jspInit() => _jspService() => jspDestory()
					doGet()
					doPost()
					
4. 서블릿 생명주기
	init() ===> service() ===> destroy()
				doGet()
				doPost()
				

--%>