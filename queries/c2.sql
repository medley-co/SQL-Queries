ALTER TABLE Events
ADD CHECK (TicketPrice >= 10 AND TicketPrice <=1000);

SELECT TicketPrice
FROM Events;