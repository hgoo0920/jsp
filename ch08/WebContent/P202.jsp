<%@ page contentType="text/html;charset=UTF-8" %>
<%
	request.setCharacterEncoding("UTF-8");
	%>
<jsp:useBean id="memberInfo" class="ch08.member.MemberInfo" />
<jsp:setProperty name="memberInfo" property="*" />
<jsp:setProperty name="memberInfo" property="password"
	value="<%= memberInfo.getId() %>" />
<html>
<head>
<title>가입</title>
</head>
<body>

<table width="400" border="1" cellpadding="0" cellspacing="0">
<tr>
	<td>아이디</td>
	<td><jspProperty name="memberInfo" property="id" /></td>
	<td>암호</td>
	<td><jspProperty name="memberInfo" property="password" /></td>
	</tr>
	<td>이름</td>
	<td><jspProperty name="memberInfo" property="name" /></td>
	<td>이메일</td>
	<td><jspProperty name="memberInfo" property="email" /></td>
	</tr>
	
	</table>
</body>
</html>