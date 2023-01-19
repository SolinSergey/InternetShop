CREATE TABLE users (
                              id bigserial NOT NULL primary key,
                              username varchar(50) NOT NULL,
                              password varchar NOT NULL,
                              email varchar(100) NOT NULL
);

INSERT INTO users (username, password, email) values ('serg', '$2y$10$5jEmti18CIGrQvZjMyOqpew4b4zvR3DXKu4BQl5ZsKsob7g5NONIe', 'livegrafics@rambbler.ru');
INSERT INTO users (username, password, email) values ('nata', '$2y$10$5jEmti18CIGrQvZjMyOqpew4b4zvR3DXKu4BQl5ZsKsob7g5NONIe', 'livegrafics@mail.ru');
INSERT INTO users (username, password, email) values ('test', '$2a$10$A5FrjDkGFIG41Q9lHSFV9uMKlHfCNQ8HLOF3NJtk6Eln5RLqyS6lu', 'livegrafics111@mail.ru');
INSERT INTO users (username, password, email) values ('test1', '$2a$10$QDXS8yTtx7AzXZ7mD9fItuUFczCGw3oXxVJlqmix5cvTIdrqP2Vay', 'livegrafics@rambler.ru');
INSERT INTO users (username, password, email) values ('test2', '$2a$10$VfZ5cMAThX284a1xvI8sSOUPn3VvabIt6L698YNsf2JhnDl7cUScW', 'livegrafics1@mail.ru');
INSERT INTO users (username, password, email) values ('test1111', '$2a$10$V/xdh4.WUG/5fREpA6r3leQvv1zYs/J0XxQu9jFC8PK/GxyV5KPcm', '1@mail.ru');

create table roles
(
    id         bigserial NOT NULL primary key,
    name       varchar(50) not null
);

insert into roles (name) values ('ROLE_USER'),('ROLE_ADMIN');

create table users_roles
(
    user_id    bigint not null references users (id),
    role_id    bigint not null references roles (id),
    primary key (user_id, role_id)
);


insert into users_roles (user_id, role_id)
values (1, 1),
       (2, 2);