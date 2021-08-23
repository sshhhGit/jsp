<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="mypa.*"%>
<%-- TestBean3.jsp --%>
<%
request.setCharacterEncoding("UTF-8"); //post 요청 한글처리
%>

<jsp:useBean id="dto" class="mypa.TestDTO3">
  <jsp:setProperty name="dto" property="*"/>
</jsp:useBean>

<%
if(request.getParameter("color") != null){
	%>
	<%=dto.getName() %>님이 좋아하는 색은
	<font color = "<%=dto.getColor()%>">
		<%=dto.getColor()%>
	</font>
	입니다.
	<%
	}//if=end
%>