<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Store Search</title>
<!-- Enable Bootstrap -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- Access static resources without Spring URL -->
<link rel="stylesheet" href="/css/style.css">
<script src="/js/script.js"></script>

</head>
<body>

	<div class="container">
		<!-- Header -->
	<%@ include file="header.jsp"%>
	</div>
	
	<!-- Main content -->
<div class="container-fluid mt-5">
	<!-- Search bar -->
	<div class="input-group rounded mb-4" style="margin-left: 225px;">
		<sf:form action="search_store" method="get" class="d-flex">
			<input type="search" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" name="keyword">
			<button type="submit" class="btn btn-outline-primary ml-5">Search</button>
		</sf:form>
	</div>
    <div class="row justify-content-center">
        <div class="col-lg-8">
        	<!-- Store table -->
            <div class="card shadow-lg">
                <div class="card-header bg-dark text-white">
                    <h4 class="mb-0">View Store</h4>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered">
                            <thead class="thead-dark">
                                <tr>
                                    <th>Store Name</th>
                                    <th>Phone Number</th>
                                    <th>Localities</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${all_Stores}" var="u">
                                    <tr>
                                        <td>${u.getName()}</td>
                                        <td>${u.getPhone_number()}</td>
                                        <td>${u.getLocalities()}</td>
                                        <td>
                                            <div class="btn-group" role="group" aria-label="Store Actions">
                                                <a href="addStore" class="btn btn-success btn-sm"><i class="fas fa-plus"></i> Add</a>
                                                <a href="/update?sid=${u.id}" class="btn btn-primary btn-sm"><i class="fas fa-edit"></i> Edit</a>
                                                <a href="/delete?sid=${u.id}" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i> Delete</a>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- JavaScript dependencies -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>