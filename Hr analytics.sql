--1 Which age group is most likely to quit their jobs?
SELECT 
	CASE 
		when Age between 0 and 22 then 'Entry-level'
		WHEN Age between 23 AND 28 then 'Associate'
		WHEN Age between 29 and 35 then 'Mid_senior'
		ELSE 'Exicutive'
	END as Experience_rank,
	COUNT(*) as total_person
FROM HR_Employee_Attrition hea
WHERE Attrition = 'Yes'
group by Experience_rank 
ORDER BY total_person desc

--2 Which department employee is most likely to quit their jobs?
SELECT 
	Department ,
	COUNT(*) as Total_Person 
FROM HR_Employee_Attrition hea 
WHERE Attrition = 'Yes'
group by Department 
ORDER BY Total_person DESC 

--3 Which Education field employee is most likely to quit their jobs?
SELECT 
	EducationField,
	COUNT(*) as Total_attrition 
FROM HR_Employee_Attrition hea 
WHERE Attrition = 'Yes' 
GROUP BY EducationField 
ORDER BY Total_attrition DESC 

--4 Which gender is most likely to quit their jobs?
SELECT 
	Gender,
	COUNT(*) as 'Total_attrition' 
from HR_Employee_Attrition hea 
WHERE Attrition = 'Yes'
GROUP BY Gender 
ORDER BY Total_attrition DESC 

--5 attrition by job setisfaction lavel
SELECT 
	CASE 
		WHEN JobSatisfaction = 1 then 'Dissatisfied'
		WHEN JobSatisfaction = 2 then 'Neutral'
		WHEN JobSatisfaction = 3 then 'Satisfied'
		ELSE 'Very Satisfied'
	END as 'job_setisfaction' ,
	COUNT(*) as Total_attrition 
FROM HR_Employee_Attrition hea 
WHERE Attrition = 'Yes'
group by job_setisfaction
ORDER BY Total_attrition DESC 

--6 attrition by jobrole
SELECT 
	JobRole ,
	COUNT(*) as Total_attrition 
FROM HR_Employee_Attrition hea 
WHERE Attrition = 'Yes'
GROUP by JobRole 
ORDER BY Total_attrition DESC 

--7 attrition by job performance rating
SELECT 
	PerformanceRating ,
	COUNT(*) as Total_attrition 
FROM HR_Employee_Attrition hea 
WHERE Attrition = 'Yes'
GROUP BY PerformanceRating 
ORDER BY total_attrition DESC 

-- 8  attrition by travel frequency
SELECT 
	BusinessTravel ,
	COUNT(*) as Total_attrition 
FROM HR_Employee_Attrition hea 
WHERE Attrition = 'Yes'
GROUP BY BusinessTravel 
ORDER BY Total_attrition DESC 
