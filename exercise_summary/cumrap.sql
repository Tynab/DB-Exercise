-- create

CREATE TABLE IF NOT EXISTS cumrap(
    ma CHAR(10) NOT NULL,
    ten NVARCHAR(50),
    PRIMARY KEY(ma)
);

-- add values

INSERT INTO cumrap VALUES ("CR01", "Mega GS"), ("CR02", "CGV");

-- add new column

ALTER TABLE cumrap ADD COLUMN ma_rap CHAR(10);

ALTER TABLE cumrap ADD COLUMN so_ghe INT;

-- add foreign key

ALTER TABLE
    cumrap
ADD
    CONSTRAINT fk_mr FOREIGN KEY(ma_rap) REFERENCES rap(ma);

-- edit value

UPDATE cumrap SET ma_rap = "R01" WHERE ma = "CR01";

UPDATE cumrap SET ma_rap = "R02" WHERE ma = "CR02";

UPDATE cumrap SET so_ghe = 1 WHERE ma = "CR01";

UPDATE cumrap SET so_ghe = 1 WHERE ma = "CR02";

-- view

SELECT * FROM cumrap;

-- clear

DELETE FROM cumrap;

-- remove foreign key

ALTER TABLE cumrap DROP FOREIGN KEY fk_mr;

-- remove column

ALTER TABLE cumrap DROP COLUMN ma_rap;

-- delete

DROP TABLE cumrap;