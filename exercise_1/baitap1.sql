-- Summary:
--   Tap hop cac truy van luyen tap tren bang students cua database baitap1.
--   Chay student.sql truoc file nay neu database chua co du lieu.

CREATE DATABASE IF NOT EXISTS baitap1;
USE baitap1;

-- 1. Liet ke hoc vien nam, sap xep tuoi giam dan.
SELECT
    id,
    full_name,
    gender,
    age,
    city,
    weight
FROM
    students
WHERE
    gender = 'Nam'
ORDER BY
    age DESC;

-- 2. Lay toi da 2 hoc vien nu dau tien theo id.
SELECT
    id,
    full_name,
    gender,
    age,
    city,
    weight
FROM
    students
WHERE
    gender = 'Nu'
ORDER BY
    id
LIMIT 2;

-- 3. Lay ten va tuoi cua hoc vien song o Can Tho hoac Soc Trang.
SELECT
    full_name,
    age
FROM
    students
WHERE
    city IN ('Can Tho', 'Soc Trang');
