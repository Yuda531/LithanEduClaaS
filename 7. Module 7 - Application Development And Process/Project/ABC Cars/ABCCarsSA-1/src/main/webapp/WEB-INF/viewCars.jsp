<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta charset="utf-8">
<title>ABC Cars Pte Ltd | Home</title>
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

	<sec:authorize access="hasRole('Users')">
		<!-- Carousel Start -->
		<div class="p-0 mb-5">
			<div id="header-carousel" class="carousel slide"
				data-bs-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img class="w-100" src="images/bgIndex.jpg" alt="Image">
						<div class="carousel-caption d-flex align-items-center">
							<div class="container">
								<div
									class="row align-items-center justify-content-center justify-content-lg-start">
									<div class="col-10 col-lg-7 text-center text-lg-start">
										<h6
											class="text-white text-uppercase mb-3 animated slideInDown">//
											The Best Car Dealer //</h6>
										<h1
											class="display-3 text-white mb-4 pb-3 animated slideInDown">Start
											Buy and Sell The Car Here!</h1>
										<a href=""
											class="btn btn-primary py-3 px-5 animated slideInDown"
											data-bs-toggle="modal" data-bs-target="#exampleModal">Sell Car<i class="fa fa-arrow-right ms-3"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Carousel End -->
			<!-- post car link-->

			<!-- Modal -->

			<div class="modal fade" id="exampleModal" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true" role="dialog">
				<div class="modal-dialog">
					<div class="modal-content">

						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Sell Your Car
								Today!</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<c:if test="${success_post != null}">
								<div class="alert alert-success">${success_post}</div>
							</c:if>

							<!-- Car Post Form -->
							<sf:form action="car_post" method="post" class="was-validated"
								modelAttribute="car" enctype="multipart/form-data">
								<div class="mb-3 mt-3">
									<label for="name" class="d-flex form-label">Name:</label>
									<sf:input type="text" class="form-control"
										placeholder="Enter car name" name="name" path="name"
										required="true" />
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
								</div>
								<div class="mb-3">
									<label for="model" class="d-flex form-label">Model:</label>
									<sf:input type="text" class="form-control"
										placeholder="Enter model" name="model" path="model"
										required="true" />
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
								</div>
								<div class="mb-3">
									<label for="price" class="d-flex form-label">Price
										(Rp.):</label>
									<sf:input type="text" class="form-control" id="price"
										placeholder="Enter car price" name="price" path="price"
										required="true" />
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
								</div>
								<div class="mb-3">
									<label for="make" class="d-flex form-label">Make Year:</label>
									<sf:input type="text" class="form-control"
										placeholder="Enter make year" name="make" path="make"
										required="true" />
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
								</div>
								<div class="mb-3">
									<label for="registeration" class="d-flex form-label">Registration
										Date:</label>
									<sf:input type="text" class="form-control" id="registeration"
										placeholder="Enter registeration date" name="registeration"
										path="registeration" required="true" />
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
								</div>
								<div class="mb-3">
									<label class="d-flex form-label">Photo:</label> <input
										type="file" class="form-control" name="fileImage" id="photo"
										accept="image/png, image/jpeg" required="true" />
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
								</div>

								<div class="holder"
									style="height: 300px; width: 300px; margin: auto;">
									<img id="imgPreview" src="#" alt="image preview"
										style="width: inherit;" />
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-primary"
										data-bs-dismiss="modal">Close</button>
									<button type="submit" class="btn text-white d-flex" style="background-color: #0d6efd;">Post</button>
								</div>
								
							</sf:form>
							<script>
						            $(document).ready(() => {
						            	
						                $("#photo").change(function () {
						                    const file = this.files[0];
						                    if (file) {
						                        let reader = new FileReader();
						                        reader.onload = function (event) {
						                            $("#imgPreview")
						                              .attr("src", event.target.result);
						                        };
						                        reader.readAsDataURL(file);
						                    }
						                });
						            });
						        </script>
							<!-- Car Post Form -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</sec:authorize>
	<!-- post car link-->


	<!-- list of all cars posted -->
	<div class="container mt-3 p-5 shadow bg-body rounded"">
		<h2 class="text-center mb-5">List of Cars for Sale</h2>
		<div class="row">
			<c:forEach items="${cars}" var="c">
				<c:set var="id" value="${c.id}"></c:set>
				<c:if test="${success_post == null}">

					<c:if test="${c.sellStatus != 'sold'}">
						<div class="card col-lg-4 col-md-6 col-sm-12 mb-3">
							<img class="card-img-top" src="${c.photoImagePath}"
								alt="${c.photos}" style="width: 100%">
							<div class="card-body">
								<h4 class="card-title">${c.name}</h4>
								<p class="card-text">
									<i class="fas fa-tags"></i>&nbsp;Rp. ${c.price}
								</p>
								<a href="/car_detail?cid=${c.id}" class="btn btn-primary">View
									Car Details</a>
							</div>
						</div>
					</c:if>

				</c:if>
			</c:forEach>
			<c:if test="${success_post != null}">
				<div class="alert alert-success">${success_post}
					Click here to <a href="/car_detail?cid=${id}" style="color: #0d6efd;">View</a> your car
					post
				</div>
			</c:if>
		</div>
	</div>
	<!-- list of all cars posted -->



	<%@ include file="footer.jsp"%>
</body>
</html>