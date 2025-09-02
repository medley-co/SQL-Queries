CREATE VIEW ExpensiveSportCounts AS
SELECT S.SportID, COUNT(*) AS ExpensiveEventCount
FROM Sports S
JOIN Events E ON S.SportID = E.SportID
WHERE E.TicketPrice > 100
GROUP BY S.SportID;

SELECT DISTINCT A.AthleteName
FROM Athletes A
JOIN Medals M ON A.AthleteID = M.AthleteID
JOIN Events E ON M.EventID = E.EventID
JOIN ExpensiveSportCounts ES ON E.SportID = ES.SportID
WHERE ES.ExpensiveEventCount >= 3;