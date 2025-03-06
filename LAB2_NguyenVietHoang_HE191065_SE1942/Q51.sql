SELECT e.empSSN, e.empName, COUNT(dep.depName) AS [Number], SUM(w.workHours) AS [Total]
FROM tblEmployee e
LEFT JOIN tblWorksOn w ON e.empSSN = w.empSSN
LEFT JOIN tblDependent dep ON e.empSSN = dep.empSSN
GROUP BY e.empSSN, e.empName
HAVING COUNT(dep.depName) > 3