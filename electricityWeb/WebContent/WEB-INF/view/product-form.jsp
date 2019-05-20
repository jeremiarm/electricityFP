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
      			<li class="nav-item active"><a class="nav-link" href="/ElectricityWeb">Home</a></li>
      			<li class="nav-item"><a class="nav-link" href="product">Products</a></li>
      			<li class="nav-item"><a class="nav-link" href="shop">Shops</a></li>
      			<li class="nav-item"><a class="nav-link" href="contact">Contact Us</a></li>
      			<c:choose>
  					<c:when  test="${sessionScope.username != null}">
    					<li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
    					<li class="nav-item"><a class="nav-link">${sessionScope.username}</a></li>
				  	</c:when>
				  	<c:otherwise>
				  		<li class="nav-item"><a class="nav-link" href="showLoginForm">Login</a></li>
				  	</c:otherwise>
				</c:choose>
    			</ul>
		</nav>
	<h3>Add Product</h3>
	
	<form:form action="saveProduct" modelAttribute="product" method="POST">
	<form:hidden path="id"/>
	
	<table class="table table-bordered">
		<tbody>
			<tr>
				<td><label>Product Name:</label></td>
				<td><form:input path="productName"/></td>
			</tr>
			<tr>
				<td><label>Product Price:</label></td>
				<td><form:input path="productPrice"/></td>
			</tr>
			<tr>
				<td><label>Product Condition:</label></td>
				<td><form:input path="productCondition"/></td>
			</tr>
			<tr>
				<td><label>Product Guarantee:</label></td>
				<td><form:input path="productGuarantee"/></td>
			</tr>
			<tr>
				<td><label>Product Seller:</label></td>
				<td><form:input path="productSeller"/></td>
			</tr>
			<tr>
				<td><label>Product Image:</label></td>
				<td><form:input path="productImage"/></td>
			</tr>
			<tr>
				<td><label>Product Description:</label></td>
				<td><form:input path="productDescription"/></td>
			</tr>
			<tr>
				<td><label></label></td>
				<td><input type="submit" value="Add This Product"/></td>
			</tr>
		</tbody>
	</table>
	</form:form>
</body>
</html>