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

INSERT INTO
	users (full_name, details, join_date, avatar, is_active, knowledge, reputation, followers_count, days_without_break, days_without_break_max, solved_tasks)
VALUES
	('Иван Иванов', 'Студент МГУ', '2021-01-01', 'https://example.com/avatar1.jpg', TRUE, 100, 50, 20, 10, 15, 30),
	('Анастасия Петрова', 'Программист в Яндексе', '2020-05-15', 'https://example.com/avatar2.jpg', TRUE, 200, 100, 50, 5, 10, 60),
	('Дмитрий Смирнов', 'Аналитик данных', '2019-12-31', 'https://example.com/avatar3.jpg', FALSE, 300, 150, 75, 0, 20, 90);
INSERT INTO
	courses (title, created_date, summary, photo, price)
VALUES
	('Основы программирования на Python', '2021-01-01', 'Курс для начинающих программистов', 'https://example.com/course1.jpg', 5000),
	('Машинное обучение', '2020-05-15', 'Курс по машинному обучению для продвинутых', 'https://example.com/course2.jpg', 10000),
	('Анализ данных', '2019-12-31', 'Курс по анализу данных', 'https://example.com/course3.jpg', 7000);
INSERT INTO
	user_courses (user_id, course_id, is_favorite, is_pinned, is_archived, last_viewed)
VALUES
	(1, 1, TRUE, FALSE, FALSE, '2021-01-05'),
	(1, 2, FALSE, TRUE, FALSE, '2021-01-10'),
	(2, 3, FALSE, FALSE, TRUE, '2021-01-01'),
	(3, 1, TRUE, TRUE, FALSE, '2021-01-15');