
INSERT INTO users (name, date, email, password, country, city) VALUES
    ('Alex', '2019-05-30 10:00:00', 'alex@yandex.ru', 'password', 'Russia', 'Moscow'),
    ('Myke', '2019-05-30 13:00:00', 'myke@gmail.com', 'password', 'USA', 'New York'),
    ('Bob', '2019-05-31 09:00:00', 'bob@gmail.com', 'password', 'USA', 'San Francisco');


INSERT INTO products (name, date, asin, title, image, price, description, user_id) VALUES
    ('Product_1', '2019-05-30 10:00:00', 'B079JD7F7G', 'WiFi Router,Wavlink Remote AC1200 Smart WiFi Router with Touchlink Function,High Speed 2.4G+5GHz Dual Band Gigabit Wireless Internet Router for Online Game&Home',
     'https://images-na.ssl-images-amazon.com/images/I/51PlzLkwAIL.jpg', 57.99, 'WiFi Router,Wavlink Remote AC1200 Smart WiFi Router with Touchlink Function,High Speed 2.4G+5GHz Dual Band Gigabit Wireless Internet Router for Online Game&Home', 1),
    ('Product_2', '2019-05-30 13:00:00', 'B07PZL2BMH', 'SUNGAIT Ultra Lightweight', 'img', 12.75, 'SUNGAIT Ultra Lightweight Rectangular Polarized', 1),
    ('Product_3', '2019-05-30 15:00:00', 'B07L2NJKMK', 'Wireless Earbuds', 'img', 29.99, 'Wireless Earbuds, Letsfit Bluetooth 5.0', 1),
    ('Product_4', '2019-05-30 17:00:00', 'B07GPHG3L7', 'Tea Tree Body Wash', 'img', 12.59, 'Tea Tree Body Wash, Helps Nail Fungus, Athletes Foot', 2),
    ('Product_5', '2019-05-30 19:00:00', 'B07JB8BMJT', 'Etekcity EK5150', 'img', 15.29, 'Etekcity EK5150 Digital Food Kitchen Scale for Cooking', 2);

INSERT INTO images (url, product_id) VALUES
    ('https://images-na.ssl-images-amazon.com/images/I/61q2haSNcyL.jpg', 1),
    ('https://images-na.ssl-images-amazon.com/images/I/51syw17qDFL.jpg', 1);

INSERT INTO orders (date, name, price, status, payment, key, product_id, user_id) VALUES
    ('2019-05-31 10:00:00', 'WiFi Router,Wavlink Remote AC1200 Smart WiFi Router with Touchlink', 57.99, 'New', 'Not paid', 'Wi-Fi', 1, null),
    ('2019-05-31 10:00:00', 'WiFi Router,Wavlink Remote AC1200 Smart WiFi Router with Touchlink', 57.99, 'New', 'Not paid', 'Wi-Fi', 1, null),
    ('2019-05-31 10:00:00', 'WiFi Router,Wavlink Remote AC1200 Smart WiFi Router with Touchlink', 57.99, 'New', 'Not paid', 'Wi-Fi', 1, null),
    ('2019-05-31 10:00:00', 'WiFi Router,Wavlink Remote AC1200 Smart WiFi Router with Touchlink', 57.99, 'Completed', 'Not paid', 'Wi-Fi', 1, null),
    ('2019-05-31 10:00:00', 'WiFi Router,Wavlink Remote AC1200 Smart WiFi Router with Touchlink', 57.99, 'Completed', 'Not paid', 'Wi-Fi', 1, null),
    ('2019-05-31 10:00:00', 'WiFi Router,Wavlink Remote AC1200 Smart WiFi Router with Touchlink', 57.99, 'Reserved', 'Not paid', 'Wi-Fi', 3, 3),
    ('2019-05-31 10:00:00', 'WiFi Router,Wavlink Remote AC1200 Smart WiFi Router with Touchlink', 57.99, 'Completed', 'Paid', 'Wi-Fi', 3, 3);