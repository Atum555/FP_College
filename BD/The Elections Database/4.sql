-- What is the code and the name of the district of the parish of Mancelos?

SELECT D.code, D.name
FROM Parishes P 
JOIN Municipalities M ON P.municipality = M.code
JOIN Districts D ON M.district = D.code
WHERE P.name = 'Mancelos';  
