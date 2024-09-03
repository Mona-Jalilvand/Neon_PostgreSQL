CREATE TABLE employees (
    id SERIAL PRIMARY KEY, -- Auto-incrementing ID
    name VARCHAR(100) NOT NULL, -- Employee name, max 100 characters
    position VARCHAR(50), -- Job position, max 50 characters
    hire_date DATE, -- Date of hire
);
-- Inserting a row 
INSERT INTO employees (name, position, hire_date)
VALUES ('John Doe', 'Software Developer', '2023-09-01');

-- Adding a new column for email addresses
ALTER TABLE employees ADD COLUMN email VARCHAR(255);
-- Adding a comment on the table
COMMENT ON TABLE employees IS 'Stores employee data for the company.';

-- Adding email address of an employee
UPDATE employees
SET email = 'john.doe@example.com'
WHERE name = 'John Doe';

-- To make searching in database faster, we index the email column
CREATE INDEX idx_email ON employees(email);

