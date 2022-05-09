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
<title>2017305025 노균욱</title>
</head>
<body>
	Home > 회원 정보 입력
	<hr>
	 개인 정보 입력
	<form name = from method = get action = request1_result2017305025.jsp>
		<br>
		이름 : 
		<br><input type = text name = Name><br><br>
		비밀번호 : 
		<br><input type = password name = Password><br><br>
		E-mail : 
		<br><input type = text name = Email><br><br>
		연락처 : <br>
		<select name = "Telecom">
			<option value = "선택">선택</option>
			<option value = "KT">KT</option>
			<option value = "SKT">SKT</option>
			<option value = "LGU+">LG U+</option>
			<option value = "자급제">자급제</option>
		</select>
		<!-- 이렇게 pattern을 걸어줌으로써 정해진 숫자의 형식을 받게 설정 할수 있음!   <input type="text" pattern="[0-9]+">
		     교수님 말씀 : 번호는 010 -****-**** 이니깐 maxlength를 걸어주는게 좋다.
		     <input type = text pattern=[0-9]+ maxlength=3 size = 3 name = FirstNum>  이렇게
		-->
		<input type = text pattern=[0-9]+ size = 3 name = FirstNum>
		- <input type = text pattern=[0-9]+ size = 4 name = SecondNum>
		- <input type = text pattern=[0-9]+ size = 4 name = ThirdNum>
		<br><br>
		성별 : 
		<input type ="radio" name = Gender value = Man>남
		<input type ="radio" name = Gender value = Woman>여
		<br><br>
		취미 :
		<input type = "checkbox" name=Hobby value = Exercise>운동
		<input type = "checkbox" name=Hobby value = Reading>독서
		<input type = "checkbox" name=Hobby value = Travel>여행
		<input type = "checkbox" name=Hobby value = Listening>음악감상
		<br><br>
		본인 소개 : <br>
		<!-- 
		resize -> 우리가 텍스트 창을 마구대로 조정하는것이 아닌 고정을 시키기 위해
		text-align -> 글씨 가운데 
		overflow -> 요소 안의 컨텐츠가 클때 사용 . scroll은 스크롤바 추가 auto는 양에따라 스크롤바를 자동으로 결정
		-->
		<textarea name=Introduction style=width:400px;height:50px;text-align:center;resize:none; overflow:scroll;></textarea>
		<br>
		<hr width = 300px align = left>
		<!-- 마진과 패딩 / type = button,submit,reset -->
		<input type = submit value=가입하기 style=margin-left:100px;padding-left:10px;padding-right:10px;>
		<input type = reset value=다시작성 style=margin-left:10px;padding-left:10px;padding-right:10px;>
		
	</form>
</body>
</html>