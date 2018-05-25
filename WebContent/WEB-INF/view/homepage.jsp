<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<img src="${pageContext.request.contextPath}/resources/images/spring.jpg"> 

<h1>Hello Spring MVC</h1>

<a href="helloform">hello form link</a>

<br/>

<a href="student/form">student link</a>

<br/>


<a href="customer/form">customer link</a>

</body>
</html>