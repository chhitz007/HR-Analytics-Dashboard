INSERT INTO employees (first_name, last_name, gender, department, job_role, date_of_joining, salary, performance_rating)
VALUES
('John', 'Doe', 'Male', 'IT', 'Software Engineer', '2021-06-01', 75000, 4),
('Jane', 'Smith', 'Female', 'HR', 'HR Manager', '2019-03-15', 85000, 5),
('Alice', 'Johnson', 'Female', 'Finance', 'Accountant', '2020-08-10', 65000, 3),
('Bob', 'Brown', 'Male', 'IT', 'DevOps Engineer', '2022-01-05', 70000, 2),
('Charlie', 'Lee', 'Male', 'Marketing', 'Content Strategist', '2018-11-22', 60000, 4);


INSERT INTO attendance (emp_id, date, status)
VALUES
(1, '2025-07-01', 'Present'),
(1, '2025-07-02', 'Absent'),
(2, '2025-07-01', 'Present'),
(2, '2025-07-02', 'Present'),
(3, '2025-07-01', 'Leave'),
(3, '2025-07-02', 'Present'),
(4, '2025-07-01', 'Present'),
(4, '2025-07-02', 'Present'),
(5, '2025-07-01', 'Absent'),
(5, '2025-07-02', 'Present');




INSERT INTO leaves (emp_id, leave_type, start_date, end_date, status)
VALUES
(1, 'Sick', '2025-06-20', '2025-06-22', 'Approved'),
(2, 'Casual', '2025-07-03', '2025-07-05', 'Pending'),
(3, 'Sick', '2025-06-15', '2025-06-16', 'Approved'),
(4, 'Casual', '2025-07-10', '2025-07-12', 'Rejected'),
(5, 'Sick', '2025-07-01', '2025-07-01', 'Approved');

