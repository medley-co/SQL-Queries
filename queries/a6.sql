SELECT AthleteName, Age
FROM Athletes
WHERE Age = (
    SELECT MIN(Age)
    FROM Athletes
    WHERE CountryID = (
        SELECT CountryID
        FROM Countries
        WHERE CountryName = 'Australia'));