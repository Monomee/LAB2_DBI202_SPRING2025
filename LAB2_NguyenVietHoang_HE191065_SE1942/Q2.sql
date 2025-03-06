SELECT p.proNum, p.proName, d.depName
FROM tblProject p
JOIN tblDepartment d ON p.depNum = d.depNum
WHERE d.depName = 'Phòng Nghiên cứu và phát triển'