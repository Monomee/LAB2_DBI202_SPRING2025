SELECT e.empSSN, e.empName, e.depNum, dm.depName
FROM tblDepartment dm
	JOIN tblEmployee e ON e.depNum = dm.depNum
WHERE dm.depName = N'Phòng Nghiên cứu và phát triển'
