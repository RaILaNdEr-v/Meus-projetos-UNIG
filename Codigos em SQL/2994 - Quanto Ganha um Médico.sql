#2994 - Quanto Ganha um Médico?

SELECT 
    d.name AS doctor_name,
    ROUND(SUM(a.hours * 150 * (1 + ws.bonus / 100.0)), 1) AS weekly_salary
FROM  
    attendances a
JOIN  
    doctors d ON a.id_doctor = d.id
JOIN 
    work_shifts ws ON a.id_work_shift = ws.id
GROUP BY 
    d.name 
ORDER BY  
    weekly_salary DESC