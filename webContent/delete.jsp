<%@page import="com.javaex.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="com.javaex.dao.*" %>  

<%
	GuestbookDao guestbookDao = new GuestbookDao();

	

	String password = request.getParameter("password");
	
	int no = Integer.parseInt(request.getParameter("no"));
	

	
	
		
		guestbookDao.guestbookDelete(no, password);
		
		response.sendRedirect("./list.jsp");
		
	
	
	//if (pass.equals(guestbookVo.getPassword())) {
	
	//int count = guestbookDao.guestbookDelete(no);
	
	//response.sendRedirect("./list.jsp");
	
	//if문으로 대조할려면 화면에 출력된 비밀번호를 받아와야함. 즉, 쿼리문을 사용하는게 낫다.

	
	


%>

