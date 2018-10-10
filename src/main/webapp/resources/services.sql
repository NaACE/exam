create table services
(
  id   int auto_increment
    primary key,
  name varchar(255) null,
  times varchar(255) null,
  price varchar(255) null
);

INSERT INTO services (id, name, times, price ) VALUES (1, 'Cut the head', '1hour', '250');
INSERT INTO services (id, name, times, price ) VALUES (2, 'Cut the head with a typewriter', '1hour', '150');
INSERT INTO services (id, name, times, price ) VALUES (3, 'Trim the beard', '1hour', '150');
INSERT INTO services (id, name, times, price ) VALUES (4, 'Shave face', '1hour', '150');
INSERT INTO services (id, name, times, price ) VALUES (5, 'Trim the junior (4-13 years old)', '1hour', '150');
INSERT INTO services (id, name, times, price ) VALUES (6, 'Piling', '1hour', '200');