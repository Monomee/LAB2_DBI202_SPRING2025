SELECT e.empName, dd.depName, dd.depRelationship
FROM tblDependent dd
	JOIN tblEmployee e ON e.empSSN = dd.empSSN
	JOIN tblDepartment dm ON dm.depNum = e.depNum
WHERE YEAR(GETDATE()) - YEAR(dd.depBirthdate) > 18 AND dm.depName = N'Phòng Nghiên cứu và phát triển'