DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS post;

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  FirstName VARCHAR(255),
  LastName VARCHAR(255),
  Email VARCHAR(255),
  username VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL
);

-- (CustomerName, ContactName, Address, City, PostalCode, Country)

CREATE TABLE post (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  author_id INTEGER NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  title MEDIUMTEXT NOT NULL,
  body MEDIUMTEXT NOT NULL,
  FOREIGN KEY (author_id) REFERENCES user (id)
);


-- CREATE TABLE `dev_server`.`user` (
--   UserID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--   FirstName VARCHAR(255),
--   LastName VARCHAR(255),
--   Email VARCHAR(255),
--   username TEXT UNIQUE NOT NULL,
--   password TEXT NOT NULL
-- );
--
