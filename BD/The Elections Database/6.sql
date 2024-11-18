-- List the district name, the number of voters and the number of abstentions, but only in the case where the number of abstentions in the district is higher than 75% of the number of voters. Order by district name.

SELECT D.name, P.voters, P.abstentions
FROM Districts D
JOIN Participations P ON P.district = D.code
WHERE P.abstentions > (0.75 * P.voters)
ORDER BY D.name;
