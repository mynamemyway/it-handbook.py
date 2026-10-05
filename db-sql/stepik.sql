-- id INT  - идентификатор пользователя, первичный ключ с автоинкрементом,
-- full_name VARCHAR(50) - полное имя, не может быть Null,
-- details VARCHAR(50) - о себе,
-- join_date DATE - дата регистрации, не может быть Null,
-- avatar TEXT - аватар,
-- is_active BOOLEAN - активен ли пользователь, не может быть Null,
-- knowledge INT  - знания, не может быть Null, дефолтное значение 0,
-- reputation INT - репутация, не может быть Null, дефолтное значение 0,
-- followers_count INT - количество подписчиков, не может быть Null, дефолтное значение 0,
-- days_without_break INT  - кол-во дней без перерыва, не может быть Null, дефолтное значение 0,
-- days_without_break_max INT - кол-во дней без перерыва максимум, не может быть Null, дефолтное значение 0,
-- solved_tasks INT - количество решенных задач, не может быть Null, дефолтное значение 0.

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
