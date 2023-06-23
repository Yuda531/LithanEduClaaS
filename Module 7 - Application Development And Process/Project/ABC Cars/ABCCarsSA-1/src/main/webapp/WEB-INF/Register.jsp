<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta charset="utf-8">
    <title>ABC Cars Pte Ltd | Register</title>
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


	<div class="container my-5">
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-5">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <c:if test="${success_register != null}">
                            <div class="alert alert-success">${success_register} Click here to <a href="login" style="color: #0d6efd;">Sign In</a></div>
                        </c:if>
                        <h3 class="card-title text-center mb-4">Register</h3>
                        <sf:form action="register" method="post" class="was-validated" modelAttribute="user">
                            <div class="mb-3 form-floating">
                            	<sf:input type="text" class="form-control" placeholder="Enter name" name="name" path="name" required="true" />
                                <label for="name" class="form-label">Name:</label> 
                                <div class="valid-feedback">Looks good!</div>
                                <div class="invalid-feedback">Please Enter Your Name!</div>
                            </div>
                            <div class="mb-3 form-floating">
                            	<sf:input type="text" class="form-control" id="userName" placeholder="Enter username" name="userName" path="userName" required="true" />
                                <label for="userName" class="form-label">Username:</label> 
                                <div class="valid-feedback">Looks good!</div>
                                <div class="invalid-feedback">Please Enter Your Username!</div>
                            </div>
                            <div class="mb-3 form-floating">
                                <sf:input type="email" class="form-control" placeholder="Enter email" name="email" path="email" required="true" />
                                <label for="email" class="form-label">Email:</label> 
                                <div class="valid-feedback">Looks good!</div>
                                <div class="invalid-feedback">Please Enter Your Email!</div>
                            </div>
                            <div class="mb-3 form-floating">
                            	<sf:input type="password" class="form-control" id="password" placeholder="Enter password" name="password" path="password" required="true" />
                                <label for="password" class="form-label">Password:</label> 
                                <div class="valid-feedback">Looks good!</div>
                                <div class="invalid-feedback">Please Enter Your Password!</div>
                            </div>
                            <div class="d-grid gap-2">
                                <input type="submit" value="Register" class="btn btn-primary btn-block mt-4" />
                            </div>
                        </sf:form>
                    </div>
                </div>
                <p class="text-center mt-3">Already registered? <a href="login">Sign In</a></p>
            </div>
        </div>
    </div>





	<%@ include file="footer.jsp"%>

</body>
</html>
