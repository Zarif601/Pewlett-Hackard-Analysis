# Pewlett-Hackard-Analysis

## Overview of the project

This project uses PostgreSQL to create a database and analyze employee information of the Pewlett Hackard company. The analysis involves figuring out which employees are retiring and employees who are eligible for mentorship programs to fill in vacancies left by the retirees.

### Purpose

Analyzing the employee information in the database enables the Pewlett Hackard company to prepare for a 'silver tsunami,' meaning a lot of retirements. To prepare for such a large number of retirements, the company needs to formulate plans and this analysis helps the company know which employees are retiring, how many they are, which departments and titles they have and how many positions the company has to fill after their retirements.

## Results

The analysis is broken down into four major points as below:

1. From the table of retirees and which titles they will leave vacant, we can see that close to 70,000 posts will be left vacant at the company as shown in the image below:

![Retiring_titles](https://github.com/Zarif601/Pewlett-Hackard-Analysis/blob/main/Retiring_titles.png)

2. A lot of senior positions are going to be vacant after the retirements. Especially many 'Senior Engineer' and 'Senior Staff' positions will be required to be filled. 

3. From the table of mentorship eligibility we can determine which current employees are eligible for the mentorship program offered by the company. This will allow them to move up the corporate ladder and fill some of the senior roles that will be left vacant by the retirees. A glimpse of the table is added below:

![Mentorship_eligibility](https://github.com/Zarif601/Pewlett-Hackard-Analysis/blob/main/Mentorship_eligibility.png)

4. The table contains the current title information for all of the employees determined to be eligible for the mentorship program. This will allow the company to figure out how to distribute their resources once the retirements happen.

## Summary

One important aspect to consider in this analysis is how each department will be impacted in the company due to the heavy upcoming retirements. To study that we can look at how many roles will be left vacant per department. The following image has the information we need:

![Retiring_departments](https://github.com/Zarif601/Pewlett-Hackard-Analysis/blob/main/Retiring_departments.png)

As we can see from the image, development, production and sales departments would have a lot of roles that would have to be filled.

Now that we know how many vacancies there will be per department, we can look at if there are enough retirement-ready employees who could take mentorship roles to prepare the employees who would participate in the mentorship program. A table detailing all the retirement-ready employees who could be eligible to take up mentorship roles are shown in the image below:

![Retiring_mentors](https://github.com/Zarif601/Pewlett-Hackard-Analysis/blob/main/Retiring_mentors.png)

Looking at this image, we can see that 'Managers,' 'Technique Leaders,' 'Senior Staffs,' and 'Senior Engineers' were thought to be people who could potentially the the role of a mentor. The image shows the distribution of these roles by department and can help the company identify if they beleive that enough mentor candidates are present amongst the retirement-ready employees.
