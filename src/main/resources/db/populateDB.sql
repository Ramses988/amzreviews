
INSERT INTO users (name, date, email, password, country, city) VALUES
    ('Alex', '2019-05-30 10:00:00', 'alex@yandex.ru', 'password', 'Russia', 'Moscow'),
    ('Myke', '2019-05-30 13:00:00', 'myke@gmail.com', 'password', 'USA', 'New York');


INSERT INTO products (name, date, asin, title, price, image, description, user_id) VALUES
    ('Product_1', '2019-05-30 10:00:00', 'B079JD7F7G', 'TP-Link AC1750 Smart WiFi Router', 57.99, 'Image1', 'TP-Link AC1750 Smart WiFi Router', 1),
    ('Product_2', '2019-05-30 13:00:00', 'B07PZL2BMH', 'SUNGAIT Ultra Lightweight', 12.75, 'Image1', 'SUNGAIT Ultra Lightweight Rectangular Polarized', 1),
    ('Product_3', '2019-05-30 15:00:00', 'B07L2NJKMK', 'Wireless Earbuds', 29.99, 'Image1', 'Wireless Earbuds, Letsfit Bluetooth 5.0', 1),
    ('Product_4', '2019-05-30 17:00:00', 'B07GPHG3L7', 'Tea Tree Body Wash', 12.59, 'Image1', 'Tea Tree Body Wash, Helps Nail Fungus, Athletes Foot', 2),
    ('Product_5', '2019-05-30 19:00:00', 'B07JB8BMJT', 'Etekcity EK5150', 15.29, 'Image1', 'Etekcity EK5150 Digital Food Kitchen Scale for Cooking', 2);

INSERT INTO orders (date, price, status, payment, product_id) VALUES
    ('2019-05-31 10:00:00', 57.99, 'New', 'Not paid', 1),
    ('2019-05-31 10:00:00', 57.99, 'New', 'Not paid', 1),
    ('2019-05-31 10:00:00', 57.99, 'Completed', 'Not paid', 1),
    ('2019-05-31 10:00:00', 57.99, 'Completed', 'Not paid', 1);