SELECT d.depNum, d.depName, COUNT(e.empSSN) AS [Number], p.proName
FROM tblDepartment d
JOIN tblEmployee e ON d.depNum = e.depNum
JOIN tblProject p ON d.depNum = p.depNum
GROUP BY d.depNum, d.depName, p.proName
HAVING COUNT(e.empSSN) > 5;