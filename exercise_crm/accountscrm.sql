-- create

CREATE TABLE IF NOT EXISTS accountscrm(
    id INT(11) AUTO_INCREMENT,
    fullname VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(20),
    phone VARCHAR(20),
    address VARCHAR(255),
    PRIMARY KEY(id)
);

-- add values

INSERT INTO
    accountscrm(fullname, email, password, phone, address)
VALUES
    (
        "Fullname 1",
        "fullname1@gmail.com",
        "123456",
        "0987654321",
        "Address 1"
    );

-- view

SELECT * FROM accountscrm;

-- clear

DELETE FROM accountscrm;

-- delete

DROP TABLE accountscrm;