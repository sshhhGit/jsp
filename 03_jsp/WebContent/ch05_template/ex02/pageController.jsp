<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- pageController.jsp --%>

<h2>페이지의 흐름 제어</h2>
<%
request.setCharacterEncoding("UTF-8"); //클라이언트가 post요청을 했을 때 한글 처리

String product = request.getParameter("product");
String control = null; 		//변수
String contentPage = null; 	//변수
String pageTitle = null; 	//변수
%>

<%
if(product.equals("d")){
	control = "dc";
	contentPage = "dc.jsp";
	pageTitle = "디지털 카메라";
			
} else if(product.equals("p")){
	control = "pmp";
	contentPage = "pmp.jsp";
	pageTitle = "PMP";
}//else if-end
%>
<jsp:forward page="template.jsp">
	<jsp:param name="control" value="<%=control %>"/>
	<jsp:param name="contentPage" value="<%=contentPage %>"/>
	<jsp:param name="pageTitle" value="<%=pageTitle %>"/>
</jsp:forward>