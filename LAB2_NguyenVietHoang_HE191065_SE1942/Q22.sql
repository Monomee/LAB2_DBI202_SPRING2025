SELECT e.empSSN, e.empName, SUM(w.workHours) AS 'Total'
FROM tblWorksOn w
	JOIN tblEmployee e ON e.empSSN = w.empSSN
GROUP BY e.empSSN, e.empName
HAVING SUM(w.workHours) IN (
SELECT TOP 1 SUM(w.workHours) AS 'TempTotal'
FROM tblWorksOn w
	JOIN tblEmployee e ON e.empSSN = w.empSSN
GROUP BY e.empSSN, e.empName
ORDER BY TempTotal
DESC
)