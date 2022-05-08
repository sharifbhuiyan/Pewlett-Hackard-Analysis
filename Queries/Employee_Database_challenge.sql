-- Create a table named retirement_titles of the employees who were born between 1952 and 1955. 
SELECT 	e.emp_no, 
		e.first_name, 
		e.last_name,
		ti.title,
		ti.from_date,
		ti.to_date
INTO retirement_titles
FROM employees as e
	INNER JOIN titles as ti
	ON (e.emp_no=ti.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31' 
ORDER BY e.emp_no ;
-- Check the table
SELECT * FROM retirement_titles;

------------------------------------------------------------

--Create a Unique Titles table that hold the most recent title of each employee.( Exclude retired) 
-- Use Dictinct with Orderby to remove duplicate rows

SELECT DISTINCT ON 	(emp_no) emp_no,
					first_name,
					last_name,
					title
INTO unique_titles
FROM retirement_titles
WHERE to_date ='9999-01-01'
ORDER BY emp_no, to_date DESC;
-- Check the table
SELECT * FROM unique_titles;

------------------------------------------------------------

-- Create a table named retiring_titles showing the Number of Retiring Employees by most recent Title.

SELECT COUNT(title ), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDEr BY count DESC;
-- Check the table
SELECT * FROM retiring_titles;


-----------------------------------------------------------

-- Create a table named mentorship_eligibilty for those employees who are eligible for the Mentorship Program.

SELECT Distinct ON(e.emp_no)
		e.emp_no, 
		e.first_name, 
		e.last_name, 
		e.birth_date,
		de.from_date, 
		de.to_date,
		ti.title
INTO mentorship_eligibilty
FROM employees AS e
	INNER JOIN dept_emp AS de
	ON (e.emp_no=de.emp_no)
	INNER JOIN titles AS ti
	ON (e.emp_no=ti.emp_no)
WHERE (de.to_date='9999-01-01') AND (e.birth_date between '1965-01-01' and '1965-12-31')
ORDER BY  e.emp_no;
-- Check the table
SELECT * FROM mentorship_eligibilty;



