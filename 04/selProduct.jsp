<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<title>ch06 : selProduct.jsp</title>
</head>
<%
	request.setCharacterEncoding("UTF-8"); // euc-kr
	session.setAttribute("username",request.getParameter("username"));
%>
<body>
<div align="center">
	<H2>상품선택</H2>
	<HR>
	<%=session.getAttribute("username") %>님 환영합니다!!!!
	<HR>
	<h2>
		<table border = "1">
		<caption class="bottom">싱싱한 과일들 파격세일!</caption>
		
		<th>사과</th>
		<th>귤</th>
		<th>파인애플</th>
		<th>자몽</th>
		<th>레몬</th>
		
		<tr>
			<td><img src ="apple.jpg" width="100" height="100"/><br></td>
			<td><img src ="orange.jpg" width="100" height="100"/><br></td>
			<td><img src ="pineapple.jpg" width="100" height="100"/><br></td>
			<td><img src ="redorange.jpg" width="100" height="100"/><br></td>
			<td><img src ="lemon.jpg" width="100" height="100"/><br></td>
		</tr>
		
		<tr>
			<td>1200원</td>
			<td>300원</td>
			<td>3000원</td>
			<td>1000원</td>
			<td>800원</td>
		</tr>
		
		</table>
	</h2>
	<form name="form1" method="POST" action="add.jsp">
		<SELECT name="product">
			<option>사과</option>
			<option>귤</option>
			<option>파인애플</option>
			<option>자몽</option>
			<option>레몬</option>
		</SELECT>
		<input type="submit" value="추가"/>
	</form>
	<a href="checkOut.jsp">계산</a>
</div>
</body>
</html>




