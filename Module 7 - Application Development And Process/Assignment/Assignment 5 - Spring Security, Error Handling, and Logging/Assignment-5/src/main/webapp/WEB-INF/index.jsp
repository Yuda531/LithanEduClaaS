<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Know Your Neighborhood</title>

	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
		integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
		crossorigin="anonymous">

	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

	<style>
		.jumbotron {
			background-size: cover;
			height: 95vh;
			display: flex;
			flex-direction: column;
			justify-content: center;
			align-items: center;
			text-align: center;
		}
		
		.slide-in-top {
			animation: slide-in-top 1s cubic-bezier(.25,.46,.45,.94) both;
		}
		
		@keyframes slide-in-top {
			0% {
				transform: translateY(-1000px);
				opacity: 0;
			}
			
			100% {
				transform: translateY(0);
				opacity: 1;
			}
		}
	</style>
</head>

<body>
<c:forEach items="${user}" var="u" >
<c:set var="name" value="${u.name}"></c:set>
</c:forEach>

	<div class="jumbotron">
		<h1 class="display-4 slide-in-top">Know Your Neighborhood</h1>
		<p class="lead slide-in-top">Welcome, ${name}</p>
		<p class="lead slide-in-top">We provide a list of all nearby stores.</p>
		<hr class="my-4">
		<p class="slide-in-top">Start searching today!</p>
		<p class="lead">
			<a class="btn btn-primary btn-lg slide-in-top" href="addStore" role="button">Add Store</a>
			<a class="btn btn-primary btn-lg slide-in-top" href="viewStore" role="button">Views Store</a>
			<form action="logout" method="post" style="padding: 7px;">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" /> <input type="submit" name="Logout"
								value="Logout" class="btn btn-primary btn-lg slide-in-top"></input>
						</form>
		</p>
	</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>

</body>
</html>
