-- How many votes had each party in each municipality?
-- List the code and name of the municipality, the acronym of the party and the number of votes (name this column VOTES), by increasing order on the code of the municipality and the acronym of the party. Show only the first 40 lines.

SELECT M.CODE, M.NAME, V.PARTY, SUM(V.VOTES) AS VOTES
FROM PARISHES P
JOIN MUNICIPALITIES M ON M.CODE = P.MUNICIPALITY
JOIN VOTINGS V ON V.PARISH = P.CODE
GROUP BY M.CODE, V.PARTY
ORDER BY M.CODE, V.PARTY
LIMIT 40;
