
CREATE DATABASE cloud_kitchen;

CREATE TABLE User (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(14),
    `address` VARCHAR(255),
    created_at DATETIME NULL
);

CREATE TABLE MenuItem (
    menu_item_id INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    `description` VARCHAR(255),
    photo_urls JSON
);

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    `status` VARCHAR(20) CHECK (status IN ('new', 'in-progress', 'completed')),
    order_date DATETIME NOT NULL
);

CREATE TABLE OrderItem (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    menu_item_id INT,
    quantity INT NOT NULL
);
