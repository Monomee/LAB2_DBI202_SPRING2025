SELECT dm.depNum, dm.depName, COUNT(dd.depName) AS 'Number'
FROM tblDepartment dm
    JOIN tblEmployee e ON e.depNum = dm.depNum
    LEFT JOIN tblDependent dd ON dd.empSSN = e.empSSN
GROUP BY dm.depNum, dm.depName
HAVING COUNT(dd.depName) IN 
(SELECT TOP 1 COUNT(dd.depName) AS 'NumberTemp'
FROM tblDepartment dm
    JOIN tblEmployee e ON e.depNum = dm.depNum
    LEFT JOIN tblDependent dd ON dd.empSSN = e.empSSN
GROUP BY dm.depNum, dm.depName
ORDER BY NumberTemp
DESC)