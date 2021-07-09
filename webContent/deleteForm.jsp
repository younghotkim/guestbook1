<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.*" %>
<%@ page import="com.javaex.vo.*" %>

<%


	GuestbookDao guestbookDao = new GuestbookDao();
	
	int no = Integer.parseInt(request.getParameter("no"));
	
	GuestbookVo guestbookVo = guestbookDao.getGuest(no);




%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="delete.jsp" method="get">
	
	비밀번호 <input type="password" name="password" value="<%String pass = null;%>>">
	
	<button type="submit">확인</button>
	
	</form>

	
</body>
</html>