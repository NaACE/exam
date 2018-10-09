drop database if exists Barbershop; -- Уничтожаем базу данных если есть
Create database if not exists Barbershop default collate utf8_unicode_ci; -- Создаем базу данных Barbershop

-- Используем базу данных
use Barbershop;

-- Уничтожаем таблицы если есть
drop table if exists users;
drop table if exists services;
drop table if exists roles;
drop table if exists record;

-- Таблица Юзеров
create table users
(
	id int not null primary key auto_increment,
    `name` varchar(50) not null,
    `surname` varchar(50) not null,
    `roles` varchar(50) not null
);

-- Таблица Услуг
create table services
(
	id int not null primary key auto_increment,
    `name` varchar(255) not null unique,
    `price` int not null
);

-- Таблица Ролей
create table roles
(
	id int not null primary key auto_increment,
    `name` varchar(30) unique
);

-- Таблица Записи
create table record
(
	id int not null primary key auto_increment,
    `master` varchar(50) not null,
    `services` varchar(100) not null unique,
    `dataTime` datetime not null unique
);


-- Зписываю юзеров в таблицу users
insert into users (id, `name`, `surname`)
			  values(1,'Николай', '"Юморист"'),
					(2,'Влад', '"Велдис"'),
					(3,'Дмитрий','"Футболист"'),
                    (4,'Артём','"Оптимист"'),
                    (5,'Алексей', 'Вяльников');

-- Добавляю услуги в таблицу services
insert into services (id, `name`, `price`)
			  values(1, 'Постричь голову', '250'),
					(2, 'Побрить голову', '150'),
                    (3, 'Постричь голову машинкой', '150'),
                    (4, 'Постричь бороду', '150'),
                    (5, 'Побрить лицо', '150'),
                    (6, 'Постричь юниора (4-13 лет)', '200'),
                    (7, 'Укладка', '100');

-- Создаю роли
insert into roles (id, `name`)
			  values(1, 'Master'),
					(2, 'Admin'),
                    (3, 'Client');

-- Просматриваю таблицы
select * from users;
select * from services;