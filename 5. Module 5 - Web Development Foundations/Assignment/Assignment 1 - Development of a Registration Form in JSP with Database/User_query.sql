CREATE SCHEMA community_portal;
USE community_portal;
CREATE TABLE user
(
  user_id INT NOT NULL AUTO_INCREMENT,
  user_email VARCHAR(55) NOT NULL,
  user_name VARCHAR(55) NOT NULL,
  location VARCHAR(55) NOT NULL,
  user_password VARCHAR(55) NOT NULL,
  date_register VARCHAR(55) NOT NULL,
  PRIMARY KEY (user_id)
);

