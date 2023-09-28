<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/views/1regis.css">
</head>
<body>
    <div class="content">
        <div class="regis-box">
            <div class="top-box">
                <h1>Sign Up</h1>
                <img src="<%=request.getContextPath() %>/views/ABCLogo.png" alt="ABCLogo">
            </div>
            <div class="content-box">
                <hr>
                <form action="<%= request.getContextPath() %>/register" method="post">
					<div class="form-group">
                        <input type="email" class="form-control" placeholder="Email Address" name="email" maxlength="50" required>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Fullname" name="fullname" maxlength="50" required>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Location" name="location" maxlength="50" required>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Password" name="password" maxlength="15" required>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Confirm Password" name="confPass" maxlength="15" required>
                    </div>
                    <p class="by">By clicking Agree &amp; Join, you agree to the ABC Jobs</p>
                    <p>User Agreement, Privacy Policy, and Cookie Policy.</p>
                    <button type="submit" class="btn btn-primary">Agree and Join</button>
                    <p class="mt-3 by">Already on ABC Jobs? <a href="#">Sign In</a></p>
                </form>
            </div>
        </div>
        <div class="photo-right">
            <h1>Let's Create Your</h1>
            <h1>Profile Here</h1>
            <img src="<%=request.getContextPath() %>/views/Join.png" alt="Welcome Image" width="400px" height="auto">
        </div>
    </div>
    <hr>
</body>
</html>