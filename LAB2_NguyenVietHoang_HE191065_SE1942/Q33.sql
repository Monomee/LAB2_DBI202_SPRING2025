SELECT dm.depNum, dm.depName, COUNT(l.locNum) AS 'Total'
FROM tblLocation l 
	JOIN tblDepLocation dl ON dl.locNum = l.locNum
	JOIN tblDepartment dm ON dm.depNum = dl.depNum
GROUP BY dm.depNum, dm.depName