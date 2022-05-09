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
	/*
		자바 쿠키 관련 용어들 정리
		Cookie cookie = new Cookie("userid",id); ->새로운 쿠키 생성
		cookie.setComment("접속자아이디") ->선택사항
		cookie.setPath("/") -> 경로설정
		cookie.setMaxAge(숫자) ->숫자(초)만큼 쿠키 유효시간 설정
		response.addCookie(cookie); ->응답에 쿠키추가
		Cookie cookies[]=request.getCookies(); ->쿠키 조회하기.
	*/
	//Cookie의 이름은 name,mail 하고 본인 이름 메일 저장.
      String name = "GyunUkRoh";
      Cookie cname = new Cookie("Name",name);
      //cname.setComment("이름"); //선택사항
      response.addCookie(cname);
      String mail="2017305051@skuniv.ac.kr";
      Cookie cmail = new Cookie("Email",mail);
      //cmail.setComment("메일"); //선택사항
      response.addCookie(cmail);
   %>
	<div class = "form" align=center>
		<h1>쿠키 테스트</h1>
		쿠키 설정이 완료되었습니다.<br><br>
		<a href ="cookie_result2017305025.jsp">쿠키보기</a>
		<a href ="cookie_delete2017305025.jsp">쿠키삭제</a>
	</div>
</body>
</html>