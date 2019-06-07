<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring Form page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
 <h3>Welcome to Person Register Page!!</h3>
<form:form action="send" method="POST" modelAttribute="person">
<pre>
	
    NAME  : <form:input path="pName"/>
 PASSWORD : <form:password path="pwd"/>
 GENDER   : <form:radiobutton path="gender" value="Male"/> Male 
 			<form:radiobutton path="gender" value="Female"/> Female
 ADDRESS  : <form:textarea path="addrs"/> 
 COUNTRY  : <form:select path="country">
 				<form:option value="">-SELECT-</form:option>
 				<form:option value="IND">India</form:option>
 				<form:option value="AUS">AUS</form:option>
 				<form:option value="US">US</form:option>
 			</form:select>
 LANGUAGES:
   <form:checkbox path="langs" value="ENGLISH"/> ENGLISH 			
   <form:checkbox path="langs" value="HINDI"/> HINDI 			
   <form:checkbox path="langs" value="TELUGU"/> TELUGU 
   
   <input type="submit" value="REGISTER"/> 			
</pre>
</form:form> 
</body>
</html>





