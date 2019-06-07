<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Your Form Data is :${emp} </h3> <hr>
	<h4>Your Id is : ${emp.empId}</h4>
	<h4>Your Name is : ${emp.empName}</h4>
	<h4>Your Designation is : ${emp.desg}</h4>
	<h4>Your Salary is : ${emp.empSal}</h4> 
	 <p> Thankyou ${emp.empName} </p>
		
</body>
</html>