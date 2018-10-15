create table masters
(
  id   int auto_increment
    primary key,
  name varchar(255) null,
  img  varchar(255) null
);

INSERT INTO masters (id, name, img) VALUES (1, 'Nikolai', 'https://drive.google.com/open?id=1gDJgL1oEp5QX_Ek5qd8LGXcoEBRlxeH7');
INSERT INTO masters (id, name, img) VALUES (2, 'Vlad', 'https://drive.google.com/open?id=177vPXcr1j7L64Gs4NnDtQx4F51zdTgFA');
INSERT INTO masters (id, name, img) VALUES (3, 'Dmitriy', 'https://drive.google.com/open?id=19aCm1KVY6TgVE6zaBUaqAfoFqK2jj-4e');
INSERT INTO masters (id, name, img) VALUES (4, 'Alexey', 'https://drive.google.com/open?id=1kA4PeHoA1Tx1yD9PhPmgUi2kwXM4ENX2');