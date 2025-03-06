SELECT d.depNum, d.depName
FROM tblDepartment d
	LEFT JOIN tblEmployee e ON d.depNum = e.depNum
	LEFT JOIN tblDependent dep ON e.empSSN = dep.empSSN
WHERE dep.empSSN IS NULL;