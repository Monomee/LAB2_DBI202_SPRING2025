SELECT empSSN, empName
FROM tblEmployee
WHERE empSSN IN (SELECT supervisorSSN FROM tblEmployee WHERE empName = N'Mai Duy An')