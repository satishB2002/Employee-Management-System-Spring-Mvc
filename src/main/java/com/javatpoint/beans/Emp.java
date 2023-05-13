package com.javatpoint.beans;

import java.util.regex.Pattern;

import org.apache.tomcat.util.file.Matcher;

public class Emp {  
private int id;  
private String name;  
private float salary;  
private String designation;

private String Email;  
private String Contact;  
private String City;

  
public String getCity() {
	return City;
}
public void setCity(String city) {
	this.City = city;
}
public String getEmail() {
	return Email;
}
public void setEmail(String email) {
   
    Pattern pattern = Pattern.compile("^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$");
    java.util.regex.Matcher matcher = pattern.matcher(email);
    if (matcher.matches()) {
        this.Email = email;
    } else {
        throw new IllegalArgumentException("Invalid email address");
    }
}
public String getContact() {
	return Contact;
}
public void setContact(String contact) {
	this.Contact = contact;
}
public int getId() {  
    return id;  
}  
public void setId(int id) {  
    this.id = id;  
}  
public String getName() {  
    return name;  
}  
public void setName(String name) {  
    this.name = name;  
}  
public float getSalary() {  
    return salary;  
}  
public void setSalary(float salary) {  
    this.salary = salary;  
}  
public String getDesignation() {  
    return designation;  
}  
public void setDesignation(String designation) {  
    this.designation = designation;  
}
 
  
}  



