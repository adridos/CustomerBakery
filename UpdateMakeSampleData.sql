use bakerydb;

SELECT * FROM BAKER;

insert into USER (USER_ID, USER_PASSWORD, USER_EMAIL) values (1, '07jdju', 'calan@comcast.net');
insert into USER (USER_ID, USER_PASSWORD, USER_EMAIL) values (2, 'rxlWTEGsg2h', 'roanar@gmail.com');
insert into USER (USER_ID, USER_PASSWORD, USER_EMAIL) values (3, 'JtWAtUaS2', 'clyde_palleske@yahoo.com');
insert into USER (USER_ID, USER_PASSWORD, USER_EMAIL) values (4, 'vM4woM1E', 'rborrow0@gmail.com');
insert into USER (USER_ID, USER_PASSWORD, USER_EMAIL) values (5, 'riF4ra0', 'ogreatham@yahoo.com');
insert into USER (USER_ID, USER_PASSWORD, USER_EMAIL) values (6, 'juDkE36', 'kylie_riseley2@icloud.com');

-- make more testing
insert into USER (USER_ID, USER_PASSWORD, USER_EMAIL) values (8, '1234', 'test1@icloud.com');
insert into USER (USER_ID, USER_PASSWORD, USER_EMAIL) values (9, '12345', 'test2@icloud.com');
insert into USER (USER_ID, USER_PASSWORD, USER_EMAIL) values (10, '54321', 'test3@gmail.com');
insert into USER (USER_ID, USER_PASSWORD, USER_EMAIL) values (11, '15423', 'test4@yahoo.com');
insert into USER (USER_ID, USER_PASSWORD, USER_EMAIL) values (12, '1234', 'test11@icloud.com');
insert into USER (USER_ID, USER_PASSWORD, USER_EMAIL) values (13, '12345', 'test21@icloud.com');
insert into USER (USER_ID, USER_PASSWORD, USER_EMAIL) values (14, '54321', 'test31@gmail.com');
insert into USER (USER_ID, USER_PASSWORD, USER_EMAIL) values (15, '15423', 'test41@yahoo.com');

-- even more testing
insert into USER (USER_ID, USER_PASSWORD, USER_EMAIL) values (16, 'test', 'test@mail.com');
insert into USER (USER_ID, USER_PASSWORD, USER_EMAIL) values (17, 'test', 'test5@mail.com');
insert into USER (USER_ID, USER_PASSWORD, USER_EMAIL) values (18, 'test', 'test6@mail.com');
insert into USER (USER_ID, USER_PASSWORD, USER_EMAIL) values (19, 'test', 'test7@mail.com');
insert into USER (USER_ID, USER_PASSWORD, USER_EMAIL) values (20, 'test', 'test8@mail.com');
insert into USER (USER_ID, USER_PASSWORD, USER_EMAIL) values (21, 'test', 'test9@mail.com');
insert into USER (USER_ID, USER_PASSWORD, USER_EMAIL) values (22, 'test', 'test10@mail.com');
insert into USER (USER_ID, USER_PASSWORD, USER_EMAIL) values (23, 'test', 'test20@mail.com');




insert into BAKER (BAKER_ID, BAKER_FNAME, BAKER_LNAME, USER_USER_ID) values (1, 'Catlaina', 'Alan', 1);
insert into BAKER (BAKER_ID, BAKER_FNAME, BAKER_LNAME, USER_USER_ID) values (2, 'Roana', 'Ashtonhurst', 2);
insert into BAKER (BAKER_ID, BAKER_FNAME, BAKER_LNAME, USER_USER_ID) values (3, 'Clyde', 'Palleske', 3);

insert into CUSTOMER (CUSTOMER_ID, CUST_FNAME, CUST_LNAME, CUST_PHONE, CUST_EMAIL, CUST_PAYMENT, USER_USER_ID) values (1, 'Rosy', 'Borrow', '5552105170', 'rborrow0@gmail.com', 'mastercard', 4);
insert into CUSTOMER (CUSTOMER_ID, CUST_FNAME, CUST_LNAME, CUST_PHONE, CUST_EMAIL, CUST_PAYMENT, USER_USER_ID) values (2, 'Olive', 'Greatham', '5555027300', 'ogreatham@yahoo.com', 'visa', 5);
insert into CUSTOMER (CUSTOMER_ID, CUST_FNAME, CUST_LNAME, CUST_PHONE, CUST_EMAIL, CUST_PAYMENT, USER_USER_ID) values (3, 'Kylie', 'Riseley', '5557587991', 'kylie_riseley2@icloud.com', 'mastercard', 6);

