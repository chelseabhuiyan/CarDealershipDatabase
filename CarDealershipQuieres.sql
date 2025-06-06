Use cardealership;

/* Get all dealerships*/
SELECT * FROM dealerships;

/* . Find all vehicles for a specific dealership (Auto World)*/
SELECT v.*
FROM vehicles v
JOIN inventory i ON v.vin = i.vin
WHERE i.dealership_id = "1";

/*Find a car by VIN */
SELECT * FROM vehicles
WHERE vin = 123456;

/*Find the dealership where a certain car is located, by VIN */
SELECT d.*
FROM dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
WHERE i.vin = 123456; 

/* Find all Dealerships that have a certain car type (i.e. Red Mustang) */
SELECT DISTINCT d.*
FROM dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
JOIN vehicles v ON i.vin = v.vin
WHERE v.model = 'Mustang'
  AND v.color = 'Red';
  
/* Get all sales information for a specific dealer for a specific date range */
SELECT sc.*
FROM sales_contracts sc
JOIN inventory i ON sc.vin = i.vin
WHERE i.dealership_id = 2
  AND sc.sale_date BETWEEN '2024-01-01' AND '2025-12-31';
