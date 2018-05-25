<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    

<!DOCTYPE html>

<html>
<head>
<title>Student Form</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/error.css">

<style type="text/css">
.error {
color:red;
}
</style>

</head>
<body>
<i>Fill out the form.Asterisk(*) means required.</i>
	<br/><br/>
	<form:form action="processform" modelAttribute="student" >
	
		First Name : <form:input path="firstName"/>
		<br/><br/>
		Last Name (*): <form:input path="lastName"/>
		<form:errors path="lastName" cssClass="error" />
		<br/><br/>
		Country : 
		<form:select path="country">
			<form:options items="${student.countryOptions}" />
		</form:select>
		
		<br/><br/>
		Color : 
		<form:select path="color">
			<form:options items="${colorOptions}" />
		</form:select>
		
		<br/><br/>
		Favourite Language : <br/>
		
		Java <form:radiobutton path="favouriteLanguage" value="Java"/>
		
		Plsql <form:radiobutton path="favouriteLanguage" value="Plsql"/>
		
		Python <form:radiobutton path="favouriteLanguage" value="Python"/>
		
		Bash <form:radiobutton path="favouriteLanguage" value="Bash"/>
		
		<br/><br/>
		
		Operation Systems You use : 
		
		Windows <form:checkbox path="operatingSystems" value="Windows"/>
		Linux <form:checkbox path="operatingSystems" value="Linux"/>
		MacOS <form:checkbox path="operatingSystems" value="MacOS"/>
		Android <form:checkbox path="operatingSystems" value="Android"/>
		<br/><br/>
		
		<input type="submit" value="Submit"/>	
	</form:form>


</body>
</html>