<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Add Store - Know Your Neighborhood</title>
	
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

	<!-- Font Awesome Icons -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

	<!-- Custom CSS -->
	<link rel="stylesheet" href="style.css">
</head>
<body>
	<div class="container">
		<div class="card border-0 shadow-lg mt-5">
			<div class="card-body p-5">
				<h2 class="card-title mb-2 pl-5">Add New Store</h2>
				
				<sf:form class="p-5" modelAttribute="store" action="saveStore" method="post">
					<div class="form-group">
						<sf:label for="name" path="name">Store Name</sf:label>
						<sf:input type="text" class="form-control" name="name" path="name" placeholder="Enter store name" value="${name}" />
						<small id="storeHelp" class="form-text text-muted">Any store near your neighborhood</small>
					</div>
					
					<div class="form-group">
						<sf:label for="phone_number" path="phone_number">Phone Number</sf:label>
						<sf:input type="text" class="form-control" name="phone_number" path="phone_number" placeholder="Enter phone number" value="${phone_number}"/>
					</div>
					
					<div class="form-group">
						<sf:label for="localities" path="localities">Store Location</sf:label>
						<sf:input type="text" class="form-control" name="localities" path="localities" placeholder="Enter store location" value="${localities}"/>
					</div>

					<sf:hidden path="id" value="${id}"/>

					<sf:button type="submit" class="btn btn-primary">Submit</sf:button>
				</sf:form>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>