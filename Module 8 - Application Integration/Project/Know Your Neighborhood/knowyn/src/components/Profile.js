import React, { useEffect, useState } from "react";
import { Card } from "react-bootstrap";

const Profile = () => {
  const [ada, setAda] = useState(false);

  let userSession = sessionStorage.getItem("user");
  userSession = JSON.parse(userSession);

  return (
    <>
      <div className="profile-container">
        <div className="profile-header">
          <h1>Profile</h1>
        </div>
        <div className="profile-content">
          <Card className="profile-card shadow-lg p-5">
            <Card.Body>
              <div className="profile-picture">
                <img src="/assets/img/person.png" alt="Profile" />
              </div>
              <div className="profile-info">
                <h2 className="my-3">Welcome To KYN</h2>
                <h3 className="name">{userSession.email}</h3>
              </div>
            </Card.Body>
          </Card>
        </div>
      </div>
    </>
  );
};

export default Profile;
