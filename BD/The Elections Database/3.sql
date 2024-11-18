-- What are the parishes of the municipality of Espinho? List the code and name of each parish, order ascendantly by the code.

SELECT P.code, P.name
FROM Parishes P JOIN Municipalities M on P.municipality = M.code 
WHERE M.name = "Espinho"
ORDER BY P.code;
