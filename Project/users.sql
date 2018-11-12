DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS manager;
DROP TABLE IF EXISTS accout;
CREATE TABLE users (ID INT PRIMARY KEY  NOT NULL, 
                    NAME           TEXT NOT NULL,
                    PASSWORD       VARCHAR NOT NULL
                    );
CREATE TABLE manager (ID INT PRIMARY KEY  NOT NULL, 
                    NAME           TEXT NOT NULL,
                    PASSWORD       VARCHAR NOT NULL
                    );
CREATE TABLE account (ID INT PRIMARY KEY  NOT NULL, 
                    BALANCE          INT NOT NULL
                    );
INSERT INTO users VALUES(1, "bob", "password");


