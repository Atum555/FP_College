-- What were the parties that did not compete in the district of Lisboa? List the acronym and designation, in increasing order of the acronym.

SELECT P.ACRONYM, P.DESIGNATION
FROM PARTIES P
WHERE P.ACRONYM NOT IN
    (
    SELECT L.PARTY
    FROM DISTRICTS D
    JOIN LISTS L ON L.DISTRICT = D.CODE
    WHERE D.name = 'Lisboa'
    )
ORDER BY P.ACRONYM ASC;
