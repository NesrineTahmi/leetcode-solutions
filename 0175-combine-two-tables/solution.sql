SELECT p.firstname, p.lastname, a.city, a.state
FROM Person AS p
LEFT OUTER JOIN Address AS a
ON p.personId = a.personId
