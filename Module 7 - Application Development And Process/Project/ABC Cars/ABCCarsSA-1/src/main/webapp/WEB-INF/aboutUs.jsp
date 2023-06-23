<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta charset="utf-8">
    <title>ABC Cars Pte Ltd | About Us</title>
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

	<!-- Page Header Start -->
<div class="container-fluid page-header mb-5 p-0" style="background-image: url(images/ford-mustang-shelby.jpg);">
<div class="container-fluid page-header-inner py-5">
    <div class="container text-center">
        <h1 class="display-3 text-white mb-3 animated slideInDown">About Us</h1>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb justify-content-center text-uppercase">
                <li class="breadcrumb-item"><a href="cars">Home</a></li>
                <li class="breadcrumb-item text-white active" aria-current="page">About</li>
            </ol>
        </nav>
    </div>
</div>
</div>
<!-- Page Header End -->


<!-- Service Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-4">
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="d-flex py-5 px-4">
                        <i class="fa fa-certificate fa-3x text-primary flex-shrink-0"></i>
                        <div class="ps-4">
                            <h5 class="mb-3">Quality Servicing</h5>
                            <p>We provide high-quality servicing to ensure our customers receive the best experience.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="d-flex bg-light py-5 px-4">
                        <i class="fa fa-users-cog fa-3x text-primary flex-shrink-0"></i>
                        <div class="ps-4">
                            <h5 class="mb-3">Expert Workers</h5>
                            <p>Our team consists of expert workers who are knowledgeable and skilled in their respective
                                fields.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="d-flex py-5 px-4">
                        <i class="fa fa-tools fa-3x text-primary flex-shrink-0"></i>
                        <div class="ps-4">
                            <h5 class="mb-3">Modern Equipment</h5>
                            <p>We use state-of-the-art modern equipment to provide efficient and effective services.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Service End -->


    <!-- Fact Start -->
    <div class="container-fluid fact my-5 py-5">
        <div class="container">
            <div class="row g-4">
                <div class="col-md-6 col-lg-4 text-center wow fadeIn" data-wow-delay="0.1s">
                    <i class="fa fa-check fa-2x  mb-3"></i>
                    <h2 class=" mb-2" data-toggle="counter-up">7</h2>
                    <p class=" mb-0">Years Experience</p>
                </div>
                <div class="col-md-6 col-lg-4 text-center wow fadeIn" data-wow-delay="0.5s">
                    <i class="fa fa-users fa-2x  mb-3"></i>
                    <h2 class=" mb-2" data-toggle="counter-up">1523</h2>
                    <p class=" mb-0">Satisfied Clients</p>
                </div>
                <div class="col-md-6 col-lg-4 text-center wow fadeIn" data-wow-delay="0.7s">
                    <i class="fa fa-car fa-2x  mb-3"></i>
                    <h2 class=" mb-2" data-toggle="counter-up">1743</h2>
                    <p class=" mb-0">Sold Cars</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Fact End -->


    <!-- Team Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="text-primary text-uppercase">// Our Staff //</h6>
                <h1 class="mb-5">Our Expert Staff</h1>
            </div>
            <div class="row g-4">
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="team-item">
                        <div class="position-relative overflow-hidden">
                            <img class="img-fluid" src="images/team-1.jpg" alt="">
                            <div class="team-overlay position-absolute start-0 top-0 w-100 h-100">
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                        <div class="bg-light text-center p-4">
                            <h5 class="fw-bold mb-0">Albert Wesker</h5>
                            <small>Marketing Manager</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="team-item">
                        <div class="position-relative overflow-hidden">
                            <img class="img-fluid" src="images/team-2.jpg" alt="">
                            <div class="team-overlay position-absolute start-0 top-0 w-100 h-100">
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                        <div class="bg-light text-center p-4">
                            <h5 class="fw-bold mb-0">John Smith</h5>
                            <small>Operations Manager</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="team-item">
                        <div class="position-relative overflow-hidden">
                            <img class="img-fluid" src="images/team-3.jpg" alt="">
                            <div class="team-overlay position-absolute start-0 top-0 w-100 h-100">
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                        <div class="bg-light text-center p-4">
                            <h5 class="fw-bold mb-0">Scott Lawson</h5>
                            <small>Marketing Manager</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                    <div class="team-item">
                        <div class="position-relative overflow-hidden">
                            <img class="img-fluid" src="images/team-4.jpg" alt="">
                            <div class="team-overlay position-absolute start-0 top-0 w-100 h-100">
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                        <div class="bg-light text-center p-4">
                            <h5 class="fw-bold mb-0">Berg Johnson</h5>
                            <small>CEO</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Team End -->


    <!-- Testimonial Start -->
    <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="text-center">
                <h6 class="text-primary text-uppercase">// Testimonial //</h6>
                <h1 class="mb-5">Our Clients Say!</h1>
            </div>
            <div class="owl-carousel testimonial-carousel position-relative">
                <div class="testimonial-item text-center">
                    <img class="bg-light rounded-circle p-2 mx-auto mb-3" src="images/testimonial-1.jpg"
                        style="width: 80px; height: 80px;">
                    <h5 class="mb-0">John Smith</h5>
                    <p>Marketing Manager</p>
                    <div class="testimonial-text bg-light text-center p-4">
                        <p class="mb-0">I recently purchased a car from ABC Cars and I have to say it was a fantastic
                            experience from start to finish. The staff were extremely helpful and knowledgeable, and
                            they made the whole process of buying a car very easy and stress-free. The car I purchased
                            is of excellent quality and I couldn't be happier with my purchase. I would definitely
                            recommend ABC Cars to anyone looking for a reliable and high-quality car.</p>
                    </div>
                </div>
                <div class="testimonial-item text-center">
                    <img class="bg-light rounded-circle p-2 mx-auto mb-3" src="images/testimonial-2.jpg"
                        style="width: 80px; height: 80px;">
                    <h5 class="mb-0">Mary Jones</h5>
                    <p>Teacher</p>
                    <div class="testimonial-text bg-light text-center p-4">
                        <p class="mb-0">I had a great experience buying a car from ABC Cars. The staff were very
                            friendly and helpful, and they really took the time to listen to my needs and help me find
                            the right car for me. They were very patient and understanding, and they never made me feel
                            pressured or rushed. The car I ended up purchasing is in excellent condition and I am very
                            happy with my purchase. I would definitely recommend ABC Cars to anyone looking for a
                            quality used car.</p>
                    </div>
                </div>
                <div class="testimonial-item text-center">
                    <img class="bg-light rounded-circle p-2 mx-auto mb-3" src="images/testimonial-3.jpg"
                        style="width: 80px; height: 80px;">
                    <h5 class="mb-0">Tom Davis</h5>
                    <p>Engineer</p>
                    <div class="testimonial-text bg-light text-center p-4">
                        <p class="mb-0">I was extremely impressed with the level of service I received from ABC Cars.
                            The staff were very professional and knowledgeable, and they made the whole process of
                            buying a car very easy and straightforward. They took the time to explain everything to me
                            and answer all of my questions, and they were very patient and understanding throughout the
                            entire process. The car I purchased is of excellent quality and I would definitely recommend
                            ABC Cars to anyone looking for a reliable and high-quality car.</p>
                    </div>
                </div>
                <div class="testimonial-item text-center">
                    <img class="bg-light rounded-circle p-2 mx-auto mb-3" src="images/testimonial-1.jpg"
                        style="width: 80px; height: 80px;">
                    <h5 class="mb-0">John Smith</h5>
                    <p>Marketing Manager</p>
                    <div class="testimonial-text bg-light text-center p-4">
                        <p class="mb-0">I recently purchased a car from ABC Cars and I have to say it was a fantastic
                            experience from start to finish. The staff were extremely helpful and knowledgeable, and
                            they made the whole process of buying a car very easy and stress-free. The car I purchased
                            is of excellent quality and I couldn't be happier with my purchase. I would definitely
                            recommend ABC Cars to anyone looking for a reliable and high-quality car.</p>
                    </div>
                </div>
                <div class="testimonial-item text-center">
                    <img class="bg-light rounded-circle p-2 mx-auto mb-3" src="images/testimonial-3.jpg"
                        style="width: 80px; height: 80px;">
                    <h5 class="mb-0">Tom Davis</h5>
                    <p>Engineer</p>
                    <div class="testimonial-text bg-light text-center p-4">
                        <p class="mb-0">I was extremely impressed with the level of service I received from ABC Cars.
                            The staff were very professional and knowledgeable, and they made the whole process of
                            buying a car very easy and straightforward. They took the time to explain everything to me
                            and answer all of my questions, and they were very patient and understanding throughout the
                            entire process. The car I purchased is of excellent quality and I would definitely recommend
                            ABC Cars to anyone looking for a reliable and high-quality car.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial End -->


	<%@ include file="footer.jsp"%>
</body>
</html>
