SELECT e.empSSN, e.empName
FROM tblEmployee e
JOIN tblDepartment d ON e.depNum = d.depNum
LEFT JOIN tblDependent dep ON e.empSSN = dep.empSSN
WHERE d.depName = 'Phòng nghiên cứu' AND dep.empSSN IS NULL;
