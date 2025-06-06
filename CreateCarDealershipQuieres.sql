CREATE DATABASE CarDealership;
USE CarDealership;

CREATE TABLE dealerships (
    dealership_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15)
);

CREATE TABLE vehicles (
    vin INT PRIMARY KEY,
    year INT,
    make VARCHAR(50),
    model VARCHAR(50),
    type VARCHAR(50),
    color VARCHAR(20),
    odometer INT,
    price DECIMAL(10,2),
    sold BOOLEAN DEFAULT FALSE
);

CREATE TABLE inventory (
    dealership_id INT,
    vin INT,
    PRIMARY KEY (dealership_id, vin),
    FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id),
    FOREIGN KEY (vin) REFERENCES vehicles(vin)
);

CREATE TABLE sales_contracts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin INT,
    customer_name VARCHAR(100),
    customer_email VARCHAR(100),
    sale_date DATE,
    price DECIMAL(10,2),
    financing BOOLEAN,
    FOREIGN KEY (vin) REFERENCES vehicles(vin)
);

CREATE TABLE lease_contracts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin INT,
    customer_name VARCHAR(100),
    lease_start DATE,
    lease_end DATE,
    monthly_payment DECIMAL(10,2),
    FOREIGN KEY (vin) REFERENCES vehicles(vin)
);



