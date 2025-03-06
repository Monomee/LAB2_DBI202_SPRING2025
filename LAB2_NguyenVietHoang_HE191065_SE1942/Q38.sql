SELECT e.empSSN, e.empName, COUNT(dd.depName) AS 'Total'
FROM tblEmployee e
	LEFT JOIN tblDependent dd ON dd.empSSN = e.empSSN
GROUP BY e.empSSN, e.empName
HAVING COUNT(dd.depName) IN
(
SELECT TOP 1 COUNT(dd.depName) AS 'TempTotal'
FROM tblEmployee e
	LEFT JOIN tblDependent dd ON dd.empSSN = e.empSSN
GROUP BY e.empSSN, e.empName
ORDER BY TempTotal
DESC
)