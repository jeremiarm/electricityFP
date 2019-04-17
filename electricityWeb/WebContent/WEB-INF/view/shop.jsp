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
				<div class="col-sm-4">
		           <div class="border p-4 rounded mb-4">
		             <h3 class="mb-3 h6 text-uppercase text-black d-block">Sort By</h3>
		             <ul class="list-unstyled mb-0">
		               <li class="mb-1"><a href="#" class="d-flex"><span>Nearby</span></a></li>
		               <li class="mb-1"><a href="#" class="d-flex"><span>Recommended</span></a></li>
		             </ul>
		           </div>
				</div>
				<div class="col-sm-8">
					<div>
		               <a class="shop1" href="shop-detail"></a>
		               <ul class="list-unstyled mb-0">
		               		<li class="mb-1"><span>Rival's Shop</span></li>
		               		<li class="mb-1"><span>Click for detail</span></li>
		               </ul>
		            </div>
		            <div style="clear: left;">
		                <a class="shop2" href="#"></a>
		               <ul class="list-unstyled mb-0">
		               		<li class="mb-1"><span>F5 Shop</span></li>
		               		<li class="mb-1"><span>Click for detail</span></li>
		               </ul>
		            </div>
		    	</div>
			</div>
		</div>
			
	</div>
</body>
</html>