<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="addrbook_error.jsp" import="java.util.*, addrbook.*"%>
<!DOCTYPE HTML>
<html>
<head>
<link rel="stylesheet" href="addrbook.css" type="text/css" media="screen" />

<script type="text/javascript">
	function check(ab_id) {
		pwd = prompt('수정을 하시겠습니까?');
		document.location.href="addrbook_control.jsp?action=edit&ab_id="+ab_id;
		//+"&upasswd="+pwd
	}
	function delcheck(ab_id) {
		result = confirm("삭제할까요?");
	
		if(result == true){
			document.location.href="addrbook_control.jsp?action=delete&ab_id="+ab_id;
			document.form1.submit();
		}
		else
			return;
	}
</script>
</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주소록:목록화면</title>

</head>
<jsp:useBean id="datas" scope="request" class="java.util.ArrayList" />

<body>
<div align="left"> 
<H2 Class = header>노균욱_2017305025</H2>
<HR>
<form>
<a class = "add-student-button" href="addrbook_form.jsp">추가하기</a><P>
		<table border="1">
			<tr><th>first name</th><th>last name</th><th>email</th></tr>
			<%
				for(AddrBook  ab : (ArrayList<AddrBook>)datas) {
			%>
			  <tr>
				<td><%=ab.getAb_firstname() %></td>
				<td><%=ab.getAb_lastname() %></td>
				<td><%=ab.getAb_email() %></td>
				<td><a href="javascript:check(<%=ab.getAb_id()%>)">update</a> |
					<a href="javascript:delcheck(<%=ab.getAb_id()%>)">delete</a>
				</td>
			  </tr>
			 <%
				}
			 %>
		</table>
</form>

</div>
</body>
</html>