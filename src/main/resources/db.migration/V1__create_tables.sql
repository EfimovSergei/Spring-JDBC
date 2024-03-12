create table customers
(
    id           serial primary key not null,
    name         varchar(20)        not null,
    surname      varchar(20)        not null,
    age          int                not null,
    phone_number varchar(11)
);

insert into customers(name, surname, age, phone_number)
values ('Dmitri', 'Dmitriev', 18, '88005553535'),
       ('Alexey', 'Alexeev', 28, '88005553535'),
       ('Pavel', 'Pavlov', 28, '88005553535');

create table orders
(
    id           serial primary key not null,
    date         varchar(10)        not null,
    customer_id  int                not null,
    product_name varchar(50)        not null,
    amount       varchar            not null,
    foreign key (customer_id) references customers (id)
);

insert into orders(date, customer_id, product_name, amount)
values ('20.02.2020', 1, 'prod1', '1000'),
       ('20.02.2020', 2, 'prod2', '1000'),
       ('20.02.2020', 3, 'prod3', '1000');