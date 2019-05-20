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
				<input class="btn btn-secondary" type="button" value="Add Product" onclick="window.location.href='showFormForAddProduct'; return false;"/>
				<br>
				<br>
		        	<table class="table table-bordered table-striped">
		        		<thead>
		        			<tr>
		        				<th>ID</th>
		        				<th>Product Name</th>
		        				<th>Product Price</th>
		        				<th>Product Condition</th>
		        				<th>Product Guarantee</th>
		        				<th>Product Seller ID</th>
		        				<th>Product Image Name</th>
		        				<th>Product Description</th>
		        				<th>Action</th>
		        			</tr>
		        		</thead>
		        		<tbody>
		        			<c:forEach var="tempProducts" items="${products}">
		        				<c:url var="updateProduct" value="/showFormForUpdateProduct">
		        					<c:param name="productId" value="${tempProducts.id}" />
		        				</c:url>
		        				<c:url var="deleteProduct" value="/deleteProduct">
		        					<c:param name="productId" value="${tempProducts.id}" />
		        				</c:url>
		        				<tr>
		        					<td>${tempProducts.id}</td>
		        					<td>${tempProducts.productName}</td>
		        					<td>${tempProducts.productPrice}</td>
		        					<td>${tempProducts.productCondition}</td>
		        					<td>${tempProducts.productGuarantee}</td>
		        					<td>${tempProducts.productSeller}</td>
		        					<td>${tempProducts.productImage}</td>
		        					<td>${tempProducts.productDescription}</td>
		        					<td>
		        						<a href="${updateProduct}">Update</a> 
		        						<br>
		        						<a href="${deleteProduct}" onclick="if (!(confirm('Are You sure you want to delete ${tempProducts.productName} ?'))) return false">Delete</a>
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