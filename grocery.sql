create database shopping;
use shopping;


CREATE TABLE vegetables (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    price integer
);
INSERT INTO Vegetables (ProductID, ProductName, Price)
VALUES
    (121, 'Carrot', 21),
    (456, 'Broccoli', 22),
    (709, 'Tomato', 21),
    (214, 'Spinach', 22),
    (567, 'Cucumber', 21),
    (345, 'Bell Pepper', 21),
    (678, 'Zucchini', 21),
    (124, 'Lettuce', 22),
    (457, 'Onion', 21),
    (780, 'Cauliflower', 22),
    (234, 'Potato', 21),
    (563, 'Garlic', 21),
    (305, 'Mushroom', 22),
    (608, 'Sweet Potato', 21),
    (123, 'Radish', 21),
    (406, 'Green Bean', 22),
    (789, 'Cabbage', 21),
    (204, 'Asparagus', 22),
    (569, 'Kale', 22),
    (341, 'Eggplant', 22);

drop  table vegetables;
desc vegetables;
select * from vegetables;

CREATE TABLE fruits (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Price INT  NOT NULL
);

INSERT INTO fruits (ProductID, ProductName, Price) VALUES
(101, 'Apple', 20),
(202, 'Banana', 30),
(321, 'Orange', 49),
(401, 'Grapes', 79),
(512, 'Strawberry', 19),
(603, 'Watermelon', 79),
(712, 'Pineapple', 79),
(854, 'Mango', 13),
(923, 'Kiwi', 27),
(104, 'Peach', 24),
(112, 'Plum', 67),
(128, 'Cherry', 78),
(139, 'Pear', 99),
(140, 'Blueberry', 43),
(154, 'Raspberry', 65),
(169, 'Cantaloupe', 59),
(172, 'Avocado', 43),
(185, 'Lemon', 38),
(194, 'Grapefruit', 12),
(201, 'Pomegranate', 75);
desc fruits;
drop table fruits;
select * from fruits;

create table cart(
	productid int,
	productname varchar(30) ,
    quantity int,
    price int 

);
create table register(
	username varchar(30),
    phone_no varchar(225),
    email varchar(220),
    password varchar(225),
    address varchar(50),
    nationality varchar(225)
);
select * from register;
truncate register;
drop table register;
create table orders(
cust_name varchar(30),
price int,
date_and_time timestamp
);
desc orders;
drop table orders;
select * from orders;
truncate orders;


drop table register;

drop table cart;
desc cart;
select * from cart;
truncate cart;
delete from cart;
create table diary(
ProductID INT PRIMARY KEY,
ProductName VARCHAR(255) NOT NULL,
Price integer
);
INSERT INTO diary (ProductID, ProductName, Price)
VALUES
    (150, 'Chocolate Milk', 22),
    (252, 'Feta Cheese', 35),
    (350, 'Greek Yogurt', 24),
    (450, 'Ghee', 29), 
    (200, 'Whipped Cream', 23), 
    (300, 'Sour Cream', 26),
    (400, 'Cottage Cheese', 27),
    (120, 'Almond Milk', 24),
    (220, 'Brie Cheese', 33),
    (320, 'Coconut Yogurt', 21),
    (121, 'Bagel', 28),
    (221, 'Pita Bread', 23),
    (321, 'Ciabatta', 31),
    (421, 'Sourdough', 29),
    (131, 'English Muffin', 26),
    (231, 'Raisin Bread', 24),
    (331, 'Garlic Bread', 22),
    (431, 'Naan', 30),
    (141, 'Cinnamon Swirl Bread', 27),
    (241, 'Whole Grain Baguette', 32),

    (170, 'Condensed Milk', 26),
    (270, 'Blue Cheese', 38),
    (370, 'Probiotic Drink', 23),
    (470, 'Margarine', 27),
    (190, 'Hazelnut Creamer', 21),
    (151, 'Sesame Seed Bread', 25),
    (250, 'Rye Crispbread', 22),
    (355, 'Flatbread', 30),
    (455, 'Brioche', 28),
    (160, 'Sunflower Seed Bread', 26);
    select * from diary;

