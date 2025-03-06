SELECT l.locName, COUNT(dl.depNum) AS 'Total'
FROM tblLocation l 
	JOIN tblDepLocation dl ON dl.locNum = l.locNum
	JOIN tblDepartment dm ON dm.depNum = dl.depNum
GROUP BY l.locName