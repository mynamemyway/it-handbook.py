DROP SCHEMA IF EXISTS stepik;
CREATE SCHEMA stepik;
USE stepik;

DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users ( 
    id INT PRIMARY KEY AUTO_INCREMENT, 
    full_name VARCHAR(50) NOT NULL, 
    details VARCHAR(50), 
    join_date DATE NOT NULL, 
    avatar TEXT, 
    is_active BOOLEAN NOT NULL, 
    knowledge INT NOT NULL DEFAULT 0, 
    reputation INT NOT NULL DEFAULT 0, 
    followers_count INT NOT NULL DEFAULT 0, 
    days_without_break INT NOT NULL DEFAULT 0, 
    days_without_break_max INT NOT NULL DEFAULT 0, 
    solved_tasks INT NOT NULL DEFAULT 0 
);
