SELECT d.depNum, d.depName
FROM tblDepartment d
	LEFT JOIN tblEmployee e ON d.depNum = e.depNum
	LEFT JOIN tblWorksOn w ON e.empSSN = w.empSSN
WHERE w.empSSN IS NULL;