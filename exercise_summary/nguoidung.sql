-- create

CREATE TABLE IF NOT EXISTS nguoidung(
    tai_khoan CHAR(50) NOT NULL,
    mat_khau CHAR(50),
    ho_ten NVARCHAR(50),
    sdt CHAR(20),
    email CHAR(50),
    PRIMARY KEY(tai_khoan)
);

-- add values

INSERT INTO
    nguoidung(
        tai_khoan,
        ho_ten,
        sdt,
        email
    )
VALUES
    (
        "nguyenvana",
        "Nguyễn Văn A",
        "0123456789",
        "nguyenvana@gmail.com"
    ),
    (
        "nguyenvandung",
        "Nguyễn Văn Dũng",
        "0987654321",
        "nvd@gmail.com"
    );

-- hash pass

UPDATE
    nguoidung
SET
    mat_khau = MD5("a311290")
WHERE
    tai_khoan = "nguyenvana";

UPDATE
    nguoidung
SET
    mat_khau = MD5("dung91")
WHERE
    tai_khoan = "nguyenvandung";

-- view

SELECT * FROM nguoidung;