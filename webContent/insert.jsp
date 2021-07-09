<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.*" %>
<%@ page import="com.javaex.vo.*" %>     
<%@ page import="java.util.List" %>

<%

	request.setCharacterEncoding("UTF-8");


	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	String reg_date = request.getParameter("reg_date");
	
	System.out.println(name + password + content + reg_date);

	GuestbookVo guestbookVo = new GuestbookVo(name, password, content, reg_date);
	
	GuestbookDao guestbookDao = new GuestbookDao();
	
	guestbookDao.guestbookInsert(guestbookVo);
	
	List<GuestbookVo> guestbookList = guestbookDao.getGuestbookList();
	
	System.out.println(guestbookList.toString());
	
	response.sendRedirect("./list.jsp");
	
	
	
	
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