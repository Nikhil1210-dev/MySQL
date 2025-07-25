# 💼 MySQL Stored Procedures: Employees Table

📁 Database: `transflower`  
📄 Table: `employees`

---

## 📂 Overview

This project includes:

- Creation of the `transflower` database
- Table: `employees`
- Insertion of sample employee records 
- Three stored procedures:
  - `getEmployeeById`
  - `insertEmployee`
  - `getTotalSalaries`

---

## 🛠️ Setup Instructions

### 🔹 Step 1: Create Database

```sql
CREATE DATABASE IF NOT EXISTS transflower;
USE transflower;
🔹 Step 2: Create Table: employees
sql
Copy
Edit
CREATE TABLE IF NOT EXISTS employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) NOT NULL
);
🔹 Step 3: Insert Sample Data
sql
Copy
Edit
INSERT INTO employees (name, salary) VALUES
('Nikhil Navale', 55000.00),
('Mayur Shinde', 48000.00),
('Snehal Pawar', 51000.00),
('Omkar Jadhav', 47000.00),
('Pooja Kadam', 53000.00),
('Yash Patil', 50000.00),
('Aishwarya Deshmukh', 60000.00),
('Swapnil Thorat', 49000.00),
('Prajakta Koli', 52000.00),
('Sanket Pawar', 46000.00);
🔹 Step 4: Create Stored Procedures
sql
Copy
Edit
DELIMITER //

-- Get employee by ID
CREATE PROCEDURE getEmployeeById(IN emp_id INT)
BEGIN
    SELECT * FROM employees WHERE id = emp_id;
END;
//

-- Insert a new employee
CREATE PROCEDURE insertEmployee(
    IN emp_name VARCHAR(50),
    IN emp_salary DECIMAL(10,2)
)
BEGIN
    INSERT INTO employees (name, salary) VALUES (emp_name, emp_salary);
END;
//

-- Get total salaries
CREATE PROCEDURE getTotalSalaries()
BEGIN
    SELECT SUM(salary) AS total_salary FROM employees;
END;
//

DELIMITER ;
🧪 Example Usage
sql
Copy
Edit
CALL getEmployeeById(3);
CALL insertEmployee('Rutuja Kharat', 58000.00);
CALL getTotalSalaries();
👨‍💻 Author
Nikhil Navale
B.Tech CS-AI | Transflower Team Project
🗂️ This script is free for educational use.

📜 License
This project is open-source and available under the MIT License.
---
