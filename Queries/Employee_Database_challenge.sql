-- Deliverable 1
-- Number of retiring employees by title
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '01/01/1952' AND '12/31/1955')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY rt.emp_no ASC, rt.to_date DESC;

-- Number of employees by most recent job title who are about to retire
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;


-- Deliverable 2
-- Employees eligible to paritcipate in the mentorship program
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '01/01/1965' AND '12/31/1965')
ORDER BY e.emp_no;


-- Additional queries
-- How many roles will need to be filled per department
SELECT d.dept_name,
	COUNT(d.dept_name)
FROM unique_titles AS ut
INNER JOIN dept_emp AS de
ON (ut.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no)
GROUP BY d.dept_name
ORDER BY count DESC;

-- Are there enough qualified, retirement-ready employees to be mentors
SELECT d.dept_name,
	ut.title,
	COUNT(d.dept_name)
FROM unique_titles AS ut
INNER JOIN dept_emp AS de
ON (ut.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no)
WHERE (ut.title IN ('Manager', 'Technique Leader', 'Senior Staff', 'Senior Engineer'))
GROUP BY d.dept_name, ut.title
ORDER BY count DESC;