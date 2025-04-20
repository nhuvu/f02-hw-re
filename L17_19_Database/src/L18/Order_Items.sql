create table Order_Items
(
    id             int auto_increment
        primary key,
    original_price decimal(19, 3) not null,
    price          decimal(19, 3) not null,
    product_id     int            null,
    order_id       int            null,
    constraint order_items_ibfk_1
        foreign key (product_id) references Products (id),
    constraint order_items_ibfk_2
        foreign key (order_id) references Orders (id)
);

create index order_id
    on Order_Items (order_id);

create index product_id
    on Order_Items (product_id);

INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (1, 59.990, 49.990, 12, 1);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (2, 89.000, 79.000, 5, 2);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (3, 120.500, 99.990, 21, 3);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (4, 74.900, 64.900, 9, 4);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (5, 33.300, 28.000, 15, 5);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (6, 44.990, 44.990, 31, 6);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (7, 19.990, 17.000, 2, 7);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (8, 220.000, 189.990, 14, 8);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (9, 35.000, 30.000, 18, 9);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (10, 149.000, 139.000, 10, 10);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (11, 49.990, 39.990, 7, 11);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (12, 65.500, 60.500, 4, 12);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (13, 15.900, 14.500, 38, 13);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (14, 120.000, 99.990, 3, 14);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (15, 59.000, 49.000, 22, 15);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (16, 89.000, 89.000, 1, 16);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (17, 78.000, 68.000, 11, 17);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (18, 210.000, 179.000, 8, 18);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (19, 149.000, 129.000, 19, 19);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (20, 34.000, 30.000, 6, 20);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (21, 44.990, 42.990, 13, 21);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (22, 90.000, 90.000, 20, 22);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (23, 110.000, 100.000, 25, 23);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (24, 49.000, 44.000, 17, 24);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (25, 66.000, 56.000, 29, 25);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (26, 77.700, 77.700, 16, 26);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (27, 29.000, 25.000, 23, 27);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (28, 99.000, 89.000, 26, 28);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (29, 22.000, 20.000, 24, 29);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (30, 88.000, 80.000, 30, 30);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (31, 55.000, 49.990, 27, 31);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (32, 63.990, 59.990, 28, 32);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (33, 100.000, 85.000, 32, 33);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (34, 130.000, 120.000, 33, 34);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (35, 49.990, 44.990, 34, 35);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (36, 79.900, 75.000, 35, 36);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (37, 24.500, 22.000, 36, 37);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (38, 139.990, 129.990, 37, 38);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (39, 54.990, 50.000, 39, 39);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (40, 18.500, 17.500, 40, 40);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (41, 44.900, 40.000, 41, 41);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (42, 32.000, 29.000, 42, 42);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (43, 77.500, 69.990, 43, 43);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (44, 112.000, 99.000, 44, 44);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (45, 95.000, 85.000, 45, 45);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (46, 19.990, 17.990, 46, 46);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (47, 87.000, 87.000, 47, 47);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (48, 111.000, 101.000, 48, 48);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (49, 35.000, 30.000, 49, 49);
INSERT INTO demo_schema.Order_Items (id, original_price, price, product_id, order_id) VALUES (50, 70.000, 60.000, 50, 50);
