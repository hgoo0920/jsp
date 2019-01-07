<%@ page contentType = "text/html;charset=UTF-8" %>
<%--설정부분 : JSP페이지에 대한 설정 정보 --%>

<%--생성부분 : HTML 코드 및 JSP 스크립트 --%>
<html>
<head>
<title>HTML 문서의 제목</title>
</head>
<body>
<%
	String bookTitle="JSP 프로그래밍";
	String author="최범균";
	%>
	<b><%=bookTitle %></b>(<%= author %>)입니다.
	</body>
	</html>