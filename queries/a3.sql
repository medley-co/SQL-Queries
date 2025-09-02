SELECT C.CountryID, COUNT(M.AthleteID) AS NumberOfMedals
FROM Countries C
LEFT JOIN Athletes A ON C.CountryID = A.CountryID
LEFT JOIN Medals M ON A.AthleteID = M.AthleteID
GROUP BY C.CountryID;