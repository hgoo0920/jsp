<%@ page import="sub1.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginProc</title>
</head>
<body>
	<h3>로그인 처리</h3>
	<%
		request.setCharacterEncoding("UTF-8");
		String uid = request.getParameter("uid");
		String pass = request.getParameter("pass");
		
		//데이터베이스 로직
		
		// 아이디가 abcd고 비밀번호가 1234가 맞을 경우
		if(uid.equals("abcd") && pass.equals("1234")) {
			
			//자바빈 생성 및 값 셋팅
			User user = new User();
			user.setUid("abcd");
			user.setPass("1234");
			user.setName("홍길동");
			
			//세션 저장
			session.setAttribute("user", user);
			
			response.sendRedirect("./loginResult.jsp?=surccess");
			
		} else {
			//회원이 아닐 경우
			response.sendRedirect("./loginResult.jsp?=fail");
			
		}
	%> 
</body>
</html>