<footer class="bg-body-tertiary">
        <div class="container-fluid">
            <div class="container pt-3">
                <div class="row  d-flex justify-content-between">
                    <div class="col-lg-4 ">
                        <a href="homepage"> <img src="img/ABCLogo2.png" alt="ABCLogo" class="img-fluid">
                        </a>
                        <h5 class="mb-3">About Us</h5>
                        <p>ABC Job Jobs Pte Ltd is a company engaged in technology and
                            information. We provide the Community Portal solutions for your
                            various job and business needs.</p>
                    </div>
                    <div class="col-md-3 pt-5">
                        <h5 class="mb-3">Contact Us</h5>
                        <ul class="list-unstyled">
                            <li><a href="#" class="text-decoration-none">Jl. Jend.
                                    Sudirman No. 123, Jakarta</a></li>
                            <li><a href="#" class="text-decoration-none">0800-123-4567</a></li>
                            <li><a href="#" class="text-decoration-none">info@abcjob.com</a></li>
                        </ul>
                    </div>
                    <hr>
                </div>
            </div>
            <div class="row pb-1">
                <div class="col-md-12">
                    <p class="text-center  text-muted">&copy; 2023 ABC Jobs Pte Ltd
                        | All Rights Reserved.</p>
                </div>
            </div>
        </div>
    </footer>
    <script>
		const followBtn = document.querySelector(".follow");
		followBtn.addEventListener("click", () => {
			if(followBtn.innerHTML == "Follow") {
				followBtn.classList.remove("btn-outline-primary");
				followBtn.classList.add("btn-primary");
				followBtn.innerHTML = "Unfollow";
			} else {
				followBtn.classList.add("btn-outline-primary");
				followBtn.classList.remove("btn-primary");
				followBtn.innerHTML = "Follow";
			}
		});
	</script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>

</html>