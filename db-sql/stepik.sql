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

CREATE TABLE IF NOT EXISTS courses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    created_date DATE NOT NULL,
    summary TEXT,
    photo TEXT,
    price DECIMAL NOT NULL
);

CREATE TABLE IF NOT EXISTS user_courses (
    user_id INT NOT NULL,
    course_id INT NOT NULL,
    is_favorite BOOLEAN NOT NULL,
    is_pinned BOOLEAN NOT NULL,
    is_archived BOOLEAN NOT NULL,
    last_viewed DATE NOT NULL,
    PRIMARY KEY (user_id, course_id),
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (course_id) REFERENCES courses (id)
);