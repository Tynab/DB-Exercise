-- create

CREATE TABLE IF NOT EXISTS rap(
    ma CHAR(10) NOT NULL,
    ten NVARCHAR(50),
    PRIMARY KEY(ma)
);

-- add values

INSERT INTO rap VALUES ("R01", "Rạp 1"), ("R02", "Rạp 2");

-- add new column

ALTER TABLE rap ADD COLUMN ma_ghe CHAR(10);

-- add foreign key

ALTER TABLE
    rap
ADD
    CONSTRAINT fk_mg FOREIGN KEY(ma_ghe) REFERENCES ghe(ma);

-- edit value

UPDATE rap SET ma_ghe = "G01" WHERE ma = "R01";

UPDATE rap SET ma_ghe = "G02" WHERE ma = "R02";

-- view

SELECT * FROM rap;