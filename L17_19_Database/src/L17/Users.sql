create table Users
(
    id       int auto_increment
        primary key,
    email    varchar(255) not null,
    password varchar(500) not null,
    fullname varchar(500) not null,
    status   varchar(500) not null,
    role     varchar(50)  not null,
    constraint email
        unique (email)
);

INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (1, 'alice.smith@example.com', '$2b$12$hash001', 'Alice Smith', 'ACTIVE', 'ADMIN');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (2, 'bob.johnson@example.com', '$2b$12$hash002', 'Bob Johnson', 'ACTIVE', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (3, 'charlie.lee@example.com', '$2b$12$hash003', 'Charlie Lee', 'BLOCK', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (4, 'diana.ross@example.com', '$2b$12$hash004', 'Diana Ross', 'ACTIVE', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (5, 'ethan.hunt@example.com', '$2b$12$hash005', 'Ethan Hunt', 'BLOCK', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (6, 'fiona.garcia@example.com', '$2b$12$hash006', 'Fiona Garcia', 'ACTIVE', 'ADMIN');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (7, 'george.baker@example.com', '$2b$12$hash007', 'George Baker', 'BLOCK', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (8, 'hannah.kim@example.com', '$2b$12$hash008', 'Hannah Kim', 'ACTIVE', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (9, 'ian.thomas@example.com', '$2b$12$hash009', 'Ian Thomas', 'BLOCK', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (10, 'julia.nguyen@example.com', '$2b$12$hash010', 'Julia Nguyen', 'ACTIVE', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (11, 'kevin.morris@example.com', '$2b$12$hash011', 'Kevin Morris', 'BLOCK', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (12, 'linda.white@example.com', '$2b$12$hash012', 'Linda White', 'ACTIVE', 'ADMIN');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (13, 'michael.brown@example.com', '$2b$12$hash013', 'Michael Brown', 'BLOCK', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (14, 'nina.hall@example.com', '$2b$12$hash014', 'Nina Hall', 'ACTIVE', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (15, 'oliver.wright@example.com', '$2b$12$hash015', 'Oliver Wright', 'BLOCK', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (16, 'paula.green@example.com', '$2b$12$hash016', 'Paula Green', 'ACTIVE', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (17, 'quentin.scott@example.com', '$2b$12$hash017', 'Quentin Scott', 'BLOCK', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (18, 'rachel.adams@example.com', '$2b$12$hash018', 'Rachel Adams', 'ACTIVE', 'ADMIN');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (19, 'steve.evans@example.com', '$2b$12$hash019', 'Steve Evans', 'BLOCK', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (20, 'tara.james@example.com', '$2b$12$hash020', 'Tara James', 'ACTIVE', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (21, 'ursula.hughes@example.com', '$2b$12$hash021', 'Ursula Hughes', 'BLOCK', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (22, 'victor.wood@example.com', '$2b$12$hash022', 'Victor Wood', 'ACTIVE', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (23, 'wendy.bell@example.com', '$2b$12$hash023', 'Wendy Bell', 'BLOCK', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (24, 'xander.martin@example.com', '$2b$12$hash024', 'Xander Martin', 'ACTIVE', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (25, 'yvonne.clark@example.com', '$2b$12$hash025', 'Yvonne Clark', 'BLOCK', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (26, 'zack.diaz@example.com', '$2b$12$hash026', 'Zack Diaz', 'ACTIVE', 'ADMIN');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (27, 'andrew.kelly@example.com', '$2b$12$hash027', 'Andrew Kelly', 'ACTIVE', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (28, 'bethany.lopez@example.com', '$2b$12$hash028', 'Bethany Lopez', 'BLOCK', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (29, 'caleb.mitchell@example.com', '$2b$12$hash029', 'Caleb Mitchell', 'ACTIVE', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (30, 'danielle.morris@example.com', '$2b$12$hash030', 'Danielle Morris', 'BLOCK', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (31, 'edward.jenkins@example.com', '$2b$12$hash031', 'Edward Jenkins', 'ACTIVE', 'ADMIN');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (32, 'felicia.ramirez@example.com', '$2b$12$hash032', 'Felicia Ramirez', 'BLOCK', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (33, 'gavin.owen@example.com', '$2b$12$hash033', 'Gavin Owen', 'ACTIVE', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (34, 'holly.steele@example.com', '$2b$12$hash034', 'Holly Steele', 'BLOCK', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (35, 'isaac.holt@example.com', '$2b$12$hash035', 'Isaac Holt', 'ACTIVE', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (36, 'jasmine.ford@example.com', '$2b$12$hash036', 'Jasmine Ford', 'BLOCK', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (37, 'kyle.henderson@example.com', '$2b$12$hash037', 'Kyle Henderson', 'ACTIVE', 'ADMIN');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (38, 'laura.brooks@example.com', '$2b$12$hash038', 'Laura Brooks', 'BLOCK', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (39, 'mason.rivera@example.com', '$2b$12$hash039', 'Mason Rivera', 'ACTIVE', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (40, 'nora.watson@example.com', '$2b$12$hash040', 'Nora Watson', 'BLOCK', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (41, 'owen.gray@example.com', '$2b$12$hash041', 'Owen Gray', 'ACTIVE', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (42, 'phoebe.bennett@example.com', '$2b$12$hash042', 'Phoebe Bennett', 'BLOCK', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (43, 'ryan.long@example.com', '$2b$12$hash043', 'Ryan Long', 'ACTIVE', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (44, 'sophia.ward@example.com', '$2b$12$hash044', 'Sophia Ward', 'BLOCK', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (45, 'tristan.price@example.com', '$2b$12$hash045', 'Tristan Price', 'ACTIVE', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (46, 'una.sims@example.com', '$2b$12$hash046', 'Una Sims', 'BLOCK', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (47, 'vicki.perry@example.com', '$2b$12$hash047', 'Vicki Perry', 'ACTIVE', 'ADMIN');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (48, 'will.reed@example.com', '$2b$12$hash048', 'Will Reed', 'BLOCK', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (49, 'xenia.ellis@example.com', '$2b$12$hash049', 'Xenia Ellis', 'ACTIVE', 'USER');
INSERT INTO demo_schema.Users (id, email, password, fullname, status, role) VALUES (50, 'yuri.frank@example.com', '$2b$12$hash050', 'Yuri Frank', 'BLOCK', 'USER');
