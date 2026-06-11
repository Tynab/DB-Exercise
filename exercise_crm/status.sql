-- Summary:
--   Tao bang trang thai cong viec cho database baitapcrm.
--   Bang taskscrm se tham chieu den bang nay qua status_id.

CREATE DATABASE IF NOT EXISTS baitapcrm;
USE baitapcrm;

-- Schema: danh muc trang thai task.
CREATE TABLE IF NOT EXISTS statuscrm (
    id INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

-- Seed data.
INSERT INTO
    statuscrm (id, name)
VALUES
    (1, 'Status 1')
ON DUPLICATE KEY UPDATE
    name = VALUES(name);

-- Quick check.
SELECT * FROM statuscrm;
