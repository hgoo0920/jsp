
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	final String HOST = "jdbc:mysql://192.168.0.156:3306/shm";
	final String USER = "shm";
	final String PASS = "1234";
	
	request.setCharacterEncoding("UTF-8");
	
	String uid = request.getParameter("uid");
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String addr = request.getParameter("addr");
	String pos = request.getParameter("pos");
	String dep = request.getParameter("dep");
	
	Connection conn = null;
	PreparedStatement psmt = null;
	
	
	int dp = Integer.parseInt(dep);
	
	try {
		
		Class.forName("com.mysql.jdbc.Dirver");
		
		conn = DriverManager.getConnection(HOST, USER, PASS);
		
		String sql = "CREATE TABLE `USER` SET name=?, hp=?, addr=?, pos=?, dep=? ";
			   sql += "WHERE uid=?";
			   
		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, name);
			   
		
		
		
		psmt.executeUpdate();
	}catch(Exception e){
		e.PrintStackTrace();
	}finally{
		close.psmt();
		close.conn();
	}
	
	%>
<body>

</body>
</html>