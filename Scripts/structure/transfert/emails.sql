CREATE TABLE emails(
id INT PRIMARY KEY NOT NULL,
contents VARCHAR(45),
registration DATE
customer_id INT FOREIGN KEY REFERENCES customer_(id) NOT NULL,
);