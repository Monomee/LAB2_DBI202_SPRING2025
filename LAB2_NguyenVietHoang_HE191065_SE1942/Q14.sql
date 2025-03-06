SELECT depSex, COUNT(depSex) AS 'Number'
FROM tblDependent
GROUP BY depSex