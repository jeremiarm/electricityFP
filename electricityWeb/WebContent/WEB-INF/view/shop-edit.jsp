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
		<div class="container">
			<div class="row">
				<div>
				<br>
				<input class="btn btn-secondary" type="button" value="Add Seller" onclick="window.location.href='showFormForAddSeller'; return false;"/>
				<br>
				<br>
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
		        				<c:url var="updateSeller" value="/showFormForUpdateSeller">
		        					<c:param name="sellerId" value="${tempSellers.sellerId}" />
		        				</c:url>
		        				<c:url var="deleteSeller" value="/deleteSeller">
		        					<c:param name="sellerId" value="${tempSellers.sellerId}" />
		        				</c:url>
		        				<tr>
		        					<td>${tempSellers.sellerId}</td>
		        					<td>${tempSellers.sellerName}</td>
		        					<td>${tempSellers.sellerAddress}</td>
		        					<td>${tempSellers.sellerDescription}</td>
		        					<td>${tempSellers.sellerImage}</td>
		        					<td>${tempSellers.sellerContact}</td>
		        					<td>
		        						<a href="${updateSeller}">Update</a> 
		        						<br>
		        						<a href="${deleteSeller}" onclick="if (!(confirm('Are You sure you want to delete ${tempSeller.sellerName} ?'))) return false">Delete</a>
		        					</td>
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