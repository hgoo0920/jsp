<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>5-2</title>
</head>
<body>
<h3>내장객체 범위값 확인</h3>
<% 
	Object pName = (String)pageContext.getAttribute("name");
	Object rName = (String)request.getAttribute("name");
	Object sName = (String)session.getAttribute("name");
	String aName = (String)application.getAttribute("name").toString();
	
%>

<h4>pageContext Name값 : <%= pName %></h4>
<h4>request Name값 : <%= rName %></h4>
<h4>session Name값 : <%= sName %></h4>
<h4>application Name값 : <%= aName %></h4>
</body>
</html>