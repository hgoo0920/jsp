<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>8-1</title>
</head>
<body>
	<h3>2.전송 파라미터 출력</h3>
	<%
	request.setCharacterEncoding("UTF-8");
	/*
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String[] hobby = request.getParameterValue("hobby");
	String addr = request.getParameter("addr");
	*/%>
	<%-- useBean태그를 이용한 파라미터 수신 --%>
	<jsp:useBean id="user" class="sub1.User">
	<jsp:setProperty name="user" property="utd" />
	<jsp:setProperty name="user" property="gender" />
	<jsp:setProperty name="user" property="hobby" />
	<jsp:setProperty name="user" property="addr" />
	</jsp:useBean>

	
	<p>
		이름 : <jsp:setProperty name="user" property="utd" /><br />
		성별 : <jsp:setProperty name="user" property="gender" /><br />
		취미 : <jsp:setProperty name="user" property="hobby" /><br />
		주소 : <jsp:setProperty name="user" property="addr" />
	</p>

</body>
</html>