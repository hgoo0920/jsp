<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>I2-2</title>
</head>
<body>
	<h3>2.JAVA 반복문</h3>
	
	<h4>for</h4>
	<%
		int sum = 0;
		for(int k = 1; k <= 10; k++) {
			sum = sum + k;
		
		}
		%>
		<i>1에서 10까지 합 : <%= sum %></i>
	<h4>구구단표</h4>
	<table border="1">
		<tr>
		<td>2단</td>
		<td>3단</td>
		<td>4단</td>
		<td>5단</td>
		<td>6단</td>
		<td>7단</td>
		<td>8단</td>
		<td>9단</td>
		</tr>
		<tr>
		<td>2 x 1 = 2</td>
		<td>3 x 1 = 3</td>
		<td>4 x 1 = 4</td>
		<td>5 x 1 = 5</td>
		<td>6 x 1 = 6</td>
		<td>7 x 1 = 7</td>
		<td>8 x 1 = 8</td>
		<td>9 x 1 = 9</td>
		</tr>
		<tr>
		<td>2 x 2 = 4</td>
		<td>3 x 2 = 6</td>
		<td>4 x 2 = 8</td>
		<td>5 x 2 = 10</td>
		<td>6 x 2 = 12</td>
		<td>7 x 2 = 14</td>
		<td>8 x 2 = 16</td>
		<td>9 x 2 = 18</td>
		</tr>
		<% 
			for(int a = 1; a <= 9; a++) {%>
			<tr>
			<% for(int b = 2; b <= 9; b++) {%>
				<td><%= b %> X <%= a %> = <%= a*b %></td>
			<% } %>
			</tr>
			<% } %>

	</table>
	
	
</body>
</html>