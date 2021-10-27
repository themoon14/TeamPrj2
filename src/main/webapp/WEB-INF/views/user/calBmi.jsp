 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
String name,result; //result변수를 복수로 작성. result변수 정의 하나를 삭제 함.
float ki,mom,bmi;
String sex;

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Calculate BMI</title>
</head>
<body>

<%
sex=request.getParameter("uGender");
ki=Integer.parseInt(request.getParameter("uWeight")); 
mom=Integer.parseInt(request.getParameter("uHeight"));
bmi=mom/(ki*ki)*10000;
%>


</body>
</html>

