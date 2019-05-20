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
				
				<div class="col-sm-6">
					<div class="thumbnail">
						<img style="width:450px; height:250px;" src="${pageContext.request.contextPath}/resources/img/${seller.sellerImage}">
					</div>
				</div>
				<div class="col-sm-6">
					<ul class="list-unstyled mb-0">
            			<li class="mb-1"><span>Seller Name: ${seller.sellerName}</span></li>
            			<li class="mb-1"><span>Seller Address :${seller.sellerAddress}</span></li>
            			<li class="mb-1"><span>Seller Description : ${seller.sellerDescription}</span></li>
            			<li class="mb-1"><span>Seller Contact : ${seller.sellerContact}</span></li>
            		</ul>
		    	</div>
		    </div>
		</div>
	</div>
</body>
</html>