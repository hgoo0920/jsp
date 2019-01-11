<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="sub1.USER"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
	// 전송 파라미터 수신
		request.setCharacterEncoding("UTF-8");
		String seq = request.getParameter("seq");
		
		// 데이터베이스 정보
		final String HOST = "jdbc:mysql://192.168.0.156:3306/shm";
		final String USER = "shm";
		final String PASS = "1234";
		
		Connection conn = null;
		Statement stmt = null;
		
		try{
			// 1단계 - JDBC 드라이버 로드
						Class.forName("com.mysql.jdbc.Driver");
				
					// 2단계 - 데이터베이스 접속
						conn = DriverManager.getConnection(HOST, USER, PASS);
				
					// 3단계 - 쿼리실행 객체 생성
						stmt = conn.createStatement();
					
					// 4단계 - 쿼리실행
					// SELECT 경우 -> executeQuert() 실행
					// INSERT, UPDATE, DELETE 경우 -> executeUpdate() 실행
					
					String sql = "DELETE FROM `USER` WHERE seq="+seq;
					stmt.executeUpdate(sql);
						
								// 5단계 - 결과셋 처리(SELECT일 경우)

								
					} catch(Exception e){
									
							e.printStackTrace();
									
					} finally{
								// 6단계 - 데이터베이스 종료
						stmt.close();
						conn.close();
								
					}
		response.sendRedirect("./14-3.jsp");
		
	%>
</body>
</html>