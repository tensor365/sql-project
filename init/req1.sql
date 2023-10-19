-- Create a database for flights
CREATE DATABASE IF NOT EXISTS FlightDatabase;

-- Use the newly created database
USE FlightDatabase;

-- Create a table to store information about airports
CREATE TABLE IF NOT EXISTS Airports (
    AirportCode CHAR(3) PRIMARY KEY,
    AirportName VARCHAR(255) NOT NULL,
    City VARCHAR(255),
    Country VARCHAR(255)
);

-- Create a table to store information about airlines
CREATE TABLE IF NOT EXISTS Airlines (
    AirlineCode CHAR(2) PRIMARY KEY,
    AirlineName VARCHAR(255) NOT NULL,
    IATA VARCHAR(2),
    ICAO CHAR(3),
    Country VARCHAR(255)
);

-- Create a table to store information about flights
CREATE TABLE IF NOT EXISTS Flights (
    FlightID INT AUTO_INCREMENT PRIMARY KEY,
    FlightNumber VARCHAR(10) NOT NULL,
    DepartureAirportCode CHAR(3),
    ArrivalAirportCode CHAR(3),
    AirlineCode CHAR(2),
    DepartureTime DATETIME,
    ArrivalTime DATETIME,
    Price DECIMAL(10, 2),
    CONSTRAINT fk_departure_airport FOREIGN KEY (DepartureAirportCode) REFERENCES Airports (AirportCode),
    CONSTRAINT fk_arrival_airport FOREIGN KEY (ArrivalAirportCode) REFERENCES Airports (AirportCode),
    CONSTRAINT fk_airline FOREIGN KEY (AirlineCode) REFERENCES Airlines (AirlineCode)
);