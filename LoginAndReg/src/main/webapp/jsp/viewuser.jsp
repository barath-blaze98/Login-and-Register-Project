 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
 <!DOCTYPE html>
 <html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   
   <style>
  body
  {
  padding-top:28px;
  }
  h1
  {
  padding-bottom:10px;
  }
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
  .home
  {
  
  text-align:center;
  padding-top:20px;
  padding-bottom:55px;
  padding-right:10px;
  }
  a
  {
  
  text-align:center;
  padding-top:8px;
  padding-bottom:8px;
  }
  .border
  {
 
   border-style : hidden!important;

   font-size: 11px;
  }
  .pad
  {
  padding-left:10px;
  }
  .pr
  {
  padding-right:20px;
  }
  .bor{
  font-size:14px;
  }
  .entry
  {
  font-size:24px;
  padding-bottom : 3px;
  
  }
  table {
    border-collapse: collapse;
    
}
.bp{

}
.row{
padding-left:135px;
font-weight:bold;
}

  </style>
   </head>
 <body>
 <h1 align=center>Users</h1>
<div class="container" style="margin-top:10px">
<h4 class="entry">Number of entries</h4>
<div class="form-group">
<select name="state" id="maxRows" class="form-control" style="width:120px;" >

<option value="5000">Show All</option>
<option value="5">5</option>
<option value="10">10</option>
<option value="15">15</option>
<option value="20">20</option>
</select>

</div>

          
<table id="mytable" class="table bor">  
<thead>
<tr>
<!--  <th>Id</th>--><th>Username</th><th>Password</th><th>Firstname</th><th>Lastname</th><th>Email</th> <th>Address</th> <th>Phone</th><th>Created Date</th></tr>
 </thead> 
 <tbody>  
   <c:forEach var="user" items="${list}">   
   <tr>  
   <!--<td>${user.id}</td>-->  
   <td>${user.username}</td>  
   <td>${user.password}</td>
   <td>${user.firstname}</td>  
   <td>${user.lastname}</td>
   <td>${user.email}</td>
   <td>${user.address}</td>
   <td>${user.phone}</td>
   <td>${user.createddate}</td>
   
   <td><a class="btn btn-info border" href="edit/${user.id}/?username=${user.username}">Edit</a> 
   
   <a class="btn btn-danger border" href="delete/${user.id}"  onclick="return confirm('Are you sure you want to delete this user?');">Delete</a></td>
   </tr>  
   </c:forEach> 
   </tbody> 
   </table> 
   <div class="pagination-container">
   <nav>
   <ul class="pagination">
   
  </ul>
   </nav>
   </div>
   </div>

    
    <div><div class="row"><p id="demo"></p></div><div class="home">
    <a class="btn btn-success pad" href="register">Add User</a>
    <a  class="btn btn-primary" href="home.jsp">Home</a>
    </div></div>
   
   
    
    
    
    
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  
  <script>
  
  var table='#mytable'
  var totalRow = $(table+' tbody tr').length
  document.getElementById("demo").innerHTML = "Total number of entries : "+totalRow;
  
  $('#maxRows').on('change',function(){
	  $('.pagination').html('')
	  var trnum = 0
	  var maxRows = parseInt($(this).val())
	  var totalRows = $(table+' tbody tr').length
	  document.getElementById("demo").innerHTML = "Total number of entries : "+totalRows;
	  $(table+' tr:gt(0)').each(function(){
		  
		  trnum++;
		  if(trnum > maxRows)
			  {
			  $(this).hide()
			  
			  }
		  if(trnum <= maxRows)
			  {
			  $(this).show()
			  }
		  
	  })
	  
	  if(totalRows > maxRows)
		  {
		    var pagenum = Math.ceil(totalRows/maxRows)
		    
		    for(var i=1;i<=pagenum;)
		    {
		    	$('.pagination').append('<li class="page-item"  data-page = "' + i + '">\<span class="page-link">' + i++ + '<span class="sr-only"> (current) </span></span>\</li>').show()
		    
		    
		    }
		    
		    
		  }
	  
	  $('.pagination li:first-child').addClass('active')
	  $('.pagination li').on('click',function()
			  {
		  var pageNum = $(this).attr('data-page')
		  var trIndex = 0;
		  $('.pagination li').removeClass('active')
		  $(this).addClass('active')
		  $(table+' tr:gt(0)').each(function()
				  {
			  trIndex++
			  if(trIndex > (maxRows*pageNum) || trIndex <= ((maxRows*pageNum) - maxRows) )
				  {
				  $(this).hide()
				  }
			  else{
				  $(this).show()
			  }
			  
		  })
		  		  
	  })
	  
  })
 
  $(function(){
	  $('table tr:eq(0)').prepend('<th>Id</th>')
	  var id = 0;
	  $('table tr:gt(0)').each(function(){
		  id++
		  $(this).prepend('<td>'+id+'</td>')
		  
	  })
	  
  })
  
  </script>
   </body>
   </html>