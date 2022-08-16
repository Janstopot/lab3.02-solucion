drop schema if exists lab302;
create schema lab302;
use lab302;

create table author(
id int auto_increment,
name VARCHAR(255),
primary key (id)
);

create table books(
id int auto_increment,
author_id int,
book_name VARCHAR(255),
word_count int,
views int,
primary key (id),
foreign key(author_id) REFERENCES author(id)
);

INSERT INTO author(name) VALUES
("Maria Charlotte"),
("Juan Perez"),
("Gemma Alcocer");

INSERT INTO books(author_id, book_name, word_count, views) VALUES
(1, "Best Paint Colors", 814, 14),
(2, "Small Space Decorating Tips", 1146, 221),
(1, "Hot Accessories", 986, 105),
(1, "Mixing Textures", 765, 22),
(2, "Kitchen Refresh", 1242, 307),
(1, "Homemade Art Hacks", 1002, 193),
(3, "Refinishing Wood Floors", 1571, 7542);

SELECT name, book_name from books JOIN author ON author_id = author.id;


