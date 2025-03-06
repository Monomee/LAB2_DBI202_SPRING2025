SELECT empSSN, empName
FROM tblEmployee
WHERE supervisorSSN IN (SELECT empSSN
						FROM tblEmployee
						WHERE empName = N'Mai Duy An')
