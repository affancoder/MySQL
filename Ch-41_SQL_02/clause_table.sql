CREATE DATABASE instagram;
USE instagram;
CREATE TABLE user (
	id INT,
    age INT,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE,
    followers INT DEFAULT 0,
    following INT,
    CONSTRAINT CHECK (age >= 13),
    PRIMARY KEY (id)
);

INSERT INTO user
(id, age, name, email, followers, following)
VALUES
(1, 14, "adam", "adamyahoo.in", 123, 145),
(2, 15, "bob", "bob123@gmail.com", 200, 200),
(3, 16, "eve", "eve6@gmail.com", 300, 368),
(4, 17, "casey", "casey@gmail.com", 200, 105);

INSERT INTO user
(id, age, name, email, followers, following)
VALUES
(5, 14, "donald", "donald@gmail.com", 400, 145),
(6, 16, "farah", "farah@gmail.com", 10000, 1000);
 
-- Alter table
ALTER TABLE user
ADD COLUMN city VARCHAR(25) DEFAULT "Delhi";
 
ALTER TABLE user
DROP COLUMN age; 
 
ALTER TABLE user
DROP COLUMN city; 

ALTER TABLE InstaUser
RENAME TO user;

ALTER TABLE user
CHANGE COLUMN subscriberS subs INT DEFAULT 0;
  
-- ALTER TABLE user
-- MODIFY subs INT DEFAULT 5; 

-- SELECT *
-- FROM user 
-- WHERE followers >= 150;

-- SELECT name, followers
-- FROM user
-- WHERE followers >=200;

-- SELECT name,age,followers
-- FROM user
-- WHERE age >= 15 AND followers >= 200;

-- SELECT name,age,followers
-- FROM user
-- WHERE age >= 15 OR followers >= 200;

-- SELECT name,age
-- FROM user
-- WHERE age BETWEEN 15 AND 17;

-- SELECT name, age, email
-- FROM user
-- WHERE age IN (14, 16);

-- SELECT name, age, email
-- FROM user
-- WHERE age NOT IN (16, 17);

-- SELECT id, name, age, email, following FROM user
-- LIMIT 4;
-- -- LIMIT USE FOR LIMITATION OF ROWS EXECUTION

-- SELECT name, age, followers
-- FROM user
-- ORDER BY followers AND age ASC;

-- SELECT id, name, age
-- FROM user
-- ORDER BY id AND age DESC;

-- SELECT max(age)
-- FROM user;
--  
-- SELECT max(followers)
-- FROM user;

-- SELECT count(age)
-- FROM user
-- WHERE age = 14;

-- SELECT avg(age)
-- FROM user;

-- SELECT max(followers)
-- FROM user;

-- SELECT age, max(followers)
-- FROM user
-- GROUP BY age;

-- SELECT age, max(followers)
-- FROM user
-- GROUP BY age
-- HAVING followerws > 200
-- ORDER BY followers DESC;

-- UPDATE user
-- SET followers = 650
-- WHERE age >= 15;

-- DELETE FROM user
-- WHERE age = 16;

SELECT * FROM user;

SET SQL_SAFE_UPDATES = 0;

CREATE TABLE post (
	id INT PRIMARY KEY,
    content VARCHAR(100),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES user(id)
);