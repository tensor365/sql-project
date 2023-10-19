SELECT
    F.FlightNumber,
    D.AirportName AS DepartureAirport,
    A.AirportName AS ArrivalAirport,
    AL.AirlineName
FROM Flights F
INNER JOIN Airports D ON F.DepartureAirportCode = D.AirportCode
INNER JOIN Airports A ON F.ArrivalAirportCode = A.AirportCode
INNER JOIN Airlines AL ON F.AirlineCode = AL.AirlineCode;