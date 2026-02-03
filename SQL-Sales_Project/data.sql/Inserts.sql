INSERT INTO customers VALUES
(1,'Amit','Delhi','2023-01-10'),
(2,'Neha','Mumbai','2023-02-15'),
(3,'Rahul','Bangalore','2023-03-20');

INSERT INTO products VALUES
(101,'Laptop','Electronics',60000),
(102,'Headphones','Electronics',2000),
(103,'Office Chair','Furniture',8000);

INSERT INTO orders VALUES
(1001,1,'2023-04-01'),
(1002,2,'2023-04-05'),
(1003,1,'2023-05-10');

INSERT INTO order_items VALUES
(1,1001,101,1),
(2,1001,102,2),
(3,1002,103,1),
(4,1003,102,1);
