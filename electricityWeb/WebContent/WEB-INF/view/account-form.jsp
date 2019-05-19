<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value="resources/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="resources/background.css"/>"/>
<meta charset="ISO-8859-1">
<title>Product Add</title>
</head>
<body>
		<div class ="text-center">
			<h1>ELECTRICITY</h1>
		</div>
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    			<ul class="navbar-nav">
      			<li class="nav-item"><a class="nav-link" href="/ElectricityWeb">Home</a></li>
      			<li class="nav-item active"><a class="nav-link" href="product">Products</a></li>
      			<li class="nav-item"><a class="nav-link" href="shop">Shops</a></li>
      			<li class="nav-item"><a class="nav-link" href="contact">Contact Us</a></li>
    			</ul>
		</nav>
	<form:form action="login" modelAttribute="account" method="POST">
	
	<table class="table table-bordered">
		<tbody>
			<tr>
				<td><label>Product Name:</label></td>
				<td><form:input path="accountUsername"/></td>
			</tr>
			<tr>
				<td><label>Product Price:</label></td>
				<td><form:input path="accountPassword"/></td>
			</tr>
			<tr>
				<td><label></label></td>
				<td><input type="submit" value="Login"/></td>
			</tr>
		</tbody>
	</table>
	</form:form>
</body>
</html>