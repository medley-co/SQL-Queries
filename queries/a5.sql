SELECT CountryName
FROM Countries
WHERE CountryID IN (
    SELECT DISTINCT A.CountryID
    FROM Athletes A
    WHERE A.Age > 30);
