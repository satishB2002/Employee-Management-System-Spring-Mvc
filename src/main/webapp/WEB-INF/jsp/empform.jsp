<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<html>
<head>
	<style>
		body {
			display: flex;
			justify-content: center;
			align-items: center;
			height: 100vh;
		}
		form {
			background-color: #f2f2f2;
			padding: 20px;
			border-radius: 10px;
			box-shadow: 0 0 10px #ccc;
		}
		table {
			margin: 100 auto;
		}
        
	</style>
</head>
<body>
	
	<form:form method="post" action="save">  
		<table> 
			<h1>Add New Employee</h1> 
			<tr>  
				<td>Name :</td> 
				<td><form:input path="name"  /></td>
			</tr>  
			<tr>  
				<td>Salary :</td>  
				<td><form:input path="salary" /></td>
			</tr> 
			<tr>  
				<td>Designation :</td>  
				<td><form:input path="designation" /></td>
			</tr> 
			<tr>  
				<td>Email :</td>  
				<td><form:input path="Email" /></td>
			</tr>
			<tr>  
		    <td>Contact Number:</td>  
		    <td><form:input path="Contact" pattern="[0-9]{10}" title="Please enter a 10-digit phone number" /></td>
			</tr>
			<tr>  
				<td>City :</td>  
				<td><form:input path="City" /></td>
			</tr>

			<tr>  
				<td> </td>  
			<tr>
			</tr>  
				<td><input type="submit" value="Save" /></td>  
			</tr>  
		</table>  
	</form:form>
</body>
</html>
