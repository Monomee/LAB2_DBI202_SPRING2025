SELECT d.depNum, d.depName, COUNT(p.proNum) AS 'Number'
FROM tblDepartment d
	LEFT JOIN tblProject p ON d.depNum = p.depNum
GROUP BY d.depNum, d.depName