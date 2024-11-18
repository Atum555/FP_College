-- What are the names of the municipalities of the district with the higher number of voters?
-- Order ascendantly by the name of the municipality.

SELECT M.NAME
FROM MUNICIPALITIES M 
WHERE M.DISTRICT IN (
    SELECT P.DISTRICT
    FROM PARTICIPATIONS P
    ORDER BY P.VOTERS DESC
    LIMIT 1
)
ORDER BY M.NAME;
