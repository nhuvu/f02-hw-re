create table Orders
(
    id           int auto_increment
        primary key,
    description  varchar(500)   null,
    status       varchar(255)   not null,
    total_amount decimal(19, 3) not null,
    user_id      int            null,
    constraint orders_ibfk_1
        foreign key (user_id) references Users (id)
);

create index user_id
    on Orders (user_id);

INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (1, 'Wireless earbuds', 'ORDER_SUCCESS', 119.990, 3);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (2, 'Smartwatch Series 5', 'DELIVERY_SUCCESS', 189.990, 12);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (3, 'Gaming mouse + pad combo', 'ORDER_PROCESSING', 64.990, 22);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (4, '4K action camera', 'ORDER_CANCEL', 210.000, 15);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (5, 'Portable blender bottle', 'DELIVERY_SUCCESS', 39.500, 7);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (6, 'Office chair ergonomic', 'PREPARE_PRODUCT', 259.990, 30);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (7, 'Standing desk converter', 'DELIVERY_PROCESSING', 149.990, 5);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (8, 'Cookware set - 10 pieces', 'ORDER_SUCCESS', 99.990, 8);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (9, 'Wall-mounted bookshelf', 'DELIVERY_SUCCESS', 72.000, 13);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (10, 'Compact treadmill', 'ORDER_FAIL', 499.900, 26);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (11, 'Phone holder for car', 'ORDER_INIT', 18.750, 1);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (12, 'Custom mug with quote', 'DELIVERY_PROCESSING', 14.990, 44);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (13, 'LED monitor 27-inch', 'ORDER_SUCCESS', 299.990, 11);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (14, 'Wireless charging dock', 'DELIVERY_SUCCESS', 55.000, 6);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (15, 'Reusable shopping bags (5-pack)', 'DELIVERY_PROCESSING', 19.990, 18);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (16, 'Bluetooth keyboard', 'ORDER_SUCCESS', 41.500, 36);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (17, 'Subscription - 12 months', 'ORDER_CANCEL', 120.000, 19);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (18, 'Camera tripod', 'ORDER_PROCESSING', 32.990, 21);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (19, 'Pet bed medium size', 'PREPARE_PRODUCT', 49.900, 9);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (20, 'Hand blender', 'DELIVERY_SUCCESS', 66.700, 10);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (21, 'Noise-canceling headphones', 'ORDER_SUCCESS', 199.990, 23);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (22, 'Outdoor string lights', 'DELIVERY_FAIL', 34.990, 33);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (23, 'Reusable water filter', 'ORDER_INIT', 44.300, 17);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (24, 'Fitness tracker', 'ORDER_SUCCESS', 95.000, 29);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (25, 'Minimalist watch', 'ORDER_CANCEL', 89.990, 14);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (26, 'Photo printer', 'DELIVERY_SUCCESS', 145.000, 41);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (27, 'Home security cams', 'PREPARE_PRODUCT', 179.900, 4);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (28, 'Electric toothbrush', 'ORDER_INIT', 62.990, 24);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (29, 'Ebook reader', 'DELIVERY_SUCCESS', 119.000, 35);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (30, 'Air fryer 5L', 'ORDER_SUCCESS', 149.000, 38);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (31, 'Laundry baskets', 'ORDER_INIT', 27.500, 28);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (32, 'Face serum kit', 'ORDER_PROCESSING', 33.990, 46);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (33, 'Indoor plant set', 'DELIVERY_SUCCESS', 42.700, 2);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (34, 'Scented candles (4 pcs)', 'DELIVERY_PROCESSING', 29.800, 40);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (35, 'Essential oils starter kit', 'ORDER_SUCCESS', 37.990, 47);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (36, 'Wall art canvas', 'ORDER_INIT', 59.000, 25);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (37, 'Kitchen storage racks', 'DELIVERY_SUCCESS', 48.500, 32);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (38, 'Foldable picnic table', 'ORDER_PROCESSING', 85.990, 20);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (39, 'Instant camera bundle', 'ORDER_FAIL', 102.000, 16);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (40, 'Men’s grooming kit', 'DELIVERY_SUCCESS', 49.990, 27);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (41, 'Mini drone with camera', 'ORDER_SUCCESS', 139.990, 31);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (42, 'Yoga blocks set', 'ORDER_INIT', 22.990, 37);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (43, 'Bike lights', 'DELIVERY_FAIL', 34.900, 48);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (44, 'Tool kit basic', 'ORDER_PROCESSING', 57.000, 34);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (45, 'Rechargeable desk fan', 'DELIVERY_SUCCESS', 25.490, 42);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (46, 'Leather journal', 'ORDER_INIT', 20.000, 45);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (47, 'Resistance bands', 'DELIVERY_SUCCESS', 17.990, 43);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (48, 'Laptop sleeve 14-inch', 'ORDER_CANCEL', 21.900, 49);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (49, 'Magnetic spice jars', 'ORDER_SUCCESS', 26.500, 50);
INSERT INTO demo_schema.Orders (id, description, status, total_amount, user_id) VALUES (50, 'Laundry basket', 'PREPARE_PRODUCT', 19.990, 39);
