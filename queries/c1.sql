CREATE TABLE Venues (
    VenueID INT NOT NULL PRIMARY KEY,
    VenueName VARCHAR(255) NOT NULL,
    VenueType ENUM('Indoor', 'Outdoor', 'Covered') NOT NULL,
    CountryID INT NOT NULL,
    FOREIGN KEY (CountryID) REFERENCES Countries(CountryID));

SELECT *
FROM Venues;