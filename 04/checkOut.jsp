<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ch06 : checkOut.jsp</title>
</HEAD>
<body>
<div align="center">
<H2>계산</H2>
선택한 상품 목록
<HR>
<%
	int sum=0;	   //총 과일들의 합가격
	int count =0; //총합의 갯수
	int carr[] ={0,0,0,0,0};
	String[] farr={"사과","귤","파인애플","자몽","레몬"};
	
	
	
	ArrayList list = (ArrayList)session.getAttribute("productlist");
	//상품이 비어있을때
	if(list == null) {
		out.println("선택한 상품이 없습니다.!!!");
	}
	/*
	상품이 존재할때
	그리고 내가 고려해야 할것은 그냥 상품이 여러개면 하나로 묶어서 출력을 진행하고
	상품들의 총합과 갯수에 대해서만 추가를 진행하면 된다.
	*/
	else {
		for(Object productname:list) 
		{
			if("사과".equals(productname)){
				sum+=1200;
				carr[0]+=1;
			}
			else if("귤".equals(productname)){
				sum+=300;
				carr[1]+=1;
			}
			else if("파인애플".equals(productname)){
				sum+=1200;
				carr[2]+=1;
			}
			else if("자몽".equals(productname)){
				sum+=1000;
				carr[3]+=1;
			}
			else if("레몬".equals(productname)){
				sum+=800;
				carr[4]+=1;
			}
		}
	}
	
	for(int i=0; i<carr.length;i++)
	{
		if(carr[i]!=0)
		{
			out.println(farr[i] +" "+ carr[i] +"개<br>");
			count+=carr[i];
		}
	}
	out.println("총 과일 개수 : "+count+" 개<br>");
	out.println("총합"+sum+"원 입니다.");
%>

</div>
</body>
</html>