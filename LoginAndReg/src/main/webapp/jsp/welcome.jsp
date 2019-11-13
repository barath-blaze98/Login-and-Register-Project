 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        
        <title>Welcome</title>
        <style type="text/css">
        th
  {
  text-align:center;
  padding-top:8px;
  padding-bottom:8px;
  }
   td
  {
  text-align:center;
  padding-top:8px;
  padding-bottom:8px;
  }
        .head
        {
        padding-top: 80px;
        padding-right: 10px;
        }
.table {
  padding-top: 130px;
  padding-right: 10px;
  padding-bottom: 30px;
  padding-left: 150px;
  border-spacing: 0px;
  border-color: white;
  
}
.button
{
padding: 20px 40px;
 text-align: center;
 padding-top: 100px;
  padding-right: 20px;
  padding-bottom: 30px;
  padding-left: 150px;
}

</style>
    </head>
    <body>
  <table class="table" align="center">
        
            <tr>
                <td><h1 class="h1 text-primary head" align="center">Welcome ${firstname}!!</h1></td>
            </tr>
   
            <tr>
                <td align="center" ><a  class="btn btn-primary" href="home.jsp">Home</a>
                </td>
            </tr>
        </table>
    </body>
    </html>