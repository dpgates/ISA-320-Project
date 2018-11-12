DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS manager;
CREATE TABLE users (ID INT PRIMARY KEY  NOT NULL, 
                    NAME           TEXT NOT NULL,
                    PASSWORD       VARCHAR NOT NULL
                    );
CREATE TABLE manager (ID INT PRIMARY KEY  NOT NULL, 
                    NAME           TEXT NOT NULL,
                    PASSWORD       VARCHAR NOT NULL
                    );
INSERT INTO users VALUES(1, "bob", "password");


