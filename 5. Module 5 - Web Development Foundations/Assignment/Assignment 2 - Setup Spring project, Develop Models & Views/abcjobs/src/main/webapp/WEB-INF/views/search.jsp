<%@ include file="header3.jsp" %>
	<section class="profile pt-3 pb-3" style="background-color: #eee;">
		<div class="container my-5 text-center ">
			<h1>Search in ABC Jobs Community Portal</h1>
			<div class="container-fluid my-5">
				<div>
					<form action="search" class="d-flex">
						<input class="form-control me-2 py-3" type="text"
							placeholder="Search" name="search">
						<button type="submit" class="btn btn-primary px-3">Search</button>
					</form>
				</div>
			</div>
		</div>
		<div class="container">

			<h1 class="text-center">${notFound == true ? "Not Found" : ""}</h1>
			<c:forEach var="s" items="${selected}">
				<div class="card col-lg-9 mb-3 border rounded-4">
					<div class="col-lg-12 ">
						<div class="card-body d-flex justify-content-around ">
							<div class="col-lg-2">
								<img src="img/${s.split("-")[1]}" class="rounded-circle img-fluid"
									alt=" randomIMG" width="50%">
							</div>
							<div class="col-lg-6">
								<h2 class="card-title">${s.split("-")[0]}</h2>
								<p class="card-text">${s.split("-")[2]}</p>
							</div>
							<div class="col-lg-2">
							<form action="result" method="post">
								<input type="hidden" name="name" value="${s.split("-")[0]}">
								<button class="btn btn-outline-primary" type="submit">View Profile</button>
							</form>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>

	<%@ include file="footer1.jsp" %>