CREATE TABLE spices (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Price INT
);
INSERT INTO spices (ProductID, ProductName, Price)
VALUES
    (101, 'Olive Oil', 25),
    (102, 'Black Pepper', 30),
    (103, 'Cinnamon', 22),
    (104, 'Garlic Powder', 28),
    (105, 'Sesame Oil', 35),
    (106, 'Turmeric', 23),
    (107, 'Rosemary', 26),
    (108, 'Basil', 40),
    (109, 'Cumin', 33),
    (110, 'Coconut Oil', 27),
    (111, 'Thyme', 24),
    (112, 'Paprika', 29),
    (113, 'Mustard Seed', 31),
    (114, 'Chili Powder', 38),
    (115, 'Canola Oil', 21),
    (116, 'Coriander', 36),
    (117, 'Fennel', 32),
    (118, 'Ginger', 34),
    (119, 'Sunflower Oil', 37),
    (120, 'Cardamom', 39);
    
    -- Creating a table for rice and dal
CREATE TABLE rice (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Price INT
);

-- Inserting 20 values for different types of rice and dal
INSERT INTO rice (ProductID, ProductName, Price)
VALUES
    (201, 'Basmati Rice', 15),
    (202, 'Brown Rice', 20),
    (203, 'Jasmine Rice', 18),
    (204, 'Arborio Rice', 25),
    (205, 'Lentils', 12),
    (206, 'Chickpeas', 14),
    (207, 'Red Lentils', 16),
    (208, 'Green Lentils', 17),
    (209, 'Split Peas', 13),
    (210, 'Black Lentils', 22),
    (211, 'Wild Rice', 30),
    (212, 'Yellow Lentils', 19),
    (213, 'White Rice', 16),
    (214, 'Pinto Beans', 18),
    (215, 'Quinoa', 28),
    (216, 'Masoor Dal', 14),
    (217, 'Urad Dal', 20),
    (218, 'Toor Dal', 15),
    (219, 'Moong Dal', 18),
    (220, 'Chana Dal', 22);
    
    -- Creating a table for nutrition information
CREATE TABLE nutrition (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Price INT
);

-- Inserting 20 values with random ProductIDs and prices over 20
INSERT INTO nutrition (ProductID, ProductName, Price)
VALUES
    (101, 'Protein Powder', 25),
    (102, 'Chia Seeds', 30),
    (103, 'Greek Yogurt', 22),
    (104, 'Almond Butter', 28),
    (105, 'Quinoa', 35),
    (106, 'Salmon', 23),
    (107, 'Avocado', 26),
    (108, 'Sweet Potatoes', 40),
    (109, 'Mixed Nuts', 33),
    (110, 'Olive Oil', 27),
    (111, 'Kale', 24),
    (112, 'Blueberries', 29),
    (113, 'Cottage Cheese', 31),
    (114, 'Dark Chocolate', 38),
    (115, 'Eggs', 21),
    (116, 'Brown Rice', 36),
    (117, 'Spinach', 32),
    (118, 'Coconut Oil', 34),
    (119, 'Green Tea', 37),
    (120, 'Honey', 39);
    
    -- Creating a table for chocolates
CREATE TABLE chocolates (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Price INT
);

-- Inserting 20 values with random ProductIDs and prices over 20
INSERT INTO chocolates (ProductID, ProductName, Price)
VALUES
    (201, 'Dark Chocolate Bar', 25),
    (202, 'Milk Chocolate Truffles', 30),
    (203, 'White Chocolate Bark', 22),
    (204, 'Hazelnut Chocolate Spread', 28),
    (205, 'Assorted Chocolate Box', 35),
    (206, 'Chocolate-covered Almonds', 23),
    (207, 'Caramel-filled Chocolate Squares', 26),
    (208, 'Premium Chocolate Assortment', 40),
    (209, 'Chocolate-Covered Strawberries', 33),
    (210, 'Mint Chocolate Truffle Bar', 27),
    (211, 'Sea Salt Chocolate Caramels', 24),
    (212, 'Peanut Butter Cup Chocolate', 29),
    (213, 'Raspberry Dark Chocolate', 31),
    (214, 'Toffee Chocolate Crunch', 38),
    (215, 'Chocolate-covered Pretzels', 21),
    (216, 'Orange Flavored Chocolate', 36),
    (217, 'Coconut Chocolate Clusters', 32),
    (218, 'Cherry Chocolate Delight', 34),
    (219, 'Matcha White Chocolate', 37),
    (220, 'Chocolate-dipped Marshmallows', 39);
    
    
CREATE TABLE snacks (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Price INT
);

