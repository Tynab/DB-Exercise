-- create

CREATE TABLE IF NOT EXISTS students(
    id INT AUTO_INCREMENT,
    full_name VARCHAR(50) NOT NULL,
    gender VARCHAR(3),
    age INT,
    city VARCHAR(20),
    weight DOUBLE,
    PRIMARY KEY(id)
);

-- add values

INSERT INTO
    students(full_name, gender, age, city, weight)
VALUES
    (
        "Nguyen Thanh Nhan",
        "Nam",
        19,
        "Can Tho",
        56.5674
    ),
    (
        "Pham Thu Huong",
        "Nu",
        20,
        "Vinh Long",
        72.456
    ),
    (
        "Nguyen Nhu Ngoc",
        "Nu",
        20,
        "Soc Trang",
        85.387
    ),
    (
        "Bui Thanh Bao",
        "Nam",
        19,
        "Soc Trang",
        49.3
    ),
    (
        "Ly My Nhan",
        "Nu",
        22,
        "Can Tho",
        62.963
    ),
    (
        "Tan Thuc Bao",
        "Nam",
        35,
        "An Giang",
        55.5678
    ),
    (
        "Trinh Giao Kim",
        "Nam",
        44,
        "Bac Lieu",
        67.34
    );

-- view

SELECT * FROM students;

-- clear

DELETE FROM students;

-- delete

DROP TABLE students;