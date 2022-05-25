-- create

CREATE TABLE IF NOT EXISTS chude(
    ma CHAR(10) NOT NULL,
    ten NVARCHAR(50),
    PRIMARY KEY(ma)
);

-- add values

INSERT INTO chude VALUES ("CD01", "Văn Học");

-- view

SELECT * FROM chude;

-- clear

DELETE FROM chude;

-- delete

DROP TABLE chude;