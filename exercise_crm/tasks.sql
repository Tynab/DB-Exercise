-- Summary:
--   Tao bang cong viec CRM va lien ket task voi nhom, tai khoan phu trach, trang thai.
--   Can chay groups.sql, accountscrm.sql va status.sql truoc file nay.

CREATE DATABASE IF NOT EXISTS baitapcrm;
USE baitapcrm;

-- Schema: end_date dung kieu DATE de truy van thoi gian chinh xac hon VARCHAR.
CREATE TABLE IF NOT EXISTS taskscrm (
    id INT AUTO_INCREMENT,
    group_id INT,
    account_id INT,
    status_id INT,
    name VARCHAR(255) NOT NULL,
    end_date DATE,
    PRIMARY KEY (id),
    CONSTRAINT fk_taskscrm_group
        FOREIGN KEY (group_id) REFERENCES groupscrm(id),
    CONSTRAINT fk_taskscrm_account
        FOREIGN KEY (account_id) REFERENCES accountscrm(id),
    CONSTRAINT fk_taskscrm_status
        FOREIGN KEY (status_id) REFERENCES statuscrm(id)
);

-- Seed data.
INSERT INTO
    taskscrm (id, group_id, account_id, status_id, name, end_date)
VALUES
    (1, 1, 1, 1, 'Task 1', '2020-01-01')
ON DUPLICATE KEY UPDATE
    group_id = VALUES(group_id),
    account_id = VALUES(account_id),
    status_id = VALUES(status_id),
    name = VALUES(name),
    end_date = VALUES(end_date);

-- Quick check.
SELECT * FROM taskscrm;
