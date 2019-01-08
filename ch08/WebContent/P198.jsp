<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:useBean id="member" scope="request"
	class="ch08.member.MemberInfo" />
<html>
<head>
<title>인사말</title>
</head>
<body>

<%= member.getName() %> (<%= member.getId() %>) 회원님
안녕하세요.

</body>
</html>