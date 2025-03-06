SELECT dd.depName, dd.depBirthdate, dd.depRelationship, e.empName
FROM tblDependent dd
	JOIN tblEmployee e ON e.empSSN = dd.empSSN
WHERE YEAR(GETDATE()) - YEAR(dd.depBirthdate) > 18