# CarDealershipDatabase

### This project is a complete SQL-based system for managing a car dealership's operations. It includes structured database schema creation, populating sample data, and a set of analytical queries to verify data accuracy and support car dealership insights.
## Files Included 

- CreateCarDealershipQuieres.sql`:  Creates the `CarDealership` database and all required tables 
-  `InsertDataIntoDatabase.sql` : Populates all tables with realistic sample data 
-  `CarDealershipQuieres.sql` :  Contains test queries to validate the database


## Tables 

### `dealerships`
Stores dealership information like name, address, and phone number.

### `vehicles`
Stores vehicle details such as make, model, type, year, odometer reading, price, and sale status.

### `inventory`
Tracks which dealership has which vehicle using foreign keys.

### `sales_contracts`
Stores sales information such as customer, price, financing, and sale date.

### `lease_contracts`
(Optional) Tracks leasing agreements including lease terms and monthly payment.


## CarDealershipQuieres

### Included in `CarDealershipQuieres.sql`:
1. **Get all dealerships**
2. **Get all vehicles for a specific dealership**
3. **Find a vehicle by VIN**
4. **Find the dealership where a vehicle is located by VIN**
5. **Find dealerships that have a certain car type (e.g. Red Mustang)**
6. **Get all sales for a specific dealership in a date range**

