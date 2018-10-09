create table services
(
  id   int auto_increment
    primary key,
  name varchar(255) null,
  times varchar(255) null,
  price varchar(255) null
);

INSERT INTO services (name, times, price ) VALUES ('Постричь голову', '1час', '250');
INSERT INTO services (name, times, price ) VALUES ('Побрить голову', '1час', '150');
INSERT INTO services (name, times, price ) VALUES ('Постричь голову машинкой', '1час', '150');
INSERT INTO services (name, times, price ) VALUES ('Постричь бороду', '1час', '150');
INSERT INTO services (name, times, price ) VALUES ('Побрить лицо', '1час', '150');
INSERT INTO services (name, times, price ) VALUES ('Постричь юниора (4-13 лет)', '1час', '200');
INSERT INTO services (name, times, price ) VALUES ('Укладка', '1час', '100');