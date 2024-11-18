-- What were the results obtained by each party in the parish of Mancelos? List the acronym of each party and the number of votes it got, descending on the number of votes and ascendingly by acronym.

--SELECT party, votes
--FROM Votings, Parishes
--WHERE name="Mancelos" and code=parish
--ORDER BY votes DESC, parish;
SELECT V.party, V.votes
FROM Votings V JOIN Parishes P on V.parish = P.code
WHERE P.name="Mancelos"
ORDER BY V.votes DESC, V.party ASC;
