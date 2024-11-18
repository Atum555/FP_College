-- How many seats obtained each party on the district of the parish of Mancelos, in decreasing order of the number of seats? List the acronym and the number of seats.

SELECT L.party, L.seats
FROM Parishes P 
JOIN Municipalities M ON P.municipality = M.code
JOIN Districts D ON M.district = D.code
JOIN Lists L ON D.code = L.district
WHERE P.name = 'Mancelos'
ORDER BY L.seats DESC;
