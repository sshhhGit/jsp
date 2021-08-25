<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="boardre.*"
    import="java.utli.*"%>
<%-- list.jsp --%>
<%
request.setCharacterEncoding("UTF-8");
%>

<%
int nowPage = 0;		//현재 페이지
int nowBlock = 0;		//현재 블럭

int totalRecord = 0;	//전체 글 갯수
int numPerPage = 0;		//페이지 당 글 갯수

int totalPage = 0;		//전체 페이지 갯수
int totalBlock = 0; 	//전체 블럭 갯수

int pagePerBlock = 0;	//블럭 당 페이지 갯수

int beginPage = 0;		//시작페이지
%>