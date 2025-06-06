Use cardealership;

INSERT INTO dealerships (dealership_id, name, address, phone) VALUES (1, 'Auto World', '123 Main St', '123-456-7890');
INSERT INTO dealerships (dealership_id, name, address, phone) VALUES (2, 'Speed Motors', '456 Elm St', '987-654-3210');
INSERT INTO dealerships (dealership_id, name, address, phone) VALUES (3, 'Premier Auto', '789 Oak Ave', '555-555-5555');
INSERT INTO vehicles (vin, year, make, model, type, color, odometer, price, sold) VALUES (101, 2021, 'Toyota', 'Camry', 'SEDAN', 'Blue', 25000, 21999.99, FALSE);
INSERT INTO vehicles (vin, year, make, model, type, color, odometer, price, sold) VALUES (102, 2022, 'Ford', 'Mustang', 'COUPE', 'Red', 12000, 27999.5, FALSE);
INSERT INTO vehicles (vin, year, make, model, type, color, odometer, price, sold) VALUES (103, 2020, 'Honda', 'CR-V', 'SUV', 'White', 36000, 24950.0, TRUE);
INSERT INTO vehicles (vin, year, make, model, type, color, odometer, price, sold) VALUES (104, 2023, 'Tesla', 'Model 3', 'SEDAN', 'Black', 5000, 39999.0, FALSE);
INSERT INTO inventory (dealership_id, vin) VALUES (1, 101);
INSERT INTO inventory (dealership_id, vin) VALUES (1, 104);
INSERT INTO inventory (dealership_id, vin) VALUES (2, 102);
INSERT INTO inventory (dealership_id, vin) VALUES (3, 103);
INSERT INTO sales_contracts (id, vin, customer_name, customer_email, sale_date, price, financing) VALUES (1, 103, 'John Doe', 'john@example.com', '2024-11-15', 24950.0, FALSE);
INSERT INTO sales_contracts (id, vin, customer_name, customer_email, sale_date, price, financing) VALUES (2, 102, 'Jane Smith', 'jane@example.com', '2025-01-10', 27999.5, TRUE);
INSERT INTO lease_contracts (id, vin, customer_name, lease_start, lease_end, monthly_payment) VALUES (1, 101, 'Alice Johnson', '2024-06-01', '2027-06-01', 399.99);
INSERT INTO lease_contracts (id, vin, customer_name, lease_start, lease_end, monthly_payment) VALUES (2, 104, 'Bob Martin', '2025-03-01', '2028-03-01', 499.99);
