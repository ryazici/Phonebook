<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
<head>
<title>Student Form</title>
</head>
<body>

	<h1>Hello ${customer.firstName}  ${customer.lastName}    </h1>
	
	<br/>
    <strong>You have ${customer.freePasses} times free passes.</strong>
	<br/>
	
	<br/>
    <strong>Postal Code : ${customer.postalCode} </strong>
	<br/>

	<br/>
    <strong>Course Code : ${customer.courseCode} </strong>
	<br/>
	
</body>
</html>