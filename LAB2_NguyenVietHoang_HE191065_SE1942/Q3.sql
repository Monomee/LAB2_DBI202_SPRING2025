SELECT p.proNum, p.proName, d.depName
FROM tblProject p
JOIN tblDepartment d ON p.depNum = d.depNum
WHERE p.proName = 'ProjectB';