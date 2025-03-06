SELECT l.locNum, l.locName
FROM tblLocation l
	JOIN tblProject p ON p.locNum = l.locNum
WHERE p.proName = 'ProjectA'
