SELECT l.locName, COUNT(dl.depNum) AS 'Total'
FROM tblLocation l 
	JOIN tblDepLocation dl ON dl.locNum = l.locNum
	JOIN tblDepartment dm ON dm.depNum = dl.depNum
GROUP BY l.locName
HAVING COUNT(dl.depNum) IN
(SELECT TOP 1 COUNT(dl.depNum) AS 'TempTotal'
FROM tblLocation l 
	JOIN tblDepLocation dl ON dl.locNum = l.locNum
	JOIN tblDepartment dm ON dm.depNum = dl.depNum
GROUP BY l.locName
ORDER BY TempTotal)