SELECT depRelationship, COUNT(depRelationship) AS 'Number'
FROM tblDependent
GROUP BY depRelationship
