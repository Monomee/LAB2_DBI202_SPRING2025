--SELECT dm.depNum, dm.depName, SUM(w.workHours) AS 'Total'
--FROM tblWorksOn w
--	LEFT JOIN tblEmployee e ON e.empSSN = w.empSSN
--	LEFT JOIN tblDepartment dm ON dm.depNum = e.depNum
--GROUP BY dm.depNum, dm.depName

SELECT dm.depNum, dm.depName, COALESCE(SUM(w.workHours), 0) AS 'Total'
FROM tblDepartment dm
    LEFT JOIN tblEmployee e ON e.depNum = dm.depNum
    LEFT JOIN tblWorksOn w ON w.empSSN = e.empSSN
GROUP BY dm.depNum, dm.depName;


