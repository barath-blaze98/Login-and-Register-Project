
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>Login</title>
<style type="text/css">
.table {
  padding-top: 100px;
  padding-right: 30px;
  padding-bottom: 50px;
  padding-left: 0px;
}
</style>
</head>
<body>
	<form:form id="loginForm" modelAttribute="login" action="loginProcess" method="post">
		<div class="table">
		<table align="center">
		<tr><td><h1 class="h1 head text-primary" align="center">Login</h1></td></tr>
			<tr>
				<td><form:label path="username">Username </form:label></td>
				<td><form:input path="username" name="username" id="username" />
				
				</td>
			</tr>
			<tr>
				<td><form:label path="password">Password </form:label></td>
				<td><form:password path="password" name="password" id="password" /></td>
			</tr>
			<tr>
				<td></td>
				<td align="left"><form:button id="login"
						class="btn btn-primary" role="button" name="login">Login</form:button>
				</td>
			</tr>
			<tr></tr>
			<tr>
				<td></td>
				<td><a href="home.jsp">Home</a></td>
			</tr>
		</table>
	</form:form>
	<table align="center">
		<tr>
			<td style="font-style: italic; color: red;">${message}</td>
		</tr>
	</table>
	</div>
</body>
</html>