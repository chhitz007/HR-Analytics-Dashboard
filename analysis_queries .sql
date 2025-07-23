 -- 1. Total Employees
SELECT COUNT(*) AS total_employees FROM employees;


-- 2. Average Salary by Department
SELECT department, ROUND(AVG(salary), 2) AS avg_salary
FROM employees
GROUP BY department;



-- 3. Top Performers (Rating ≥ 4)
SELECT first_name, last_name, department, performance_rating
FROM employees
WHERE performance_rating >= 4
ORDER BY performance_rating DESC;



-- 4. Attendance Summary for Each Employee
SELECT e.first_name || ' ' || e.last_name AS employee_name,
       COUNT(CASE WHEN a.status = 'Present' THEN 1 END) AS present_days,
       COUNT(CASE WHEN a.status = 'Absent' THEN 1 END) AS absent_days,
       COUNT(CASE WHEN a.status = 'Leave' THEN 1 END) AS leave_days
FROM employees e
JOIN attendance a ON e.emp_id = a.emp_id
GROUP BY employee_name;




-- 5. Leave Requests Summary
SELECT e.first_name || ' ' || e.last_name AS employee_name,
       l.leave_type,
       l.start_date,
       l.end_date,
       l.status
FROM leaves l
JOIN employees e ON l.emp_id = e.emp_id
ORDER BY l.start_date;




-- 6. Department-Wise Performance
SELECT department,
       ROUND(AVG(performance_rating), 2) AS avg_performance
FROM employees
GROUP BY department;




--  7. Employees Who Took Leave in Last 30 Days
SELECT DISTINCT e.first_name || ' ' || e.last_name AS employee_name
FROM leaves l
JOIN employees e ON l.emp_id = e.emp_id
WHERE l.start_date >= CURRENT_DATE - INTERVAL '30 days';





