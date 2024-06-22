SELECT
    p.project_id, ROUND(AVG(experience_years),2) as average_years
FROM
    Employee as e LEFT JOIN Project as p USING(employee_id)
WHERE p.project_id IS NOT NULL
GROUP BY
    p.project_id
