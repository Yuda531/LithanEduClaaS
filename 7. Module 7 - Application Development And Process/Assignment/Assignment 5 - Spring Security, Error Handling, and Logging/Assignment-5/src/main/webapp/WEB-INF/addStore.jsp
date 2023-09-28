<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- Enable Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Access the Static Resources without using spring URL -->
    <link href="/css/style.css" rel="stylesheet">
    <script src="/js/script.js"></script>

    <title>Add Store</title>
</head>
<body>
    

    <div class="container mt-2">
    <%@ include file="header.jsp"%>
        <div class="card shadow-lg">
            <div class="card-header bg-dark text-white">
                <h3 class="card-title">Add Store</h3>
            </div>
            <div class="card-body p-2">
                <c:if test="${add_success != null}">
                    <div class="alert alert-success">
                        ${add_success}
                        <a href="viewStore" class="alert-link text-decoration-none">View Store</a>
                    </div>
                </c:if>

                <sf:form class="p-5" id="storeForm" modelAttribute="store" action="saveStore" method="post">
                    <div class="form-group mb-4">
                        <sf:label for="name" path="name">Store Name</sf:label>
                        <sf:input type="text" class="form-control" name="name" path="name" placeholder="Enter store name" value="${name}" />
                        <small id="storelHelp" class="form-text text-muted">Any store near your neighborhood</small>
                    </div>

                    <div class="form-group mb-4">
                        <sf:label for="phone_number" path="phone_number">Phone Number</sf:label>
                        <sf:input type="text" class="form-control" name="phone_number" path="phone_number" placeholder="Enter phone number" value="${phone_number}" />
                    </div>

                    <div class="form-group mb-2">
                        <sf:label for="localities" path="localities">Store Location</sf:label>
                        <sf:input type="text" class="form-control" name="localities" path="localities" placeholder="Enter store location" value="${localities}" />
                    </div>

                    <sf:hidden path="id" value="${id}" />
                    <sf:button type="submit" class="btn btn-primary mt-4">Submit</sf:button>
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