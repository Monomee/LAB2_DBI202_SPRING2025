SELECT p.proNum, p.proName, dm.depName
FROM tblLocation l
	JOIN tblProject p ON p.locNum = l.locNum
	JOIN tblDepartment dm ON dm.depNum = p.depNum
WHERE l.locName = N'TP Hồ Chí Minh'
