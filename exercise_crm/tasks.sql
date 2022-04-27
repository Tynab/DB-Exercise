-- create
CREATE TABLE IF NOT EXISTS taskscrm(
  id INT(11) AUTO_INCREMENT,
  name VARCHAR(255),
  end_date VARCHAR(20),
  PRIMARY KEY(id)
);
-- add values
INSERT INTO
  taskscrm(name, end_date)
VALUES
  ("Task 1", "2020-01-01");
-- add new column
ALTER TABLE
  taskscrm
ADD
  COLUMN group_id INT(11);
ALTER TABLE
  taskscrm
ADD
  COLUMN account_id INT(11);
ALTER TABLE
  taskscrm
ADD
  COLUMN status_id INT(11);
-- add foreign key
ALTER TABLE
  taskscrm
ADD
  CONSTRAINT fk_groupid FOREIGN KEY(group_id) REFERENCES groupscrm(id);
ALTER TABLE
  taskscrm
ADD
  CONSTRAINT fk_accountid FOREIGN KEY(account_id) REFERENCES accountscrm(id);
ALTER TABLE
  taskscrm
ADD
  CONSTRAINT fk_statusid FOREIGN KEY(status_id) REFERENCES statuscrm(id);
-- edit value
UPDATE
  taskscrm
SET
  group_id = 1,
  account_id = 1,
  status_id = 1
WHERE
  id = 1;
-- view
SELECT
  *
FROM
  taskscrm;
-- clear
DELETE FROM
  taskscrm;
-- delete
  DROP TABLE taskscrm;