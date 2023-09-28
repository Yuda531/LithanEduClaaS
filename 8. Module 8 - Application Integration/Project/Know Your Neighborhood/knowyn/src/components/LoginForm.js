import React, { useState } from "react";
import fbLogo from "../img/fb-logo.png";
import FacebookLogin from "@greatsumini/react-facebook-login";
import { API_BASE_URL } from "../util/port";
import axios from "axios";
import Swal from "sweetalert2";

const LoginForm = () => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [validated, setValidated] = useState(false);

  const handleSubmit = (event) => {
    event.preventDefault();
    setValidated(true);

    if (event.target.checkValidity()) {
      handleLogin();
    }
  };

  const handleLogin = () => {
    const logData = {
      email: email,
      password: password,
      provider: "LOCAL",
    };

    console.log("Email:", email);
    console.log("Password:", password);

    axios
      .post(API_BASE_URL + "/user/login", logData)
      .then((response) => {
        sessionStorage.setItem("user", JSON.stringify(logData));
        console.log(response.data);
        // Lakukan tindakan lain dengan data yang diterima
        successAlert();
      })
      .catch((error) => {
        console.error(error);
        // Handle error jika permintaan POST gagal
        errorAlert();
      });
  };
  const handleFacebookLogin = (response) => {
    let data = {
      email: response.email,
      fullName: response.name,
      provider: "FACEBOOK",
    };

    axios
      .post(API_BASE_URL + "/user/login", data)
      .then((response) => {
        sessionStorage.setItem("user", JSON.stringify(data));
        // Lakukan tindakan lain dengan data yang diterima
        successAlert();
      })
      .catch((error) => {
        console.error(error);
        // Handle error jika permintaan POST gagal
        errorAlert();
      });

    console.log("Login Success!", response);
  };

  const successAlert = () => {
    Swal.fire({
      title: "Success",
      text: "Login Success",
      icon: "success",
      confirmButtonText: "OK",
      confirmButtonClass: "btn btn-primary",
    }).then(() => {
      window.location.href = `/profile`;
    });
  };

  const errorAlert = () => {
    Swal.fire({
      title: "Error",
      text: "Invalid email or password",
      icon: "error",
      confirmButtonText: "OK",
      confirmButtonClass: "btn btn-primary",
    });
  };

  return (
    <>
      <div className="container logincont" data-aos="fade-up">
        <div className="login-container">
          <h2 className="mb-4 text-center">Login to KYN</h2>
          <form onSubmit={handleSubmit} noValidate className={validated ? "was-validated" : ""}>
            <div className="form-group mb-3">
              <label htmlFor="email">Email address</label>
              <input type="email" className="form-control" id="email" placeholder="Enter your email" value={email} onChange={(e) => setEmail(e.target.value)} required />
              <div className="invalid-feedback">Please provide your Email.</div>
            </div>
            <div className="form-group mb-3">
              <label htmlFor="password">Password</label>
              <input type="password" className="form-control" id="password" placeholder="Enter your password" value={password} onChange={(e) => setPassword(e.target.value)} required />
              <div className="invalid-feedback">Please provide your Password</div>
            </div>
            <div className="d-flex justify-content-center">
              <button type="submit" className="btn btn-primary btn-md w-100">
                Login
              </button>
            </div>
          </form>
          <p className="text-center mt-2">Or</p>
          <div className="social-login text-center mt-2">
            <FacebookLogin
              className="btn btn-outline-primary social-btn btn-facebook btn-md w-100"
              appId="1314089945811784"
              onSuccess={(response) => {
                console.log(response);
              }}
              onFail={(error) => {
                console.log("Login Failed!", error);
              }}
              onProfileSuccess={handleFacebookLogin}
            >
              <img src={fbLogo} alt="Facebook" /> Log in with Facebook
            </FacebookLogin>
          </div>
        </div>
        <div className="copyright text-center mt-2">
          &copy; {new Date().getFullYear()}{" "}
          <strong>
            <span>KYN</span>
          </strong>
          . All Rights Reserved | <strong>2023</strong>
        </div>
      </div>
    </>
  );
};

export default LoginForm;
