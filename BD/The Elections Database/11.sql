-- How many votes had each party per district? List the code of the district, the name of the district, the acronym of the party and the number of votes, named 'VOTES'.
-- Order ascendantly on the code of the district and the acronym of the party.

SELECT D.CODE, D.NAME, V.PARTY, SUM(V.VOTES) AS VOTES
FROM DISTRICTS D
JOIN MUNICIPALITIES M ON M.DISTRICT = D.CODE
JOIN PARISHES P ON P.MUNICIPALITY = M.CODE
JOIN VOTINGS V ON V.PARISH = P.CODE
GROUP BY D.CODE, V.PARTY
ORDER BY D.CODE, V.PARTY;
