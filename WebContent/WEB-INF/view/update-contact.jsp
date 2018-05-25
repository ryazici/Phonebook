<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
      <title>Student Form</title>
      
      <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap/bootstrap.min.css" />
</head>
<body>
 <header>
  	<nav class="navbar navbar-default">
  		<div class="container">
    		<div class="navbar-header">
      			<a class="navbar-brand" href="#">Phone Book</a>
    		</div>
   		</div>
 	 </nav>
 </header>
     
     
 <div class="container">
	<h2> Contact Update </h2> 	
	
	<form:form action="saveUpdate" method="post" modelAttribute="contact">
	    <form:hidden path="id"/>
	
		<div class="form-group">
		  <label for="usr">First Name:</label>
		  <form:input type="text" path="firstName" class="form-control" id="usr"  />
		</div>
		<div class="form-group">
		  <label for="last">Last Name:</label>
		  <form:input type="text" path="lastName" class="form-control" id="last" />
		</div>
		
		<div class="form-group">
		  <label for="phone">Phone:</label>
		  <form:input type="text" path="phoneNumber" class="form-control" id="phone" />
		</div>
		
		<input  type="submit" value="Update Contact" class="btn btn-success" />
	</form:form> 
	
	<br/><br/>
	
	<p>
		<a href="${pageContext.request.contextPath}/contact/list">Back to List</a>
	</p>
	
	
</div>
	
	
	

	
</body>
</html>