-- Insert data into the Airports table
INSERT INTO Airports (AirportCode, AirportName, City, Country)
VALUES
    ('JFK', 'John F. Kennedy International Airport', 'New York', 'United States'),
    ('LAX', 'Los Angeles International Airport', 'Los Angeles', 'United States'),
    ('LHR', 'Heathrow Airport', 'London', 'United Kingdom'),
    ('CDG', 'Charles de Gaulle Airport', 'Paris', 'France');

-- Insert data into the Airlines table
INSERT INTO Airlines (AirlineCode, AirlineName, IATA, ICAO, Country)
VALUES
    ('AA', 'American Airlines', 'AA', 'AAL', 'United States'),
    ('DL', 'Delta Air Lines', 'DL', 'DAL', 'United States'),
    ('BA', 'British Airways', 'BA', 'BAW', 'United Kingdom'),
    ('AF', 'Air France', 'AF', 'AFR', 'France');

-- Insert data into the Flights table
INSERT INTO Flights (FlightNumber, DepartureAirportCode, ArrivalAirportCode, AirlineCode, DepartureTime, ArrivalTime, Price)
VALUES
    ('AA101', 'JFK', 'LAX', 'AA', '2023-10-20 08:00:00', '2023-10-20 12:00:00', 350.00),
    ('DL202', 'LAX', 'JFK', 'DL', '2023-10-21 09:30:00', '2023-10-21 13:30:00', 320.50),
    ('BA001', 'LHR', 'CDG', 'BA', '2023-10-22 10:15:00', '2023-10-22 12:30:00', 180.75),
    ('AF123', 'CDG', 'LHR', 'AF', '2023-10-23 11:45:00', '2023-10-23 14:00:00', 190.25);