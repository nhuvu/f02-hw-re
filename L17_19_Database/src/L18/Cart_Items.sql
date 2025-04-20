create table Cart_Items
(
    id         int auto_increment
        primary key,
    quantity   int not null,
    cart_id    int null,
    product_id int null,
    constraint cart_items_ibfk_1
        foreign key (cart_id) references Carts (id),
    constraint cart_items_ibfk_2
        foreign key (product_id) references Products (id)
);

create index cart_id
    on Cart_Items (cart_id);

create index product_id
    on Cart_Items (product_id);

INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (1, 2, 10, 1);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (2, 3, 25, 1);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (3, 1, 8, 2);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (4, 2, 33, 2);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (5, 4, 15, 3);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (6, 2, 7, 3);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (7, 1, 11, 4);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (8, 3, 22, 5);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (9, 2, 19, 5);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (10, 1, 5, 5);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (11, 2, 14, 6);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (12, 4, 4, 7);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (13, 3, 28, 7);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (14, 1, 3, 8);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (15, 2, 17, 8);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (16, 1, 44, 8);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (17, 3, 2, 9);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (18, 2, 21, 10);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (19, 3, 31, 10);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (20, 1, 9, 11);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (21, 4, 18, 12);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (22, 1, 41, 12);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (23, 2, 12, 13);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (24, 3, 6, 14);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (25, 1, 37, 14);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (26, 2, 1, 14);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (27, 3, 16, 15);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (28, 2, 26, 15);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (29, 1, 39, 16);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (30, 4, 23, 17);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (31, 2, 35, 17);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (32, 3, 30, 18);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (33, 1, 27, 18);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (34, 2, 34, 19);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (35, 1, 24, 20);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (36, 2, 13, 20);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (37, 3, 20, 21);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (38, 1, 48, 21);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (39, 2, 43, 22);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (40, 1, 38, 23);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (41, 3, 45, 23);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (42, 2, 36, 24);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (43, 4, 47, 24);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (44, 1, 50, 25);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (45, 3, 29, 25);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (46, 2, 46, 25);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (47, 1, 32, 26);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (48, 2, 40, 26);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (49, 1, 42, 27);
INSERT INTO demo_schema.Cart_Items (id, quantity, cart_id, product_id) VALUES (50, 2, 49, 27);