-- make more testing
insert into CUSTOMER (CUSTOMER_ID, CUST_FNAME, CUST_LNAME, CUST_PHONE, CUST_EMAIL, CUST_PAYMENT, USER_USER_ID) values (4, 'John', 'Doe', '1234567890', 'test1@icloud.com', 'mastercard', 8);
insert into CUSTOMER (CUSTOMER_ID, CUST_FNAME, CUST_LNAME, CUST_PHONE, CUST_EMAIL, CUST_PAYMENT, USER_USER_ID) values (5, 'Kylie', 'Doe', '0987654321', 'test2@icloud.com', 'visa', 9);
insert into CUSTOMER (CUSTOMER_ID, CUST_FNAME, CUST_LNAME, CUST_PHONE, CUST_EMAIL, CUST_PAYMENT, USER_USER_ID) values (6, 'Mark', 'Doe', '1234567890', 'test11@icloud.com', 'mastercard', 10);
insert into CUSTOMER (CUSTOMER_ID, CUST_FNAME, CUST_LNAME, CUST_PHONE, CUST_EMAIL, CUST_PAYMENT, USER_USER_ID) values (7, 'Jane', 'Riseley', '0987654321', 'test21@icloud.com', 'visa', 11);

-- even more testing

insert into CUSTOMER (CUSTOMER_ID, CUST_FNAME, CUST_LNAME, CUST_PHONE, CUST_EMAIL, CUST_PAYMENT, USER_USER_ID) values (8, 'test', 'test', '0987654321', 'test@mail.com', 'cash', 12);
insert into CUSTOMER (CUSTOMER_ID, CUST_FNAME, CUST_LNAME, CUST_PHONE, CUST_EMAIL, CUST_PAYMENT, USER_USER_ID) values (9, 'test', 'test', '0987654321', 'test@mail.com', 'cash', 13);
insert into CUSTOMER (CUSTOMER_ID, CUST_FNAME, CUST_LNAME, CUST_PHONE, CUST_EMAIL, CUST_PAYMENT, USER_USER_ID) values (10, 'test', 'test', '0987654321', 'test@mail.com', 'cash', 14);
insert into CUSTOMER (CUSTOMER_ID, CUST_FNAME, CUST_LNAME, CUST_PHONE, CUST_EMAIL, CUST_PAYMENT, USER_USER_ID) values (11, 'test', 'test', '0987654321', 'test@mail.com', 'cash', 15);
insert into CUSTOMER (CUSTOMER_ID, CUST_FNAME, CUST_LNAME, CUST_PHONE, CUST_EMAIL, CUST_PAYMENT, USER_USER_ID) values (12, 'test', 'test', '0987654321', 'test@mail.com', 'cash', 16);
insert into CUSTOMER (CUSTOMER_ID, CUST_FNAME, CUST_LNAME, CUST_PHONE, CUST_EMAIL, CUST_PAYMENT, USER_USER_ID) values (13, 'test', 'test', '0987654321', 'test@mail.com', 'cash', 17);
insert into CUSTOMER (CUSTOMER_ID, CUST_FNAME, CUST_LNAME, CUST_PHONE, CUST_EMAIL, CUST_PAYMENT, USER_USER_ID) values (14, 'test', 'test', '0987654321', 'test@mail.com', 'cash', 18);
insert into CUSTOMER (CUSTOMER_ID, CUST_FNAME, CUST_LNAME, CUST_PHONE, CUST_EMAIL, CUST_PAYMENT, USER_USER_ID) values (15, 'test', 'test', '0987654321', 'test@mail.com', 'cash', 19);
insert into CUSTOMER (CUSTOMER_ID, CUST_FNAME, CUST_LNAME, CUST_PHONE, CUST_EMAIL, CUST_PAYMENT, USER_USER_ID) values (16, 'test', 'test', '0987654321', 'test@mail.com', 'cash', 20);




