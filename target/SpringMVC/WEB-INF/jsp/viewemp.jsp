    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

	
	<style>
	table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

th {
  background-color: #4285f4;
  color: white;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}

a {
  text-decoration: none;
  color: #4285f4;
}

a:hover {
  color: #0d47a1;
}

</style>


	<h1>Codenera Execution Departement Employees List</h1>
	<form:form action="/SpringMVC/search" method="GET"> 
	<input type="text" name="freetext" placeholder="enter to search">
	<button>find</button>
	</form:form>
	<table border="2" width="70%" cellpadding="2">
	
	
	<tr><th>Id</th><th>Name</th><th>Salary</th><th>Designation</th><th>Email</th><th>Contact</th><th>City</th><th>Edit</th><th>Delete</th></tr>
    <c:forEach var="emp" items="${list}"> 
    <tr>
    <td>${emp.id}</td>
    <td>${emp.name}</td>
    <td>${emp.salary}</td>
    <td>${emp.designation}</td>
    <td>${emp.email}</td>
    <td>${emp.contact}</td>
    <td>${emp.city}</td>
    
    <td><a href="editemp/${emp.id}">Edit</a></td>
    <td><a href="deleteemp/${emp.id}">Delete</a></td>
    </tr>
    </c:forEach>
    </table>
    <br/>
    <a href="empform">Add New Employee</a>