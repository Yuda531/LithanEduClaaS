<%@ include file="header3.jsp" %>

	<section class="profile pt-5 pb-5" style="background-color: #eee;">
        <div class="container">
            <div class="row">
                <div class="alert alert-success alert-dismissible fade show my-3 ${ message == null ? " d-none"
                    : "d-block" }" role="alert">
                    ${ message }
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>

                <div class="profile col-lg-12">
                    <div class="card">
                        <div class="img-fluid rounded-3 text-light d-flex flex-row"
                            style="height: 400px; background-image: url(img/bg.jpg); background-repeat: no-repeat; background-size: cover;">
                            <div class="ms-4 mt-5 d-flex flex-column" style="width: 150px;">
                                <img src="img/My Profile.jpeg" alt="Generic placeholder image"
                                    class="myImg img-fluid img-thumbnail rounded-circle"
                                    style="width: 150px; z-index: 1; margin-top: 310px;">
                            </div>
                        </div>
                        <div class="p-4 text-black bg-light rounded-3">
                            <div class="d-flex align-items-center justify-content-between">
                                <div class="myName " style="margin-left: 165px;">
                                    <h2 class="fw-bold">${fullname}</h2>
                                    <span>${job}</span>
                                </div>
                                <div>
                                    <button class="btn btn-primary h5 rounded-pill px-5 py-2 " data-bs-toggle="modal"
                                        data-bs-target="#editProfileModal">Edit
                                        Profile</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12  d-flex mt-5 bg-light rounded-3">
                        <div class="col-lg-4">
                            <div class="container">
                                <div class="row">
                                    <h1>Status</h1>
                                    <div class="col-lg-12">
                                        <div class="card mb-4">
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <i class="fa fa-home" style="font-size: 40px"></i>
                                                    </div>
                                                    <div class="col-sm-8">
                                                        <p class="text-muted mb-0">${location}</p>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <i class="fa fa-university" style="font-size: 36px"></i>
                                                    </div>
                                                    <div class="col-sm-8">
                                                        <p class="text-muted mb-0">${education}</p>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <i class='fa fa-building' style='font-size: 42px;'></i>
                                                    </div>
                                                    <div class="col-sm-8">
                                                        <p class="text-muted mb-0">${job}</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="container">
                                <div class="row">
                                    <h1>Biodata</h1>
                                    <div class="col-lg-12">
                                        <div class="card mb-4">
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <p class="mb-0">Full Name</p>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <p class="text-muted mb-0">${fullname}</p>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <p class="mb-0">Email</p>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <p class="text-muted mb-0">${email}</p>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <p class="mb-0">Phone</p>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <p class="text-muted mb-0">${phoneNumber}</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Modal -->
    <div class="modal fade" id="editProfileModal" tabindex="-1" aria-labelledby="editProfileModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editProfileModalLabel">Edit
                        Profile</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="editprofile" method="post">
                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="name" class="form-label">Full Name</label> <input type="text"
                                class="form-control" id="name" name="fullname" value="${fullname}">
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label> <input type="email" class="form-control"
                                id="email" name="email" value="${email}">
                        </div>
                        <div class="mb-3">
                            <label for="phoneNumber" class="form-label">Phone</label> <input type="text"
                                class="form-control" id="phoneNumber" name="phoneNumber" value="${phoneNumber}">
                        </div>
                        <div class="mb-3">
                            <label for="location" class="form-label">Location</label> <input type="text"
                                class="form-control" id="location" name="location" value="${location}">
                        </div>
                        <div class="mb-3">
                            <label for="education" class="form-label">Education</label> <input type="text"
                                class="form-control" id="education" name="education" value="${education}">
                        </div>
                        <div class="mb-3">
                            <label for="job" class="form-label">Job</label> <input type="text" class="form-control"
                                id="job" name="job" value="${job}">
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save
                            changes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
	
	
	
<%@ include file="footer1.jsp" %>