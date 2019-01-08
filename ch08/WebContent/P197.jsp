<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:useBean id="member" scope="request" class="ch08.member.MemberInfo" />
<%
	member.setId("madvirus");
	member.setName("최범균");
%>
<jsp:forward page="/P198.jsp" />