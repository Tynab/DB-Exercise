-- Summary:
--   Tao bang nhom cong viec cho database baitapcrm.
--   Bang taskscrm se tham chieu den bang nay qua group_id.

CREATE DATABASE IF NOT EXISTS baitapcrm;
USE baitapcrm;

-- Schema: nhom dung de phan loai task.
CREATE TABLE IF NOT EXISTS groupscrm (
    id INT AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    PRIMARY KEY (id)
);

-- Seed data.
INSERT INTO
    groupscrm (id, name, description)
VALUES
    (1, 'Group 1', 'Description 1')
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    description = VALUES(description);

-- Quick check.
SELECT * FROM groupscrm;
