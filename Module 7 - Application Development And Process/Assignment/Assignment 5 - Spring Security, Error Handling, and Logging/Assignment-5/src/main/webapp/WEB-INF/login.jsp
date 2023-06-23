<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<!--  Enable Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<!--  Access the Static Resources without using spring URL -->
<link href="/css/style.css" rel="stylesheet" />
<script src="/js/script.js"></script>

</head>

<body>

	<%@ include file="header.jsp"%>

	<div class="container my-3">
	<c:if test="${error_string != null}">
		<div class="alert alert-danger">
			${error_string} Click here to <a href="register_user"> Register</a>
		</div>
	</c:if>

	<c:if test="${success_login != null}">
		<div class="alert alert-success">
			${success_login} Click here to navigate to <a href="home"> Home</a>
		</div>
	</c:if>

	<c:if test="${success_logout != null}">
		<div class="alert alert-success">
			${success_logout} Click here to <a href="login">Login</a>
		</div>
	</c:if>

	<c:if test="${ (success_logout == null) && (success_login == null) }">
		<h3>Sign In</h3>

		<c:url var="post_url" value="/login" />
		<form action="${post_url}" method="post" class="needs-validation" novalidate>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<div class="mb-3 mt-3">
				<label for="username" class="form-label">Username:</label>
				<input type="text" class="form-control" id="userName" placeholder="Enter username" name="username" required>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<div class="mb-3">
				<label for="password" class="form-label">Password:</label>
				<input type="password" class="form-control" id="password" placeholder="Enter password" name="password" required>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			<input type="submit" name="Login" value="Sign In" class="btn btn-primary"></input>
		</form>

		<p class="mt-3">New User? Click here to <a href="register_user" class="text-decoration-none">Register</a></p>
		<div style="margin: 80px;"></div>
	</c:if>
</div>

<script>
//Example starter JavaScript for disabling form submissions if there are invalid fields
(function () {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  var forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.prototype.slice.call(forms)
    .forEach(function (form) {
      form.addEventListener('submit', function (event) {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }

        form.classList.add('was-validated')
      }, false)
    })
})()
</script>

</body>
</html>







