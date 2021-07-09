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
	
	
	List<GuestbookVo> guestbookList = guestbookDao.getGuestbookList();
	
	
	
		
		guestbookDao.guestbookDelete(no, password);
		
		response.sendRedirect("./list.jsp");
		
	
	
	//if (pass.equals(guestbookVo.getPassword())) {
	
	//int count = guestbookDao.guestbookDelete(no);
	
	//response.sendRedirect("./list.jsp");

	
	


%>

  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



</body>
</html>