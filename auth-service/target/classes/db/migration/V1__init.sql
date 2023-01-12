CREATE TABLE users (
                              id bigint NOT NULL primary key,
                              username varchar(50) NOT NULL,
                              password varchar NOT NULL,
                              email varchar(100) NOT NULL
);

INSERT INTO users (id, username, password, email) values (1, 'serg', '$2y$10$5jEmti18CIGrQvZjMyOqpew4b4zvR3DXKu4BQl5ZsKsob7g5NONIe', 'livegrafics@rambbler.ru');
INSERT INTO users (id, username, password, email) values (2, 'nata', '$2y$10$5jEmti18CIGrQvZjMyOqpew4b4zvR3DXKu4BQl5ZsKsob7g5NONIe', 'livegrafics@mail.ru');
INSERT INTO users (id, username, password, email) values (3, 'test', '$2a$10$A5FrjDkGFIG41Q9lHSFV9uMKlHfCNQ8HLOF3NJtk6Eln5RLqyS6lu', 'livegrafics111@mail.ru');
INSERT INTO users (id, username, password, email) values (4, 'test1', '$2a$10$QDXS8yTtx7AzXZ7mD9fItuUFczCGw3oXxVJlqmix5cvTIdrqP2Vay', 'livegrafics@rambler.ru');
INSERT INTO users (id, username, password, email) values (5, 'test2', '$2a$10$VfZ5cMAThX284a1xvI8sSOUPn3VvabIt6L698YNsf2JhnDl7cUScW', 'livegrafics1@mail.ru');
INSERT INTO users (id, username, password, email) values (6, 'test1111', '$2a$10$V/xdh4.WUG/5fREpA6r3leQvv1zYs/J0XxQu9jFC8PK/GxyV5KPcm', '1@mail.ru');

create table roles
(
    id         bigint NOT NULL primary key,
    name       varchar(50) not null
);

insert into roles (id,name) values (1,'ROLE_USER'),(2,'ROLE_ADMIN');

create table users_roles
(
    user_id    bigint not null references users (id),
    role_id    bigint not null references roles (id),
    primary key (user_id, role_id)
);


insert into users_roles (user_id, role_id)
values (1, 1),
       (2, 2);