<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta charset="utf-8">
<title>ABC Cars Pte Ltd | Search Result</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Barlow:wght@600;700&family=Ubuntu:wght@400;500&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="/lib/animate/animate.min.css" rel="stylesheet">
<link href="/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
	rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link href="/css/bootstrap.min.css" rel="stylesheet">

<!-- CSS Stylesheet -->
<link href="/css/style.css" rel="stylesheet">
</head>

<body>

	<%@ include file="header.jsp"%>


	<div class="container mt-5">


		<c:if test="${empty searchCar}">

			<div class="alert alert-danger">No search results found for
			${keyword}</div>

		</c:if>
		<!-- list of all cars posted -->
		<div class="row" style="gap: 60px;">

			<c:forEach items="${searchCar}" var="c">

				<div class="card" style="width: 400px">
					<img class="card-img-top" src="${c.photoImagePath}"
						alt="${c.photos}" style="width: 100%">
					<div class="card-body">
						<h4 class="card-title">${c.name}</h4>
						<p class="card-text">
							<i class="fas fa-tags"></i>&nbsp;Rp. ${c.price}
						</p>

						<!--<a href="#" class="btn"
							style="background-color: red; margin-right: 40px;">Book a
							Test Drive</a>-->
						<a href="/car_detail?cid=${c.id}" class="btn btn-primary">View
							Car Details</a>
					</div>
				</div>
			</c:forEach>

		</div>
		<!-- list of all cars posted -->
	</div>



	<%@ include file="footer.jsp"%>
</body>
</html>