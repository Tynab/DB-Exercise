-- create
CREATE DATABASE IF NOT EXISTS baitap1;
-- use
USE baitap1;
-- main
SELECT
  *
FROM
  students
WHERE
  gender = "Nam"
ORDER BY
  age DESC;
SELECT
  *
FROM
  students
WHERE
  gender = "Nu"
LIMIT
  2;
SELECT
  full_name,
  age
FROM
  students
WHERE
  city = "Can Tho"
  OR city = "Soc Trang";
-- delete
  DROP DATABASE baitap1;