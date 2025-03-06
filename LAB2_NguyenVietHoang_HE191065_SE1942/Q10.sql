SELECT dm.depNum, dm.depName, l.locName
FROM tblDepLocation dl
	JOIN tblDepartment dm ON dm.depNum = dl.depNum
	JOIN tblLocation l ON l.locNum = dl.locNum
WHERE dm.depName = N'Phòng Nghiên cứu và phát triển'