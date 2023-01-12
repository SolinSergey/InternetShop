create table category
(
    id    bigserial primary key,
    title varchar(255)
);

INSERT INTO category (id,title)
VALUES (1, 'Напитки'),
       (2, 'Хлебобулочные'),
       (3, 'Рыба'),
       (4, 'Мясо и колбасы'),
       (5, 'Крупы и макароны'),
       (6, 'Овощи и фрукты'),
       (7, 'Молочные продукты'),
       (8, 'Сыр'),
       (9, 'Кондитерские изделия'),
       (10, 'Прочее');

create table product
(
    id          bigserial primary key,
    title       varchar(255),
    price       int not null,
    category_id bigint references category (id)
);



insert into product (id, title, price, category_id)
values (3, 'Селедка', 500, 3),
       (4, 'Лимонад', 55, 1),
       (5, 'Молоко', 59, 7),
       (6, 'Кефир', 60, 7),
       (7, 'Огурчики', 100, 6),
       (8, 'Хлеб', 35, 2),
       (9, 'Сметана', 85, 7),
       (10, 'Оленина', 2500, 4),
       (11, 'Йогурт', 55, 7),
       (12, 'Мандарины', 200, 6),
       (13, 'Макароны', 70, 5),
       (14, 'Гречка', 95, 5),
       (15, 'Квас', 75, 1),
       (16, 'Сливки', 100, 7),
       (17, 'Пончики', 65, 2),
       (18, 'Конфеты', 600, 9),
       (19, 'Зефир', 150, 9),
       (21, 'Капуста', 5, 6),
       (23, 'Манка', 75, 5),
       (22, 'Крекер', 54, 9),
       (24, 'Булгур', 95, 5),
       (20, 'Мармелад', 500, 9);

create table orders
(
    id                 bigserial primary key,
    username           varchar(255),
    total_price        int,
    delivery_adress_id bigint
);



create table orders_items
(
    id         bigserial primary key,
    order_id   bigint references orders (id),
    product_id bigint references product (id),
    amount     int,
    price      int
);


create table delivery_adress
(
    id     bigserial primary key,
    adress varchar
);



