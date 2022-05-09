<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Test-set Cookie</title>
</head>
<body>
	<%
		Cookie cookies[]=request.getCookies();
		if(cookies != null)
		{
			for(int i=0;i<cookies.length;i++)
			{
				cookies[i].setMaxAge(0); //쿠키 유효시간 설정
				response.addCookie(cookies[i]);
			}
		}
	%>
	쿠키가 삭제되었습니다. <a href="cookie_result2017305025.jsp">쿠키 삭제 확인</a>
</body>
</html>