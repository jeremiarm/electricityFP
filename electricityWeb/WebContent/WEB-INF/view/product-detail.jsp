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
      			<li class="nav-item"><a class="nav-link" href="shop">Shops</a></li>
      			<li class="nav-item"><a class="nav-link" href="contact">Contact Us</a></li>
    			</ul>
		</nav>
		<div class="container">
			<div class="row">
				
				<div class="col-sm-6">
					<div class="thumbnail">
						<img style="width:450px; height:250px;" src="${pageContext.request.contextPath}/resources/img/${product.productImage}">
					</div>
				</div>
				<div class="col-sm-6">
					<ul class="list-unstyled mb-0">
            			<li class="mb-1"><span>Product Name: ${product.productName}</span></li>
            			<li class="mb-1"><span>Seller :${product.productSeller}</span></li>
            			<li class="mb-1"><span>Price : ${product.productPrice}</span></li>
            			<li class="mb-1"><span>Condition : ${product.productCondition}</span></li>
            			<li class="mb-1"><span>Guaranteed : ${product.productGuarantee}</span></li>
            		</ul>
		    	</div>
		    </div>
		</div>
	</div>
</body>
</html>