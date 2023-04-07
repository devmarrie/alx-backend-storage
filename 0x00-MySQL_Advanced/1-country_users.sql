--  In and not out 
-- user with a unique email and enumarated country
CREATE TABLE IF NOT EXISTS users (
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email varchar(255) NOT NULL UNIQUE,
    name varchar(255),
    country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US'
);