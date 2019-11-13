<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>Update</title>
<style type="text/css">
.table {
  padding-top: 30px;
  padding-right: 30px;
  padding-bottom: 80px;
  padding-left: 150px;
  display: table;
    border-collapse: separate;
    border-spacing: 0px;
    border-color: white;
}
.button
{
padding-top: 10px;

text-align:center;

}
.buttonb
{
padding-top: 10px;
padding-right:120px;
padding-left: 1px;
font-size:18px;


}
.home
{
padding-right: 35px;
padding-top: 10px;
text-align:center;
}
</style>
<script>  
function validateformup()
{  
var name=document.editForm.username.value;  
var password=document.editForm.password.value;
var firstname=document.editForm.firstname.value;
var lastname=document.editForm.lastname.value;
var email=document.editForm.email.value;
var address=document.editForm.address.value;
var phone=document.editForm.phone.value;
var x=document.editForm.email.value;  
var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf(".");  
var letters = /^[A-Za-z]+$/;

 if(name==""|| name==null)
	{
	  alert("Username can't be blank");
	  document.editForm.username.focus();
	  return false;
	}
	
else if (password==""||password==null)
	
{  
  alert("Password can't be blank"); 
  document.editForm.password.focus();
  return false;  
}

else if (password.length<6)
	{  
	  alert("Password must be at least 6 characters long");
	  document.editForm.password.focus();
	  return false;  
	 } 
	 
else if(firstname==""|| firstname==null)
	{
	alert("Firstname can't be blank"); 
	 document.editForm.firstname.focus();
	  return false;
	}
else if (!/^[a-zA-Z]*$/g.test(firstname))
	{
	alert("Firstname should only contain alphabets");
	 document.editForm.firstname.focus();
	return false;
	}

else if(lastname==""|| lastname==null)
	{
	alert("Lastname can't be blank");
	 document.editForm.lastname.focus();
	  return false;
	}
else if (!/^[a-zA-Z]*$/g.test(lastname))
{
alert("Lastname should only contain alphabets");
document.editForm.lastname.focus();
return false;
}

else if(email==""|| email==null)
	{
	alert("E-mail can't be blank");  
	 document.editForm.email.focus();
	  return false;
	}

else if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length)
{  
  alert("Enter a valid E-mail Address");  
  document.editForm.email.focus();
  return false;  
  } 

else if(address==""|| address==null)
	{
	alert("Address can't be blank");  
	 document.editForm.address.focus();
	  return false;
	}
	
else if(phone==""|| phone==null ||phone==0)
	{
	alert("Phone Number can't be blank"); 
	 document.editForm.phone.focus();
	  return false;
	}
	
else if (phone.length<10 || phone.length>=11)
{  
  alert("Enter a valid Phone Number");  
  document.editForm.phone.focus();
  return false;  
 } 

	
else if (isNaN(phone))
{  
	  alert("Enter Numeric value only");  
	  document.editForm.phone.focus();
	  return false;  
	}
 
}

</script> 
</head>
<body>
<form:form name="editForm" id="editForm" modelAttribute="user" action="update" method="post" onsubmit="return validateformup()">
 <div class =table>
 <table align="center">
 					<tr><td><h1 class="h1 head text-primary" align="center">Edit Details</h1></td></tr>
                    <tr>
                        <td>
                            <form:label path="username">Username</form:label>
                        </td>
                        <td>
                            <form:input path="username" name="username" id="username" value="${user.username}" readonly="true" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="password">Password</form:label>
                        </td>
                        <td>
                            <form:password path="password" name="password" id="password" value="${user.password}"/>
                            
                        </td>
      
                    </tr>
                    <tr>
                        <td>
                            <form:label path="firstname">FirstName</form:label>
                        </td>
                        <td>
                            <form:input path="firstname" name="firstname" id="firstname" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="lastname">LastName</form:label>
                        </td>
                        <td>
                            <form:input path="lastname" name="lastname" id="lastname" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="email">Email</form:label>
                        </td>
                        <td>
                            <form:input path="email" name="email" id="email" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="address">Address</form:label>
                        </td>
                        <td>
                            <form:input path="address" name="address" id="address" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="phone">Phone</form:label>
                        </td>
                        <td>
                            <form:input type="text" path="phone" name="phone" id="phone" placeholder="" />
                        </td>
                    </tr>
					<tr>
					<td><div class="button"><form:button type="submit" id="update" class="btn btn-primary" role="button" name="update">Update</form:button></div></td>
					<td><div class="buttonb" ><a href="view" class="btn btn-dark">Back</a></div></td>
                </table>
                </div>
</form:form>
</body>
</html>