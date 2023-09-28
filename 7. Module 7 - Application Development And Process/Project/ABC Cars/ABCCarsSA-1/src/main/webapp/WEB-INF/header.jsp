 <!-- Spinner Start -->
    <div id="spinner"
        class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->

    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0"  style="margin-bottom: 20px;">
        <a href="cars" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <h2 class="m-0 text-primary"><i class="fa fa-car me-3"></i>ABC Cars </h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
        <sec:authorize access="!isAuthenticated()">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="register_user" class="nav-item nav-link">Register</a>
                <a href="about_us" class="nav-item nav-link">About Us</a>
                <a href="contact_us" class="nav-item nav-link">Contact Us</a>
            </div>
            <a href="login" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Login<i
                    class="fa fa-arrow-right ms-3"></i></a>
        </sec:authorize>            
        <sec:authorize access="isAuthenticated()">
        	<sec:authorize access="hasRole('Users')">
				<div class="navbar-nav ms-auto p-4 p-lg-0">
	                <a href="cars" class="nav-item nav-link active">Home</a>
	            </div>
			</sec:authorize>
			<sec:authorize access="hasRole('Administrator')">
				<div class="navbar-nav ms-auto p-4 p-lg-0">
					<a class="nav-item nav-link" href="cars">Home</a> 
					<a class="nav-item nav-link" href="all_cars">Car Management</a> 
					<a class="nav-item nav-link" href="users">User Management</a>
				</div>

			</sec:authorize>
			<sec:authorize access="hasAnyRole('Administrator','Users')">

						<div class="navbar-nav px-5" style="width: 70%;">
							<sf:form action="search" method="get" style="width: 100%;">
								<div class="input-group">
									<input type="search" class="form-control rounded"
										placeholder="Search" aria-label="Search" name="keyword"
										aria-describedby="search-addon" />
									<button type="submit" class="btn btn-outline-primary">search</button>
								</div>
							</sf:form>
						</div>

						<!-- /logout must be a POST request, as csrf is enabled.
			        This ensures that log out requires a CSRF token and that a malicious user cannot forcibly log out your users.-->
						<div class="navbar-nav ms-auto">

							<a class="nav-item nav-link p-3" href="profile">Profile</a>

							<form action="logout" method="post" style="padding: 7px;">
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" /> <input type="submit" name="Logout"
									value="Logout" class="btn btn-primary"></input>
							</form>
						</div>

			</sec:authorize>
        </sec:authorize>
        
        </div>
    </nav>
    <!-- Navbar End -->
