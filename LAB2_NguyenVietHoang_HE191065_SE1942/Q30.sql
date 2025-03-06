SELECT p.proNum, p.proName, SUM(w.workHours) AS 'Total'
FROM tblProject p
	JOIN tblWorksOn w ON w.proNum = p.proNum
	JOIN tblEmployee e ON e.empSSN = w.empSSN
GROUP BY p.proNum, p.proName
HAVING SUM(w.workHours) IN
(SELECT TOP 1 SUM(w.workHours) AS 'TempTotal'
FROM tblProject p
	JOIN tblWorksOn w ON w.proNum = p.proNum
	JOIN tblEmployee e ON e.empSSN = w.empSSN
GROUP BY p.proNum, p.proName
ORDER BY TempTotal)
