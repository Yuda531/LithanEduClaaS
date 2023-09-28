<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light my-4" style="margin-bottom: 0px;">
	<div class="container-fluid">
	<button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
		<span class="navbar-toggler-icon"></span>
	</button>

		<div class="collapse navbar-collapse" id="navbarCollapse">
			<sec:authorize access="!isAuthenticated()">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item">
						<a class="nav-link btn btn-outline-secondary" href="register_user">Register</a>
					</li>
				</ul>
	
				<form class="d-flex">
					<a href="login" class="btn btn-primary">Login</a>
				</form>
			</sec:authorize>
	
			<sec:authorize access="isAuthenticated()">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item">
						<a class="nav-link" href="home">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="addStore">Add Store</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="viewStore">View Store</a>
					</li>
				</ul>
	

				<form action="logout" method="post" style="padding: 7px;">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" /> <input type="submit" name="Logout"
								value="Logout" class="btn btn-primary"></input>
						</form>
			</sec:authorize>
		</div>
	</div>
</nav>

