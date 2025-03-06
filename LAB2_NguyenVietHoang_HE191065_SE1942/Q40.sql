SELECT e.empSSN, e.empName, dm.depName
FROM tblEmployee e
	LEFT JOIN tblDependent dd ON dd.empSSN = e.empSSN
	JOIN tblDepartment dm ON dm.depNum = e.depNum
GROUP BY e.empSSN, e.empName, dm.depName
HAVING COUNT(dd.depName) = 0
