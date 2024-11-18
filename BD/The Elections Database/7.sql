-- What are the parishes of region 'M' where the party 'PSN' obtained zero votes? List the code and name of the parish, in ascending order on the code.

SELECT P.code, P.name
FROM Districts D
JOIN Municipalities M ON M.district = D.code
JOIN Parishes P ON P.municipality = M.code
JOIN Votings V ON V.parish = P.code
WHERE D.region='M' and V.votes=0 and V.party='PSN'
ORDER BY P.code ASC;
