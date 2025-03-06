SELECT p.proNum, p.proName
FROM tblProject p
	JOIN tblLocation l ON l.locNum = p.locNum
WHERE l.locName = N'TP Hồ Chí Minh'
