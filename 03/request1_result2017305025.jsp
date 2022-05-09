<!--
학번 : 2017305025
성명 : 노균욱
작성일 : 2022.04.02
파일명 : Assign_노균욱.jsp
내용 : 내장객체
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 확인</title>
</head>
<body>
	Home > 입력 정보 확인
	<hr><br>
	이름 : <%=request.getParameter("Name") %><br><br>
	비밀번호 : <%=request.getParameter("Password") %><br><br>
	E-mail : <%=request.getParameter("Email") %><br><br>
	연락처 : <%=request.getParameter("Telecom") %>
	 <%=request.getParameter("FirstNum") %>-
	 <%=request.getParameter("SecondNum") %>-
	 <%=request.getParameter("ThirdNum") %><br><br>
	성별 : <%=request.getParameter("Gender") %><br><br>
	취미 : <%=request.getParameter("Hobby") %><br><br>
	본인 소개 : <%=request.getParameter("Introduction")%><br><br>
</body>
</html>