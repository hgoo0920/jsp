<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%
	final String HOST = "jdbc:mysql//192.168.0.156/shm";
	final String USER = "shm";
	final String PASS = "1234";
	
	request.setCharacterEncoding("UTF-8");
	
	String uid = request.getParameter("uid");
	String sql = request.getParameter("sql");
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String addr = request.getParameter("addr");
	String pos = request.getParameter("pos");
	String dep = request.getParameter("dep");
	
	Connection conn = null;
	
	PreparedStatement psmt = null;
	
	try {
	
	
	
	Class.forName("com.mysql.jdbc.Driver");
	
	conn = DriverManager.getConnection(HOST, USER, PASS);
	
		
	int dp = Integer.parseInt(dep);
	
	}catch(Exceiption e){
		
		e.printStackTrace();
		
	}finally{
		
		
	}
	
	
%>
<body>

</body>
</html>