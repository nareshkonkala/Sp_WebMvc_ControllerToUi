<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<style type="text/css">
		.err{color: red;}
	</style>
</head>
<body>
	<h3>Welcome to the Admin Registration Page</h3>
	<form:form action="sendAdmin" method="POST" modelAttribute="admin">
		<pre>
			NAME :	 <form:input path="adminName"/>
					<form:errors path="adminName" cssClass="err"/>
			DEPT : 	<form:select path="dept">
 						<form:option value="">-SELECT-</form:option>
 						<form:option value="BSC">BSC</form:option>
 						<form:option value="CSC">CSC</form:option>
 						<form:option value="ECE">ECE</form:option>
 						<form:option value="MCA">MCA</form:option>
 					</form:select>
 					<form:errors path="dept" cssClass="err"/>
 			GRADE   : 	<form:radiobutton path="grade" value="A+"/> A+ 
 						<form:radiobutton path="grade" value="A"/> A
 						<form:radiobutton path="grade" value="B"/> B 
 						<form:radiobutton path="grade" value="C"/> C
 						<form:errors path="grade" cssClass="err"/>
 			ADDRESS  : 	<form:textarea path="note"/> 
 					<form:errors path="note" cssClass="err"/>
 			GRANT	:	<form:checkbox path="grant" value="ACCEPT"/> Accept 			
   							<form:checkbox path="grant" value="EXOPRT"/> Export 			
   							<form:checkbox path="grant" value="READ"/> Read 
   							<form:errors path="grant" cssClass="err"/>
   			<input type="submit" value="SUBMIT"/>
		</pre>
	</form:form>
</body>
</html>