<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="addrbook_error.jsp" import="addrbook.*"%>
<!DOCTYPE HTML>
<html>
<head>
<link rel="stylesheet" href="add-student-style.css" type="text/css" media="screen" />

<!-- 
<script type="text/javascript">
	function delcheck() {
		result = confirm("삭제할까요?");
	
		if(result == true){
			document.form1.action.value="delete";
			document.form1.submit();
		}
		else
			return;
	}
</script>
 -->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주소록:수정화면</title>
</head>

<jsp:useBean id="ab" scope="request" class="addrbook.AddrBook" />

<body>
<div align="left">
<h1 id = header>노균욱_2017305025_edit</h1>
<H2>정보 갱신</H2>
<form name=form1 method=post action=addrbook_control.jsp>
<input type=hidden name="ab_id" value="<%=ab.getAb_id()%>">
<input type=hidden name="action" value="update">

<table border="1">
  <tr>
    <th>first name</th>
    <td><input type="text" name="ab_firstname" value="<%=ab.getAb_firstname() %>"></td>
  </tr>
  <tr>
    <th>last name</th>
    <td><input type="text" name="ab_lastname" value="<%=ab.getAb_lastname() %>"></td>
  </tr>
  <tr>
    <th>email</th>
    <td><input type="text" name="ab_email" value="<%=ab.getAb_email() %>"></td>
  </tr>
  <tr>
    <td colspan=2 align=center><input type=submit value="저장"></td>
</tr>
</table><br>
[<a href=addrbook_control.jsp?action=list>Back to List</a>] <p>

</form>

</div>
</body>
</html>