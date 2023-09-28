import React, { useState } from "react";
import { API_BASE_URL } from "../util/port";
import axios from "axios";
import Swal from "sweetalert2";

const RegisForm = () => {
  const [name, setName] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [validated, setValidated] = useState(false);

  const handleSubmit = (event) => {
    event.preventDefault();
    setValidated(true);

    if (event.target.checkValidity()) {
      handleRegis();
    }
  };

  const handleRegis = () => {
    const postData = {
      name: name,
      email: email,
      password: password,
    };
    console.log("Name:", name);
    console.log("Email:", email);
    console.log("Password:", password);

    axios
      .post(API_BASE_URL + "/user/register", postData)
      .then((response) => {
        console.log(response.data);
        // Lakukan tindakan lain dengan data yang diterima
        successAlert();
      })
      .catch((error) => {
        console.error(error);
        // Handle error jika permintaan POST gagal
        if (error.response && error.response.data && error.response.data.error) {
          // Tangkap pesan kesalahan dari backend dan tampilkan menggunakan SweetAlert
          errorAlert(error.response.data.error);
        }
      });
  };

  const errorAlert = (message) => {
    Swal.fire({
      title: "Error",
      text: message,
      icon: "error",
      confirmButtonText: "OK",
      confirmButtonClass: "btn btn-primary",
    });
  };

  const successAlert = () => {
    Swal.fire({
      title: "Success",
      text: "Register Successfully!",
      icon: "success",
      confirmButtonText: "OK",
      confirmButtonClass: "btn btn-primary",
    }).then(() => {
      window.location.href = "/login";
    });
  };

  return (
    <>
      <div className="container regcont" data-aos="fade-up">
        <div className="register-container">
          <h2 className="mb-4 text-center">Register to KYN</h2>
          <form
            onSubmit={handleSubmit}
            noValidate
            className={validated ? "was-validated" : ""}
          >
            <div className="form-group mb-3">
              <label htmlFor="name">Name</label>
              <input
                type="text"
                className="form-control"
                id="name"
                placeholder="Enter your name"
                value={name}
                onChange={(e) => setName(e.target.value)}
                required
              />
              <div className="invalid-feedback">Please provide your Name.</div>
            </div>
            <div className="form-group mb-3">
              <label htmlFor="email">Email address</label>
              <input
                type="email"
                className="form-control"
                id="email"
                placeholder="Enter your email"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                required
              />
              <div className="invalid-feedback">Please provide your Email.</div>
            </div>
            <div className="form-group mb-3">
              <label htmlFor="password">Password</label>
              <input
                type="password"
                className="form-control"
                id="password"
                placeholder="Enter your password"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                required
              />
              <div className="invalid-feedback">
                Please provide your Password
              </div>
            </div>
            <div className="d-flex justify-content-center">
              <button type="submit" className="btn btn-primary btn-md w-100">
                Register
              </button>
            </div>
          </form>
        </div>
        <div className="text-center mt-5">
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

export default RegisForm;
