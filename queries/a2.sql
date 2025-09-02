SELECT SportID, COUNT(EventID) AS NumberOfEvents
FROM Events
WHERE MONTH(Date) = 7 AND YEAR(Date) = 2023
GROUP BY SportID;