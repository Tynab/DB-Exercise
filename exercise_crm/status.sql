-- create

CREATE TABLE IF NOT EXISTS statuscrm(
    id INT(11) AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY(id)
);

-- add values

INSERT INTO statuscrm(name) VALUES ("Status 1");

-- view

SELECT * FROM statuscrm;

-- clear

DELETE FROM statuscrm;

-- delete

DROP TABLE statuscrm;