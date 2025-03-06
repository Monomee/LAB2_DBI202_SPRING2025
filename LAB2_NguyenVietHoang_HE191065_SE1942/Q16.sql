SELECT dm.depNum, dm.depName, COUNT(dd.depName) AS 'Number'
FROM tblDepartment dm
    JOIN tblEmployee e ON e.depNum = dm.depNum
    LEFT JOIN tblDependent dd ON dd.empSSN = e.empSSN
GROUP BY dm.depNum, dm.depName;
