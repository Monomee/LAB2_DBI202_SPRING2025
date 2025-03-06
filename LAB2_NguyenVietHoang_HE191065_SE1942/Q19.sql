SELECT e.empSSN, e.empName, dm.depName, SUM(w.workHours) AS 'Total'
FROM tblWorksOn w
	JOIN tblEmployee e ON e.empSSN = w.empSSN
	JOIN tblDepartment dm ON dm.depNum = e.depNum
GROUP BY e.empSSN, e.empName, dm.depName
