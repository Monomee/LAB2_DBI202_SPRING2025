SELECT e.empName, dd.depName, dd.depRelationship
FROM tblDependent dd
	JOIN tblEmployee e ON e.empSSN = dd.empSSN
	JOIN tblDepartment dm ON dm.depNum = e.depNum
WHERE dd.depSex = 'F' AND dm.depName = N'Phòng Nghiên cứu và phát triển'