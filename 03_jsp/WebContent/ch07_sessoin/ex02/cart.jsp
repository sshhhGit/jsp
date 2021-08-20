<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%-- cart.jsp --%>

<%
request.setCharacterEncoding("UTF-8");
%>
<html>
<body>
<%@ include file="menu.jsp" %>
<%
String step = request.getParameter("step"); //add, remove
String item = request.getParameter("item");

Vector vec = null; //변수

if(item != null){ //선택한 상품이 있다면
	vec = (Vector)session.getAttribute("crat");
	if(vec == null){ //처음으로 장바구니에 넣게하기위해
		vec = new Vector();
		vec.add(item);
		session.setAttribute("cart", vec);
	} else{ //이미 장바구니에 물건이 들어있는 경우
		if(step.equals("add")){
			vec.add(item); //장바구니 넣기
		} else if(step.equals("remove")){
			vec.remove(item); //장바구니에서 제거
		}
	} //else-end
	
	out.println("<h3>쇼핑 cart에 담길 CD</h3>");
	
	for(int i=0; i<vec.size(); i++){
		out.println(((i+1)+" : "+vec.get(i).toString()+"<br>"));
	}//for-end
	%>
	현재 cart 모두 <%=vec.size() %>개 담겼습니다.
	
	<%
	if(vec.size()>0){ //장바구니에 내용이 있을때
	%>
	<jsp:include page="remove.jsp" flush="false"></jsp:include>
	<%
	} //if-end
	
} //if-end
%>
</body>
</html>