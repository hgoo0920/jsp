<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	
	if(){
		//response.sendRedirect("./login.jsp");
		pageContext.forward("./login.jsp");
	}else{
		//response.sendRedirect("./list.jsp");
		pageContext.forewad("./list.jsp");
	}
	
%>










