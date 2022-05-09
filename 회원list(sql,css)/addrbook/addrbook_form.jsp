<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>form(추가하기)</title>
<link rel="stylesheet" href="add-student-style.css" type="text/css" media="screen" />
</head>
<body>
<div align="left">
<h1 id = header>노균욱_010_9727_0370</h1>
<H2>정보 갱신 </H2>
<form name=form1 method=post action=addrbook_control.jsp>
<input type=hidden name="action" value="insert">
<table border="1">
  <tr>
    <th name = label>First name</th>	
    <td><input type="text" name="ab_firstname" maxlength="15" class = input></td>
  </tr>
  <tr>
    <th>Last name</th>
    <td><input type="text" name="ab_lastname" maxlength="15" class = input></td>
  </tr>
  <tr>
    <th>Email</th>
    <td><input type="email" name="ab_email" maxlength="50" class = input></td>
  </tr>

  <tr>
  <td colspan=2 align=center><input type=submit value="저장" class = "save"></td>
  </tr>
</table>
</form><br>
[<a href=addrbook_control.jsp?action=list div =left>목록으로</a>] <P>

</div>
</body>
</html>