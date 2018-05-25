<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	 	<button type="button" class="btn btn-primary" onclick="window.location.href='addcontact'; return false;">Add New Contact</button>
	 	<br/><br/>
	 	<div>
	 		<table class="table table-striped table-hover">
	 			 <thead class="dark">
	 				<tr>
	 					<td>First Name</td>
	 					<td>Last Name</td>
	 					<td>Phone Number</td>
	 					<td>Actions</td>
	 				</tr>
	 			</thead>
	 			<tbody>	 		
	 				<c:forEach var="temp" items="${contacts}" >
						<tr>
						
						
			   				<td> ${temp.firstName}   </td>
			   				<td> ${temp.lastName}    </td>
			   				<td> ${temp.phoneNumber} </td>
			   				<td>
				   				<button type="button" class="btn btn-danger" onclick="
				   				if (confirm('Do you confirm to remove this contact ?')) {
				   					window.location.href='removecontact?contactId=${temp.id}'; return false;
							    } return false; " >Remove</button>
				   				<button type="button" class="btn btn-info"  onclick="window.location.href='updatecontact?contactId=${temp.id}'; return false;" >Edit</button>
				   				<button type="button" class="btn btn-secondary">Show Details</button>
			   				</td>
			    		</tr>	
			    	</c:forEach>	
	 			</tbody>
	 		</table>
	  </div>
   </div>
	
	
	

	
</body>
</html>