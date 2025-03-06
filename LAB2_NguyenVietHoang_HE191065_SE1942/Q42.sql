SELECT e.empSSN, e.empName, d.depName
FROM tblEmployee e
	JOIN tblDepartment d ON e.depNum = d.depNum
	LEFT JOIN tblWorksOn w ON e.empSSN = w.empSSN
WHERE w.empSSN IS NULL;