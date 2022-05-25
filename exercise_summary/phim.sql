-- create

CREATE TABLE IF NOT EXISTS phim(
    ma CHAR(10) NOT NULL,
    ten NVARCHAR(50),
    trailer LONGBLOB,
    hinh_anh LONGBLOB,
    mo_ta NVARCHAR(255),
    PRIMARY KEY(ma)
);

-- add values

INSERT INTO
    phim(ma, ten, mo_ta)
VALUES
    (
        "PH01",
        "Teddy",
        "Bộ phim dựa trên câu chuyện có thật."
    ),
    (
        "PH02",
        "Detective Conan",
        "Anime dựa trên bộ manga cùng tên."
    );

-- view

SELECT * FROM phim;

-- clear

DELETE FROM phim;

-- delete

DROP TABLE phim;