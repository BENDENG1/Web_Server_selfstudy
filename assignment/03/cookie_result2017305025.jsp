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
		String name="";
		String mail="";
		
		String information = request.getHeader("Cookie");
		if(information != null)
		{
			Cookie cookies[] = request.getCookies();
			for(int i=0; i<cookies.length; i++)
			{
				if(cookies[i].getName().equals("Name"))
					name = cookies[i].getValue();
				else if(cookies[i].getName().equals("Email"))
					mail = cookies[i].getValue();
			}
		}
	%>
	name 은 <%=name %> 입니다.<br>
	mail 은 <%=mail %> 입니다.<br>
</body>
</html>