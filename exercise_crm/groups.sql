-- create
CREATE TABLE IF NOT EXISTS groupscrm(
  id INT(11) AUTO_INCREMENT,
  name VARCHAR(255),
  description VARCHAR(255),
  PRIMARY KEY(id)
);
-- add values
INSERT INTO
  groupscrm(name, description)
VALUES
  ("Group 1", "Description 1");
-- view
SELECT
  *
FROM
  groupscrm;
-- clear
DELETE FROM
  groupscrm;
-- delete
  DROP TABLE groupscrm;