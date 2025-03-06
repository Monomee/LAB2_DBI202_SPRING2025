SELECT d.depNum, d.depName
FROM tblDepartment d
WHERE d.depNum NOT IN (
    SELECT DISTINCT e.depNum
    FROM tblEmployee e
    JOIN tblWorksOn w ON e.empSSN = w.empSSN
    JOIN tblProject p ON w.proNum = p.proNum
    WHERE p.proName = 'ProjectA'
)