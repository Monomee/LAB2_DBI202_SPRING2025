SELECT e.empSSN, e.empName, dm.depName
FROM tblEmployee e
	JOIN tblDepartment dm ON e.depNum = dm.depNum
	JOIN tblWorksOn w ON e.empSSN = w.empSSN
GROUP BY e.empSSN, e.empName, dm.depName
HAVING COUNT(w.proNum) >= 2;