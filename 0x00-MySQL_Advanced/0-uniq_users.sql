-- Creating a table 
-- The table should define some unique characters
CREATE IF NOT EXISTS TABLE users (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    email varchar(255) NOT NULL UNIQUE,
    name varchar(255)
)