-- Inserting 20 values for snacks
INSERT INTO snacks (ProductID, ProductName, Price)
VALUES
    (321, 'Cheese and Crackers', 23),
    (322, 'Mixed Nuts and Dried Fruit', 28),
    (323, 'Pita Chips with Hummus', 25),
    (324, 'Yogurt-covered Pretzels', 32),
    (325, 'Vegetable Spring Rolls', 36),
    (326, 'Popcorn Balls', 20),
    (327, 'Buffalo Chicken Wings', 40),
    (328, 'Cucumber Slices with Dip', 18),
    (329, 'Caramel Popcorn', 30),
    (330, 'Cheddar Cheese Cubes', 26),
    (331, 'Fruit Skewers', 22),
    (332, 'Mozzarella Sticks', 35),
    (333, 'Garlic Bread Bites', 27),
    (334, 'Spicy Tortilla Roll-ups', 34),
    (335, 'Sour Cream and Onion Chips', 24),
    (336, 'Honey Mustard Pretzels', 29),
    (337, 'Bruschetta with Tomato and Basil', 31),
    (338, 'Chocolate-covered Marshmallows', 38),
    (339, 'Jalapeno Popper Bites', 21),
    (340, 'Crispy Seaweed Snacks', 39),
    (421, 'Chocolate Chip Cookies', 25),
    (422, 'Butter Shortbread', 30),
    (423, 'Oatmeal Raisin Cookies', 22),
    (424, 'Cream-filled Sandwich Cookies', 28),
    (425, 'Ginger Snaps', 35),
    (426, 'Almond Biscotti', 23),
    (427, 'Coconut Macaroons', 26),
    (428, 'Peanut Butter Biscuits', 40),
    (429, 'Vanilla Wafers', 33),
    (430, 'Cinnamon Sugar Crisps', 27),
    (431, 'Honey Graham Crackers', 24),
    (432, 'Fruit-filled Newtons', 29),
    (433, 'Cheddar Cheese Biscuits', 31),
    (434, 'Shortcake Biscuits', 38),
    (435, 'Digestive Biscuits', 21),
    (436, 'Chocolate Cream-filled Biscuits', 36),
    (437, 'Hazelnut Sandwich Cookies', 32),
    (438, 'Caramel-filled Biscuits', 34),
    (439, 'Snickerdoodle Cookies', 37),
    (440, 'Pistachio Biscuits', 39);
    
CREATE TABLE coffee (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Price INT
);
-- Assuming your table is already created with the structure mentioned earlier

-- Inserting 20 values with random ProductIDs and prices over 20 for tea and coffee
INSERT INTO coffee (ProductID, ProductName, Price)
VALUES
    (501, 'Earl Grey Tea', 25),
    (502, 'Arabica Coffee Beans', 30),
    (503, 'Green Tea Blend', 22),
    (504, 'Espresso Pods', 28),
    (505, 'Chai Latte Mix', 35),
    (506, 'French Roast Coffee', 23),
    (507, 'Peppermint Tea', 26),
    (508, 'Cold Brew Coffee Concentrate', 40),
    (509, 'Oolong Tea Leaves', 33),
    (510, 'Instant Coffee Packets', 27),
    (511, 'Matcha Powder', 24),
    (512, 'Hazelnut Coffee Syrup', 29),
    (513, 'Herbal Tea Sampler', 31),
    (514, 'Dark Roast Coffee Pods', 38),
    (515, 'Chamomile Tea Bags', 21),
    (516, 'Caramel Macchiato Mix', 36),
    (517, 'Turmeric Ginger Tea', 32),
    (518, 'Vanilla Flavored Coffee Beans', 34),
    (519, 'Mint Mojito Iced Tea', 37),
    (520, 'Colombian Coffee Grounds', 39);
    
    CREATE TABLE meat (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Price INT
);
-- Assuming your table is already created with the structure mentioned earlier

-- Inserting 20 values with random ProductIDs and prices over 20 for meat and fish
INSERT INTO meat (ProductID, ProductName, Price)
VALUES
    (601, 'Salmon Fillet', 25),
    (602, 'Boneless Chicken Breast', 30),
    (603, 'Ground Beef', 22),
    (604, 'Pork Chops', 28),
    (605, 'Tilapia Fillet', 35),
    (606, 'Lamb Shoulder', 23),
    (607, 'Sirloin Steak', 26),
    (608, 'Shrimp', 40),
    (609, 'Turkey Breast', 33),
    (610, 'Veal Cutlets', 27),
    (611, 'Sausages', 24),
    (612, 'Cod Fillet', 29),
    (613, 'Bacon Strips', 31),
    (614, 'Tuna Steak', 38),
    (615, 'Ground Turkey', 21),
    (616, 'Chicken Wings', 36),
    (617, 'Beef Tenderloin', 32),
    (618, 'Salmon Burgers', 34),
    (619, 'Catfish Fillet', 37),
    (620, 'Pork Ribs', 39);










