SELECT d.depNum, d.depName, COUNT(p.proNum) AS [Number]
FROM tblDepartment d
LEFT JOIN tblProject p ON d.depNum = p.depNum
GROUP BY d.depNum, d.depName
HAVING COUNT(p.proNum) IN (
    SELECT TOP 1 COUNT(p.proNum) AS TempTotal
    FROM tblDepartment d
    LEFT JOIN tblProject p ON d.depNum = p.depNum
    GROUP BY d.depNum, d.depName
    ORDER BY TempTotal DESC
)