INSERT INTO MENU_ITEM (ITEM_ID, ITEM_NAME, ITEM_PRICE, ITEM_DESCRIPTION) VALUES (1, 'Double Chocolate Cake', 9.99, 'Amazing Chocolate Cake');
INSERT INTO MENU_ITEM (ITEM_ID, ITEM_NAME, ITEM_PRICE, ITEM_DESCRIPTION) VALUES (2, 'Fancy Pink Cake', 19.99, 'Pink Cake with Fancy Icing');
INSERT INTO MENU_ITEM (ITEM_ID, ITEM_NAME, ITEM_PRICE, ITEM_DESCRIPTION) VALUES (3, 'Upside Down Ice Cream Cone Cake', 12.99, 'Ice Cream Cone inspired Cake');

-- default order, may not be needed any more? not added yet
INSERT INTO ORDERS(ORDER_ID, ORDER_DATE, ORDER_PICKUP_DATE, ORDER_NOTES, FINAL_PRICE, STATUS_STATUS_ID) VALUES (2, '2022-12-01', '2022-12-02', 'Please add Name to Cake', 12.99, 1);

INSERT INTO ORDERS(ORDER_ID) VALUES (2);

--

INSERT INTO STATUS(STATUS_ID, STATUS_NAME) VALUES (0, 'Incomplete Order');
INSERT INTO STATUS(STATUS_ID, STATUS_NAME) VALUES (1, 'Order In Progress');
INSERT INTO STATUS(STATUS_ID, STATUS_NAME) VALUES (2, 'Ready for Pickup');
INSERT INTO STATUS(STATUS_ID, STATUS_NAME) VALUES (3, 'Order Complete');


SELECT * FROM USER;

INSERT INTO USER (USER_ID, USER_PASSWORD, USER_EMAIL) VALUES (7, "test", "baker@gmail.com");
INSERT INTO USER (USER_ID, USER_PASSWORD, USER_EMAIL) VALUES (8, "test", "customer@gmail.com");

SELECT * FROM ORDERS;
SELECT * FROM ITEMS_ORDERED;
SELECT * FROM CUSTOMER;

INSERT INTO ITEMS_ORDERED (ITEM_QUANTITY, PRICE_TOTAL, MENU_ITEM_ITEM_ID, ORDERS_ORDER_ID) VALUES (1, 12.99, 1, 1);
INSERT INTO ITEMS_ORDERED (ITEM_QUANTITY, PRICE_TOTAL, MENU_ITEM_ITEM_ID, ORDERS_ORDER_ID) VALUES (0, 0, 1, 2);

UPDATE ITEMS_ORDERED
SET ITEM_QUANTITY = ITEM_QUANTITY + 1, PRICE_TOTAL = PRICE_TOTAL + 1, MENU_ITEM_ITEM_ID = 1 
WHERE ORDERS_ORDER_ID = 2;



SELECT ITEM_QUANTITY, PRICE_TOTAL FROM ITEMS_ORDERED WHERE ORDERS_ORDER_ID = 1;

-- refresh data:

DELETE FROM ITEMS_ORDERED WHERE ORDERS_ORDER_ID > -1;
UPDATE CUSTOMER SET ORDERS_ORDER_ID = null WHERE CUSTOMER_ID > -1;
DELETE FROM ORDERS WHERE ORDER_ID > -1;


SELECT C.CUST_FNAME, C.CUST_LNAME, I.ITEM_QUANTITY, O.ORDER_DATE FROM CUSTOMER C
INNER JOIN ORDERS O ON C.ORDERS_ORDER_ID=O.ORDER_ID
INNER JOIN ITEMS_ORDERED I ON O.ORDER_ID=I.ORDERS_ORDER_ID;


UPDATE CUSTOMER SET ORDERS_ORDER_ID = 1 WHERE CUSTOMER_ID = 1;
UPDATE CUSTOMER SET ORDERS_ORDER_ID = 2 WHERE CUSTOMER_ID = 2;
UPDATE CUSTOMER SET ORDERS_ORDER_ID = 3 WHERE CUSTOMER_ID = 3;


UPDATE ORDERS
SET ORDER_DATE = CURRENT_TIMESTAMP,
ORDER_PICKUP_DATE = "2022-01-01"
WHERE ORDER_ID = 1;


UPDATE ORDERS SET ORDER_DATE = CURRENT_TIMESTAMP, ORDER_PICKUP_DATE = '2022-12-31', FINAL_PRICE = 0.0 WHERE ORDER_ID = 1;

UPDATE CUSTOMER SET ORDERS_ORDER_ID = 2 WHERE CUSTOMER_ID = 1;

SELECT max(ORDER_ID) FROM ORDERS;