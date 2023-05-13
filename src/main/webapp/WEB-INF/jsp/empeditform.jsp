<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<style>
form {
  margin: 20px auto;
  max-width: 600px;
  background-color: #f5f5f5;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 0 10px #ccc;
}

table {
  width: 100%;
}

td {
  padding: 10px;
}

input[type="submit"] {
  background-color: #4CAF50;
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  font-size: 16px;
  margin-top: 20px;
}

input[type="submit"]:hover {
  background-color: #3e8e41;
}

form label {
  display: block;
  margin-bottom: 5px;
}

form input[type="text"] {
  width: 100%;
  padding: 10px;
  border-radius: 5px;
  border: 1px solid #ccc;
  font-size: 16px;
}

form input[type="hidden"] {
  display: none;
}

</style> 

       <form:form action="/SpringMVC/editsave" method="POST">  
      	<table >  
      	<h1> Edit Employee</h1>
      	<tr>
      	<td></td>  
         <td><form:hidden  path="id" /></td>
         </tr> 
         <tr>  
          <td>Name : </td> 
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
          <td><input type="submit" value="Update" /></td>  
         </tr>  
        </table>  
       </form:form>  
