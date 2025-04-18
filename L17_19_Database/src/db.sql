/*Tạo table users, products*/
CREATE table `Users`
(
    id       int auto_increment primary key,
    email    varchar(255) unique not null,
    password varchar(500)        not null,
    fullname varchar(500)        not null,
    status   varchar(500)        not null,
    role     varchar(50)         not null
);

CREATE table `Products`
(
    id       int auto_increment primary key,
    name     varchar(255)  not null,
    description  text,
    price numeric(18,3) not null,
    stock int,
    original_price numeric(18,3) not null,
    category varchar(255)
);

/**Insert 50 bản ghi vào 2 table Users & Products*/
