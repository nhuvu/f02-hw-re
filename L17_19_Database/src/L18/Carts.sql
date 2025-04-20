create table Carts
(
    id      int auto_increment
        primary key,
    user_id int null,
    constraint carts_ibfk_1
        foreign key (user_id) references Users (id)
);

create index user_id
    on Carts (user_id);

INSERT INTO demo_schema.Carts (id, user_id) VALUES (28, 1);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (11, 2);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (20, 3);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (32, 4);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (4, 5);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (15, 6);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (6, 7);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (26, 8);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (9, 9);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (24, 10);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (18, 11);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (2, 12);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (27, 13);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (35, 14);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (13, 15);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (38, 16);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (36, 17);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (7, 18);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (17, 19);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (31, 20);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (42, 21);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (23, 22);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (1, 23);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (37, 24);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (14, 25);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (21, 26);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (45, 27);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (16, 28);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (44, 29);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (8, 30);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (47, 31);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (41, 32);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (12, 33);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (43, 34);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (33, 35);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (22, 36);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (3, 37);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (40, 38);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (29, 39);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (48, 40);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (10, 41);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (49, 42);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (50, 43);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (30, 44);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (5, 45);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (39, 46);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (46, 47);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (34, 48);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (25, 49);
INSERT INTO demo_schema.Carts (id, user_id) VALUES (19, 50);
