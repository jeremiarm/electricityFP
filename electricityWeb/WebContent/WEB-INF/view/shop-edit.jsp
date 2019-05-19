<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value="resources/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="resources/background.css"/>">
<meta charset="ISO-8859-1">
<title>ELECTRICITY</title>
</head>
<body class="bg">
	<div class="colour">
		<div class ="text-center">
			<h1>ELECTRICITY</h1>
		</div>
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    			<ul class="navbar-nav">
      			<li class="nav-item"><a class="nav-link" href="/ElectricityWeb">Home</a></li>
      			<li class="nav-item"><a class="nav-link" href="product">Products</a></li>
      			<li class="nav-item active"><a class="nav-link" href="shop">Shops</a></li>
      			<li class="nav-item"><a class="nav-link" href="contact">Contact Us</a></li>
    			</ul>
		</nav>
		<div class="container">
			<div class="row">
				<div>
		        	<table class="table table-bordered table-striped">
		        		<thead>
		        			<tr>
		        				<th>ID</th>
		        				<th>Shop Name</th>
		        				<th>Shop Address</th>
		        				<th>Shop Description</th>
		        				<th>Shop Image Name</th>
		        				<th>Shop Contact</th>
		        				<th>Action</th>
		        			</tr>
		        		</thead>
		        		<tbody>
		        			<c:forEach var="tempSellers" items="${sellers}">
		        				<tr>
		        					<td>${tempSellers.sellerId}</td>
		        					<td>${tempSellers.sellerName}</td>
		        					<td>${tempSellers.sellerAddress}</td>
		        					<td>${tempSellers.sellerDescription}</td>
		        					<td>${tempSellers.sellerImage}</td>
		        					<td>${tempSellers.sellerContact}</td>
		        					<td>Update <br>Delete</td>
		        				</tr>
		        			</c:forEach>
		        		</tbody>
		        	</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>