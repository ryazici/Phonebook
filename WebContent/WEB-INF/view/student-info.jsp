<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
<head>
<title>Student Form</title>
</head>
<body>

	<h1>Hello ${student.firstName}  ${student.lastName}    </h1>
	
	<br/>
    Your Country : ${student.country}
	<br/>
	
	Your Color : ${student.color}

	<br/>
	
	Your Favourite Language : ${student.favouriteLanguage}
	
	<br/>
	
	Operating Systems : 
	
	<ul>
		<c:forEach var="temp" items="${student.operatingSystems}" >
	
			<li> ${temp} </li>
	
		</c:forEach>	
	</ul>
	
</body>
</html>