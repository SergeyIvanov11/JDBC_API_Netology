CREATE TABLE if not exists public.CUSTOMERS
(
    id           SERIAL PRIMARY KEY,
    name         TEXT    NOT NULL,
    surname      TEXT    NOT NULL,
    age          INTEGER NOT NULL,
    phone_number TEXT
);
INSERT INTO public.CUSTOMERS(name, surname, age, phone_number)
VALUES ('alexey', 'Petrov', 30, 89771234567);
INSERT INTO public.CUSTOMERS(name, surname, age, phone_number)
VALUES ('Igor', 'Ivanov', 25, 89771234568);
INSERT INTO public.CUSTOMERS(name, surname, age, phone_number)
VALUES ('Alexey', 'Sidorov', 33, 89771234569);
INSERT INTO public.CUSTOMERS(name, surname, age, phone_number)
VALUES ('Sveta', 'Kats', 28, 89771234570);
INSERT INTO public.CUSTOMERS(name, surname, age, phone_number)
VALUES ('Sergey', 'Gorunov', 35, 89771234570);

CREATE TABLE if not exists public.ORDERS
(
    id           SERIAL PRIMARY KEY,
    date         DATE,
    customer_id  INTEGER NOT NULL,
    product_name TEXT    NOT NULL,
    amount       INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES public.Customers (Id)
);
INSERT INTO public.ORDERS(date, customer_id, product_name, amount)
VALUES ('2024-08-31', 1, 'Potato', 5);
INSERT INTO public.ORDERS(date, customer_id, product_name, amount)
VALUES ('2024-08-30', 2, 'Eggs', 10);
INSERT INTO public.ORDERS(date, customer_id, product_name, amount)
VALUES ('2024-08-29', 1, 'Bread', 7);
INSERT INTO public.ORDERS(date, customer_id, product_name, amount)
VALUES ('2024-08-31', 4, 'Mushrooms', 12);
INSERT INTO public.ORDERS(date, customer_id, product_name, amount)
VALUES ('2024-08-30', 3, 'Tomato', 3);
INSERT INTO public.ORDERS(date, customer_id, product_name, amount)
VALUES ('2024-08-29', 5, 'Milk', 5);