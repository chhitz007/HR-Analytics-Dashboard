CREATE TABLE employees (
  employee_id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  department VARCHAR(50),
  salary NUMERIC,
  rating INTEGER
);

CREATE TABLE attendance (
  attendance_id SERIAL PRIMARY KEY,
  employee_id INTEGER REFERENCES employees(employee_id),
  date DATE,
  status VARCHAR(10)
);

CREATE TABLE leaves (
  leave_id SERIAL PRIMARY KEY,
  employee_id INTEGER REFERENCES employees(employee_id),
  start_date DATE,
  end_date DATE,
  reason TEXT
);
