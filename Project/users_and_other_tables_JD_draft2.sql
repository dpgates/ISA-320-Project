DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS manager;
DROP TABLE IF EXISTS account;
DROP TABLE IF EXISTS users_account_access; //adding tables based on the Bank_Breakdown.txt//
DROP TABLE IF EXISTS manager_account;

CREATE TABLE users (User_ID INT PRIMARY KEY  NOT NULL, 
                    USERNAME           TEXT NOT NULL,
                    USERPASSWORD       VARCHAR NOT NULL
                    );
CREATE TABLE manager (Manager_ID INT PRIMARY KEY  NOT NULL, 
                    MANAGERNAME           TEXT NOT NULL,
                    MANAGERPASSWORD       VARCHAR NOT NULL
                    );
CREATE TABLE account (User_ID INT PRIMARY KEY  NOT NULL, 
                    BALANCE          INT NOT NULL,
                    );

CREATE TABLE users_account_access (Manager_ID INT PRIMARY KEY  NOT NULL, //ID values match the respective user//
                    ACCESS_ACCOUNT           INT NOT NULL,        //More of a button prompt before accessing user account//
                    MODIFY_PASSWORD          INT NOT NULL,
                    BALANCE                  INT NOT NULL,
                    );
//More of a funtion than as a table//

CREATE TABLE manager_account (Manager_ID INT PRIMARY KEY  NOT NULL, //ID values match respective manager//
                    DEPOSIT          INT NOT NULL,
                    wITHDRAW         INT NOT NULL,
                    VIEW_CUST_AC     INT NOT NULL,
                    VIEW_CUST_AC_BY_SPECIFICS       INT NOT NULL
                    );
//More of a funtion than as a table//

(bank.db name).EXECUTE(
INSERT INTO users(User_ID, USERNAME, USERPASSWORD)
INSERT INTO users VALUES("1", "bob", "password");
INSERT INTO users VALUES("2", "Jane", "Doe"); //last name would be their passwords for now//
INSERT INTO users VALUES("3", "John", "Snowe");
INSERT INTO users VALUES("4", "Ashley", "Ketchum");
INSERT INTO users VALUES("5", "Naruata", "Hyumaki");
)
db.COMMIT()

(bank.db name).EXECUTE(
INSERT INTO manager(Manager_ID, MANAGERNAME, MANGERPASSWORD)
INSERT INTO manager VALUES("10", "Maou", "Sama"); //ID value as "tens" to seperate from users//
INSERT INTO manager VALUES("20", "Akihito", "Kayuba");
INSERT INTO manager VALUES("30", "Orochisaru", "Kishimodo");
INSERT INTO manager VALUES("40", "Tomaru", "Shigasaki");
INSERT INTO manager VALUES("50", "Akuma", "Okumuro");
)
db.COMMIT()

(bank.db name).EXECUTE(
INSERT INTO users(User_ID, BALANCE)
INSERT INTO account VALUES("1", "15999.90"); //Random values for each account with the same ID as the corrsesponding user//
INSERT INTO account VALUES("2", "16999.80");
INSERT INTO account VALUES("3", "17889.70");
INSERT INTO account VALUES("4", "18999.60");
INSERT INTO account VALUES("5", "19999.50");
)
db.COMMIT()

INSERT INTO users_account_access VALUES("user ID", "Yes/No", "Change to:", "balance_number");

INSERT INTO manager_account VALUES("manger_ID", "Amount Deposit:", "Amount Withdraw:", "all user accounts", "user_ID/user_name");

//I just added more tables and populated the tables. Can change if necessary - JD//
//I added a little more based on YouTube videos of pyhthon Sqlite3.//