SELECT e.empSSN, e.empName, SUM(w.workHours) AS [Total]
FROM tblEmployee e
LEFT JOIN tblWorksOn w ON e.empSSN = w.empSSN
LEFT JOIN tblDependent dep ON e.empSSN = dep.empSSN
WHERE dep.empSSN IS NULL
GROUP BY e.empSSN, e.empName