<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        
        <title>Welcome</title>
        <style type="text/css">
        .head
        {
        padding-top: 80px;
        padding-right: 10px;
        }
.table {
  padding-top: 100px;
  padding-right: 10px;
  padding-bottom: 30px;
  padding-left: 150px;
  border-spacing: 0px;
  border-color: white;
  
}
.button
{
 text-align: center;
 position: absolute;
}

</style>
    </head>
    <body>
    
  <table class="table" align="center">
        
            <tr>
                <td><h1 class="h1 text-primary head" align="center">Welcome ${firstname}!!</h1></td>
            </tr>
            
            
            <div class="button">
            <tr>
                <td align="center" ><a  class="btn btn-primary" href="home.jsp">Home</a>
                </td>
            </tr>
            </div>
        </table>
        
    </body>
    </html>