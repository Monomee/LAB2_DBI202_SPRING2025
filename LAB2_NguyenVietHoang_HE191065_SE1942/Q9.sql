SELECT dd.depName, dd.depBirthdate, e.empName
FROM tblDependent dd
	JOIN tblEmployee e ON e.empSSN = dd.empSSN
WHERE dd.depSex = 'M'