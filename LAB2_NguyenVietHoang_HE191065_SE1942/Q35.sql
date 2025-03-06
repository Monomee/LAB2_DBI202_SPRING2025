SELECT dm.depNum, dm.depName, COUNT(l.locNum) AS 'Total'
FROM tblLocation l 
	JOIN tblDepLocation dl ON dl.locNum = l.locNum
	JOIN tblDepartment dm ON dm.depNum = dl.depNum
GROUP BY dm.depNum, dm.depName
HAVING COUNT(l.locNum) IN
(SELECT TOP 1 COUNT(l.locNum) AS 'TempTotal'
FROM tblLocation l 
	JOIN tblDepLocation dl ON dl.locNum = l.locNum
	JOIN tblDepartment dm ON dm.depNum = dl.depNum
GROUP BY dm.depNum, dm.depName
ORDER BY TempTotal)
