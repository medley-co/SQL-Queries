UPDATE Events
SET TicketPrice = TicketPrice * 0.9 
WHERE SportID NOT IN (
    SELECT SportID
    FROM Sports
    WHERE SportName IN ('Basketball', 'Soccer'))
AND Date > CURDATE();