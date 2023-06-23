<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Know Your Neighborhood:Add Store</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
</head>
<body>

	<div class="card border-0 shadow-lg">
		<div class="card-body p-5">
			<h2 class="card-title mb-5 pl-5">Add New Store</h2>
			<sf:form class="p-5" d="storeForm" modelAttribute="store"
				action="saveStore" method="post">
				<div class="form-group">
					<label for="name" class="mb-2">Store Name</label> 
					<sf:input type="text" class="form-control" name="name"
						placeholder="Enter store name" path="name" required="true" />
					<small id="storelHelp" class="form-text text-muted">Enter
						the name of the store</small>
				</div>
				<div class="form-group">
					<label for="phone_number" class="mb-2">Phone Number</label>
					<sf:input type="tel" class="form-control" name="phone_number"
						path="phone_number" placeholder="Enter phone number"
						required="true" />
					<small id="phoneHelp" class="form-text text-muted">Enter
						the phone number of the store</small>
				</div>
				<div class="form-group">
					<label for="localities" class="mb-2">Store Location</label>
					<sf:input type="text" class="form-control" name="localities"
						path="localities" placeholder="Enter store location"
						required="true" />
					<small id="locationHelp" class="form-text text-muted">Enter
						the location of the store</small>
				</div>
				<button type="submit" class="btn btn-primary px-4">Submit</button>
			</sf:form>
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