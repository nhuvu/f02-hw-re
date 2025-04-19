create table Products
(
    id             int auto_increment
        primary key,
    name           varchar(255)   not null,
    description    text           null,
    price          decimal(18, 3) not null,
    stock          int            null,
    original_price decimal(18, 3) not null,
    category       varchar(255)   null
);

INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (1, 'Wireless Mouse', 'Ergonomic wireless mouse with USB receiver', 25.990, 150, 30.000, 'ELECTRONICS');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (2, 'Bluetooth Speaker', 'Portable speaker with high-quality sound', 49.990, 100, 59.990, 'ELECTRONICS');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (3, 'Gaming Keyboard', 'Mechanical keyboard with RGB lighting', 89.990, 75, 99.990, 'ELECTRONICS');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (4, 'USB-C Charger', 'Fast charger compatible with most devices', 19.990, 200, 25.000, 'ELECTRONICS');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (5, '4K Monitor', 'Ultra HD 4K display with vibrant colors', 299.990, 30, 349.990, 'ELECTRONICS');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (6, 'The Alchemist', 'Best-selling novel by Paulo Coelho', 12.500, 80, 15.000, 'BOOKS');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (7, 'Microwave Oven', 'Compact microwave oven with grill function', 99.990, 40, 120.000, 'HOME APPLIANCES');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (8, 'Refrigerator', 'Double door fridge with energy efficiency', 499.000, 20, 550.000, 'HOME APPLIANCES');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (9, 'T-shirt - Blue', 'Cotton round-neck t-shirt', 9.990, 300, 12.000, 'FASHION');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (10, 'Kids Toy Car', 'Battery operated mini car for kids', 89.990, 50, 109.990, 'TOYS');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (11, 'Rice Cooker', 'Automatic rice cooker with steamer', 39.500, 70, 45.000, 'HOME APPLIANCES');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (12, 'LED Bulbs Pack', 'Energy-saving LED bulbs (pack of 4)', 14.990, 150, 19.990, 'HOME APPLIANCES');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (13, 'Bookshelf - 5 Tier', 'Wooden bookshelf with 5 levels', 120.000, 15, 150.000, 'FURNITURE');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (14, 'Cooking Oil 1L', 'Sunflower oil - 1 liter bottle', 3.500, 400, 4.000, 'GROCERIES');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (15, 'Smartphone Stand', 'Adjustable aluminum phone holder', 7.990, 250, 9.990, 'ELECTRONICS');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (16, 'Notebook Set', 'Pack of 3 ruled notebooks', 5.990, 180, 7.500, 'BOOKS');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (17, 'Air Conditioner', '1.5 ton split AC with inverter', 699.000, 10, 750.000, 'HOME APPLIANCES');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (18, 'Formal Shoes', 'Men leather shoes - Black', 59.990, 60, 70.000, 'FASHION');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (19, 'Wireless Earbuds', 'Bluetooth earbuds with charging case', 39.990, 110, 49.990, 'ELECTRONICS');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (20, 'Toaster', '2-slice toaster with browning control', 25.990, 80, 30.000, 'HOME APPLIANCES');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (21, 'Harry Potter Set', 'Harry Potter complete book collection', 85.000, 20, 99.000, 'BOOKS');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (22, 'Cotton Bedsheet', 'Double size bedsheet with pillow covers', 29.990, 100, 35.000, 'FURNITURE');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (23, 'Vacuum Cleaner', 'Bagless vacuum cleaner 2000W', 149.000, 25, 170.000, 'HOME APPLIANCES');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (24, 'Yoga Mat', 'Non-slip yoga mat 6mm', 15.000, 90, 20.000, 'FASHION');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (25, 'Instant Coffee Jar', '100g instant coffee blend', 6.990, 250, 8.000, 'GROCERIES');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (26, 'LED Table Lamp', 'Rechargeable table lamp with dimmer', 22.990, 60, 28.000, 'HOME APPLIANCES');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (27, 'Cereal Pack', 'Whole grain oats cereal - 500g', 4.500, 120, 5.000, 'GROCERIES');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (28, 'Leather Wallet', 'Men\'s bi-fold genuine leather wallet', 19.990, 75, 25.000, 'FASHION');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (29, 'Smartwatch', 'Fitness smartwatch with heart rate monitor', 59.990, 90, 70.000, 'ELECTRONICS');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (30, 'Wall Clock', 'Vintage wall clock with roman numbers', 18.990, 55, 22.000, 'FURNITURE');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (31, 'Dishwasher', 'Fully automatic 12-place dishwasher', 499.000, 10, 550.000, 'HOME APPLIANCES');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (32, 'Jeans - Slim Fit', 'Dark blue slim fit stretch jeans', 34.990, 120, 40.000, 'FASHION');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (33, 'Building Blocks Set', '100-piece plastic block set for kids', 24.990, 95, 30.000, 'TOYS');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (34, 'Electric Kettle', '1.5L electric kettle with auto shut-off', 19.990, 130, 25.000, 'HOME APPLIANCES');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (35, 'Frying Pan', 'Non-stick frying pan 24cm', 17.990, 85, 22.000, 'HOME APPLIANCES');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (36, 'Floor Lamp', 'Modern floor lamp with shade', 79.000, 20, 90.000, 'FURNITURE');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (37, 'Graphic Novel', 'DC Comics Batman: Year One', 11.990, 40, 14.000, 'BOOKS');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (38, 'Portable Fan', 'USB-powered mini fan for desk', 9.990, 140, 12.000, 'ELECTRONICS');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (39, 'Chopping Board', 'Bamboo chopping board - medium', 6.990, 100, 8.500, 'HOME APPLIANCES');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (40, 'Cotton Towels', 'Set of 2 bath towels - soft cotton', 14.990, 200, 18.000, 'FASHION');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (41, 'Sneakers - White', 'Unisex casual white sneakers', 44.990, 95, 55.000, 'FASHION');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (42, 'Puzzle - 1000 Pieces', 'Scenic jigsaw puzzle for adults', 21.990, 70, 25.000, 'TOYS');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (43, 'Face Wash', 'Natural face wash with aloe vera', 4.990, 180, 6.000, 'GROCERIES');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (44, 'Curtains - Pair', 'Window curtains 7ft - blackout', 35.000, 50, 45.000, 'FURNITURE');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (45, 'Bluetooth Headphones', 'Over-ear headphones with noise canceling', 79.990, 65, 89.990, 'ELECTRONICS');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (46, 'Toothbrush Pack', 'Pack of 4 medium bristle brushes', 3.490, 300, 4.000, 'GROCERIES');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (47, 'Fiction Book', 'The Midnight Library by Matt Haig', 10.990, 60, 13.000, 'BOOKS');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (48, 'Lego Set', 'Lego city police station building set', 69.990, 35, 85.000, 'TOYS');
INSERT INTO demo_schema.Products (id, name, description, price, stock, original_price, category) VALUES (49, 'Electric Grill', 'Table top electric BBQ grill', 55.000, 40, 65.000, 'HOME APPLIANCES');
