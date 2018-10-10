drop database if exists Barbershop; -- Уничтожаем базу данных если есть
Create database if not exists Barbershop default collate utf8_unicode_ci; -- Создаем базу данных Barbershop

-- Используем базу данных
use Barbershop;

-- Уничтожаем таблицы если есть
drop table if exists users;
drop table if exists services;
drop table if exists roles;
drop table if exists record;

-- Таблица Ролей (Мастер, Админ, Клиент)
create table roles
(
	id int unsigned not null auto_increment primary key,
    `name` varchar(30) unique    
);

-- Таблица Юзеров (Мастера, Админы и Клиенты)
create table users
(
	id int unsigned not null auto_increment primary key,
    `name` varchar(50) not null,
    `surname` varchar(50) not null,
    roles_id int unsigned,
    record_id int unsigned,
    FOREIGN KEY(roles_id) REFERENCES roles(id),
    FOREIGN KEY(record_id) REFERENCES record(id)
    
);

-- Таблица Услуг
create table services
(
	id int unsigned not null auto_increment primary key,
    `name` varchar(255) not null unique,
    `price` int not null

);

-- Таблица Записи
create table record
(
	id int unsigned not null auto_increment primary key,
    `master` varchar(50) not null,
    `services` varchar(100) not null unique,
    `dataTime` datetime not null unique
);

-- Создаю роли для юзеров
insert into roles (`name`)
			  values('Master'),
					('Admin'),
                    ('Client');

-- Зписываю юзеров в таблицу users, раздаю роли юзерам в том числе и клиентам, а так же таблица привязана к запсям клиентов.
insert into users (`name`, `surname`, roles_id, record_id)
			  values('Николай', '"Юморист"', 1, ''),
					('Влад', '"Велдис"', 1, ''),
					('Дмитрий','"Футболист"', 1, ''),
                    ('Артём','"Оптимист"', 1, ''),
                    ('Алексей', 'Вяльников', 2, '');
                    
-- Добавляю услуги в таблицу services
insert into services (`name`, `price`)
			  values('Постричь голову', '250'),
					('Побрить голову', '150'),
                    ('Постричь голову машинкой', '150'),
                    ('Постричь бороду', '150'),
                    ('Побрить лицо', '150'),
                    ('Постричь юниора (4-13 лет)', '200'),
                    ('Укладка', '100');

-- Просматр таблиц
select * from users;
select * from services;






