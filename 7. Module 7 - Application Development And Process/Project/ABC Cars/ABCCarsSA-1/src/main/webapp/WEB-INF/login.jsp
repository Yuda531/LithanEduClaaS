<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta charset="utf-8">
    <title>ABC Cars Pte Ltd | Login</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@600;700&family=Ubuntu:wght@400;500&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/lib/animate/animate.min.css" rel="stylesheet">
    <link href="/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!-- CSS Stylesheet -->
    <link href="/css/style.css" rel="stylesheet">
</head>

<body>



	<%@ include file="header.jsp"%>


	<div class="container" style="margin-top: 100px !important; margin-bottom: 25px;">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-8 col-sm-10">
                <c:if test="${error_string != null}">
                    <div class="alert alert-danger text-center">${error_string} Click here to <a href="register_user">
                            Register</a></div>
                </c:if>
                <h2 class="text-center mb-4">Sign In</h2>
                <c:url var="post_url" value="/login" />
                <form action="${post_url}" method="post" class="was-validated">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="userName" placeholder="Enter username" name="username" value="" required>
                        <label for="username">Username:</label>
                        <div class="valid-feedback">Looks good!</div>
                        <div class="invalid-feedback">Please enter your username</div>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="password" class="form-control" id="password" placeholder="Enter password" name="password" value="" required>
                        <label for="password" class="form-label">Password:</label> 
                        <div class="valid-feedback">Looks good!</div>
                        <div class="invalid-feedback">Please enter your password</div>
                    </div>
                    <input type="submit" name="Login" value="Sign In" class="w-100 btn btn-lg btn-primary"></input>
                </form>
                <p class="mt-3 mb-3 text-muted text-center">New User? Click here to <a href="register_user">Register</a></p>
            </div>
        </div>
    </div>





	<%@ include file="footer.jsp"%>

</body>
</html>
