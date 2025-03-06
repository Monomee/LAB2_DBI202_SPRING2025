SELECT e.empSSN, e.empName, SUM(w.workHours) AS [Total]
FROM tblEmployee e
JOIN tblWorksOn w ON e.empSSN = w.empSSN
JOIN tblEmployee m ON e.supervisorSSN = m.empSSN
WHERE m.empName = 'Mai Duy An'
GROUP BY e.empSSN, e.empName