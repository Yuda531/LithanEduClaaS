import React, { useEffect, useState } from "react";
import { Link, NavLink } from "react-router-dom";
import { API_BASE_URL } from "../util/port";
import axios from "axios";
import Swal from "sweetalert2";

const Navbar = () => {
  const [isLogged, setIsLogged] = useState(false);

  useEffect(() => {
    const userSession = sessionStorage.getItem("user");
    setIsLogged(!!userSession);
  }, []);

  function handleLogout() {
    const userSession = sessionStorage.getItem("user");
    const parsedSession = JSON.parse(userSession);

    if (parsedSession.provider === "FACEBOOK") {
      handleFacebookLogout();
    } else {
      axios
        .get(API_BASE_URL + "/user/logout", {
          headers: {
            Authorization:
              "Basic " + btoa(parsedSession.email + ":" + parsedSession.password),
          },
        })
        .then(() => {
          sessionStorage.removeItem("user");
          window.location.href = "/login";
        })
        .catch((error) => {
          console.error(error);
          alert("Logout error");
        });
    }
  }

  function handleFacebookLogout() {
    sessionStorage.clear();
    window.FB.logout(() => {
      window.location.href = "/login";
    });
  }

  return (
    <header id="header" className="fixed-top">
      <div className="container d-flex align-items-center">
        <h1 className="logo me-auto">
          <Link to="/">KYN</Link>
        </h1>
        <nav id="navbar" className="navbar">
          <ul>
            {isLogged && (
              <li>
                <NavLink className="nav-lin logbutton" to="/" onClick={handleLogout}>
                  Logout
                </NavLink>
              </li>
            )}
            {!isLogged && (
              <>
                <li>
                  <NavLink className="nav-link" to="/" exact>
                    Home
                  </NavLink>
                </li>
                <li>
                  <NavLink className="nav-link" to="/about">
                    About
                  </NavLink>
                </li>
                <li>
                  <NavLink className="nav-link" to="/contact">
                    Contact
                  </NavLink>
                </li>
                <li>
                  <NavLink className="nav-link getstarted" to="/registration">
                    Registration
                  </NavLink>
                </li>
                <li>
                  <NavLink className="nav-link getstarted" to="/login">
                    Login
                  </NavLink>
                </li>
              </>
            )}
          </ul>
          <i className="bi bi-list mobile-nav-toggle"></i>
        </nav>
      </div>
    </header>
  );
};

export default Navbar;
