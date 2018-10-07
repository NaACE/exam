create table masters
(
  id   int auto_increment
    primary key,
  name varchar(255) null,
  img  varchar(255) null
);

INSERT INTO masters (id, name, img) VALUES (1, 'Nikolai', 'http://clippers.com.ua/images/masters/nikolay.jpg');
INSERT INTO masters (id, name, img) VALUES (2, 'Vladimir', 'http://clippers.com.ua/images/masters/vova.jpg');
INSERT INTO masters (id, name, img) VALUES (3, 'Dmitry', 'http://clippers.com.ua/images/masters/dmitriy.jpg');
INSERT INTO masters (id, name, img) VALUES (4, 'Artems', 'http://clippers.com.ua/images/masters/artem.jpg');