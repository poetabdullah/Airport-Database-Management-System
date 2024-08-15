CREATE DATABASE AirportManagementSystem;



--Luggage Table
CREATE TABLE Luggage (
    LuggageID INT PRIMARY KEY,
	Type VARCHAR(255),
    Weight DECIMAL(10, 2)
);
--Data Population
INSERT INTO Luggage (LuggageID, Type, Weight)
VALUES
  (1, 'Carry-On', 12.5),
  (2, 'Checked', 25.0),
  (3, 'Carry-On', 15.0),
  (4, 'Checked', 30.0),
  (5, 'Carry-On', 10.0),
  (6, 'Checked', 22.0),
  (7, 'Carry-On', 18.0),
  (8, 'Checked', 28.5),
  (9, 'Carry-On', 14.0),
  (10, 'Checked', 27.0),
  (11, 'Carry-On', 11.5),
  (12, 'Checked', 24.0),
  (13, 'Carry-On', 16.0),
  (14, 'Checked', 32.0),
  (15, 'Carry-On', 13.5),
  (16, 'Checked', 26.0),
  (17, 'Carry-On', 20.0),
  (18, 'Checked', 35.0),
  (19, 'Carry-On', 17.0),
  (20, 'Checked', 29.5)
select * from Luggage
 
--Passenger Table
CREATE TABLE Passenger (
    PassengerID INT PRIMARY KEY,
	Name VARCHAR(255),
    PassportID VARCHAR(255),
    LuggageID INT,
    FOREIGN KEY (LuggageID) REFERENCES Luggage(LuggageID)
);
--Data Population
INSERT INTO Passenger (PassengerID, Name, PassportID, LuggageID)
VALUES
  (1, 'John Doe', 'AB123456', 1),
  (2, 'Jane Smith', 'CD789012', 2),
  (3, 'Alice Johnson', 'EF345678', 3),
  (4, 'Bob Wilson', 'GH901234', 4),
  (5, 'Emily Davis', 'IJ567890', 5),
  (6, 'Michael Brown', 'KL123456', 6),
  (7, 'Sophia Miller', 'MN789012', 7),
  (8, 'William White', 'OP345678', 8),
  (9, 'Olivia Harris', 'QR901234', 9),
  (10, 'James Jones', 'ST567890', 10),
  (11, 'Emma Taylor', 'UV123456', 11),
  (12, 'Daniel Davis', 'WX789012', 12),
  (13, 'Ava Wilson', 'YZ345678', 13),
  (14, 'Matthew Miller', 'AA901234', 14),
  (15, 'Grace White', 'BB567890', 15),
  (16, 'Christopher Harris', 'CC123456', 16),
  (17, 'Lily Jones', 'DD789012', 17),
  (18, 'Andrew Taylor', 'EE345678', 18),
  (19, 'Chloe Davis', 'FF901234', 19),
  (20, 'Ryan Harris', 'GG567890', 20)
select * from Passenger
 
--Passenger Contact Table
CREATE TABLE PassengerContact (
    P_Contact INT PRIMARY KEY,
    PassengerID INT,
    FOREIGN KEY (PassengerID) REFERENCES Passenger(PassengerID)
);
--Data Population
INSERT INTO PassengerContact (P_Contact, PassengerID)
VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7),
  (8, 8),
  (9, 9),
  (10, 10),
  (11, 11),
  (12, 12),
  (13, 13),
  (14, 14),
  (15, 15),
  (16, 16),
  (17, 17),
  (18, 18),
  (19, 19),
  (20, 20)
select * from PassengerContact
 
--Ticket Table
CREATE TABLE Ticket (
    TicketID INT PRIMARY KEY,
    TicketType VARCHAR(255),
    Price DECIMAL(10, 2),
    PurchaseDate DATE,
    PassengerID INT,
    FOREIGN KEY (PassengerID) REFERENCES Passenger(PassengerID)
);
--Data Population
INSERT INTO Ticket (TicketID, TicketType, Price, PurchaseDate, PassengerID)
VALUES
  (1, 'Economy', 200.00, '2023-05-15', 1),
  (2, 'Business', 400.00, '2023-05-16', 2),
  (3, 'First Class', 600.00, '2023-05-17', 3),
  (4, 'Economy', 250.00, '2023-05-18', 4),
  (5, 'Business', 500.00, '2023-05-19', 5),
  (6, 'First Class', 700.00, '2023-05-20', 6),
  (7, 'Economy', 300.00, '2023-05-21', 7),
  (8, 'Business', 550.00, '2023-05-22', 8),
  (9, 'First Class', 750.00, '2023-05-23', 9),
  (10, 'Economy', 220.00, '2023-05-24', 10),
  (11, 'Business', 480.00, '2023-05-25', 11),
  (12, 'First Class', 680.00, '2023-05-26', 12),
  (13, 'Economy', 270.00, '2023-05-27', 13),
  (14, 'Business', 520.00, '2023-05-28', 14),
  (15, 'First Class', 720.00, '2023-05-29', 15),
  (16, 'Economy', 320.00, '2023-05-30', 16),
  (17, 'Business', 580.00, '2023-05-31', 17),
  (18, 'First Class', 780.00, '2023-06-01', 18),
  (19, 'Economy', 240.00, '2023-06-02', 19),
  (20, 'Business', 460.00, '2023-06-03', 20);
select * from Ticket
 
--Flight Table
CREATE TABLE Flight (
    FlightID INT PRIMARY KEY,
    DepartureTime DATETIME,
    ArrivalTime DATETIME,
    TicketID INT,
    FOREIGN KEY (TicketID) REFERENCES Ticket(TicketID)
);
--Data Population
INSERT INTO Flight (FlightID, DepartureTime, ArrivalTime, TicketID)
VALUES
  (1, '2024-01-09 10:00:00', '2024-01-09 12:00:00', 1),
  (2, '2024-01-10 14:30:00', '2024-01-10 16:30:00', 2),
  (3, '2024-01-11 08:00:00', '2024-01-11 10:00:00', 3),
  (4, '2024-01-12 16:00:00', '2024-01-12 18:00:00', 4),
  (5, '2024-01-13 12:30:00', '2024-01-13 14:30:00', 5),
  (6, '2024-01-14 09:45:00', '2024-01-14 11:45:00', 6),
  (7, '2024-01-15 17:30:00', '2024-01-15 19:30:00', 7),
  (8, '2024-01-16 13:15:00', '2024-01-16 15:15:00', 8),
  (9, '2024-01-17 11:00:00', '2024-01-17 13:00:00', 9),
  (10, '2024-01-18 18:45:00', '2024-01-18 20:45:00', 10),
  (11, '2024-01-19 14:20:00', '2024-01-19 16:20:00', 11),
  (12, '2024-01-20 10:05:00', '2024-01-20 12:05:00', 12),
  (13, '2024-01-21 15:45:00', '2024-01-21 17:45:00', 13),
  (14, '2024-01-22 11:30:00', '2024-01-22 13:30:00', 14),
  (15, '2024-01-23 19:15:00', '2024-01-23 21:15:00', 15),
  (16, '2024-01-24 15:00:00', '2024-01-24 17:00:00', 16),
  (17, '2024-01-25 10:35:00', '2024-01-25 12:35:00', 17),
  (18, '2024-01-26 18:20:00', '2024-01-26 20:20:00', 18),
  (19, '2024-01-27 14:05:00', '2024-01-27 16:05:00', 19),
  (20, '2024-01-28 09:50:00', '2024-01-28 11:50:00', 20)
select * from Flight
 
--Security Table
CREATE TABLE Security (
    SecurityID INT PRIMARY KEY,
	Name VARCHAR(255),
    SecurityDepartment VARCHAR(255),
    AllocatedArea VARCHAR(255)
);
--Data Population
INSERT INTO Security (SecurityID, Name, SecurityDepartment, AllocatedArea)
VALUES
  (1, 'Security A', 'Department A', 'Area A'),
  (2, 'Security B', 'Department B', 'Area B'),
  (3, 'Security C', 'Department C', 'Area C'),
  (4, 'Security D', 'Department D', 'Area D'),
  (5, 'Security E', 'Department E', 'Area E'),
  (6, 'Security F', 'Department F', 'Area F'),
  (7, 'Security G', 'Department G', 'Area G'),
  (8, 'Security H', 'Department H', 'Area H'),
  (9, 'Security I', 'Department I', 'Area I'),
  (10, 'Security J', 'Department J', 'Area J'),
  (11, 'Security K', 'Department K', 'Area K'),
  (12, 'Security L', 'Department L', 'Area L'),
  (13, 'Security M', 'Department M', 'Area M'),
  (14, 'Security N', 'Department N', 'Area N'),
  (15, 'Security O', 'Department O', 'Area O'),
  (16, 'Security P', 'Department P', 'Area P'),
  (17, 'Security Q', 'Department Q', 'Area Q'),
  (18, 'Security R', 'Department R', 'Area R'),
  (19, 'Security S', 'Department S', 'Area S'),
  (20, 'Security T', 'Department T', 'Area T');
select * from Security
 
--Traffic Control Table
CREATE TABLE TrafficControl (
    TrafficControlID INT PRIMARY KEY,
	Name VARCHAR(255),
    TowerNo INT,
    TowerName VARCHAR(255)
);
--Data Population
INSERT INTO TrafficControl (TrafficControlID, Name, TowerNo, TowerName)
VALUES
  (1, 'Control A', 1, 'Tower A'),
  (2, 'Control B', 2, 'Tower B'),
  (3, 'Control C', 3, 'Tower C'),
  (4, 'Control D', 4, 'Tower D'),
  (5, 'Control E', 5, 'Tower E'),
  (6, 'Control F', 6, 'Tower F'),
  (7, 'Control G', 7, 'Tower G'),
  (8, 'Control H', 8, 'Tower H'),
  (9, 'Control I', 9, 'Tower I'),
  (10, 'Control J', 10, 'Tower J'),
  (11, 'Control K', 11, 'Tower K'),
  (12, 'Control L', 12, 'Tower L'),
  (13, 'Control M', 13, 'Tower M'),
  (14, 'Control N', 14, 'Tower N'),
  (15, 'Control O', 15, 'Tower O'),
  (16, 'Control P', 16, 'Tower P'),
  (17, 'Control Q', 17, 'Tower Q'),
  (18, 'Control R', 18, 'Tower R'),
  (19, 'Control S', 19, 'Tower S'),
  (20, 'Control T', 20, 'Tower T');
select * from TrafficControl
 
--Feuling Station Table
CREATE TABLE FuelingStation (
    FuelingStationID INT PRIMARY KEY,
	Name VARCHAR(255),
    Capacity INT,
    AircraftsAttended INT,
    FuelType VARCHAR(255)
);
--Data Population
INSERT INTO FuelingStation (FuelingStationID, Name, Capacity, AircraftsAttended, FuelType)
VALUES
  (1, 'Fuel Station A', 50000, 5, 'Jet-A'),
  (2, 'Fuel Station B', 60000, 6, 'AVGAS'),
  (3, 'Fuel Station C', 70000, 7, 'Jet-A'),
  (4, 'Fuel Station D', 80000, 8, 'AVGAS'),
  (5, 'Fuel Station E', 90000, 9, 'Jet-A'),
  (6, 'Fuel Station F', 100000, 10, 'AVGAS'),
  (7, 'Fuel Station G', 110000, 11, 'Jet-A'),
  (8, 'Fuel Station H', 120000, 12, 'AVGAS'),
  (9, 'Fuel Station I', 130000, 13, 'Jet-A'),
  (10, 'Fuel Station J', 140000, 14, 'AVGAS'),
  (11, 'Fuel Station K', 150000, 15, 'Jet-A'),
  (12, 'Fuel Station L', 160000, 16, 'AVGAS'),
  (13, 'Fuel Station M', 170000, 17, 'Jet-A'),
  (14, 'Fuel Station N', 180000, 18, 'AVGAS'),
  (15, 'Fuel Station O', 190000, 19, 'Jet-A'),
  (16, 'Fuel Station P', 200000, 20, 'AVGAS'),
  (17, 'Fuel Station Q', 210000, 21, 'Jet-A'),
  (18, 'Fuel Station R', 220000, 22, 'AVGAS'),
  (19, 'Fuel Station S', 230000, 23, 'Jet-A'),
  (20, 'Fuel Station T', 240000, 24, 'AVGAS');
select * from FuelingStation
 
--Airport Runway Table
CREATE TABLE AirportRunway (
    RunwayID INT PRIMARY KEY,
    Length INT,
    LightingSystems VARCHAR(255)
);
--Data Population
INSERT INTO AirportRunway (RunwayID, Length, LightingSystems)
VALUES
  (1, 8000, 'High-Intensity'),
  (2, 9000, 'Medium-Intensity'),
  (3, 10000, 'Low-Intensity'),
  (4, 8500, 'High-Intensity'),
  (5, 9500, 'Medium-Intensity'),
  (6, 11000, 'Low-Intensity'),
  (7, 8200, 'High-Intensity'),
  (8, 9300, 'Medium-Intensity'),
  (9, 10500, 'Low-Intensity'),
  (10, 8700, 'High-Intensity'),
  (11, 9700, 'Medium-Intensity'),
  (12, 11500, 'Low-Intensity'),
  (13, 8800, 'High-Intensity'),
  (14, 9200, 'Medium-Intensity'),
  (15, 10700, 'Low-Intensity'),
  (16, 8900, 'High-Intensity'),
  (17, 9400, 'Medium-Intensity'),
  (18, 11200, 'Low-Intensity'),
  (19, 9200, 'High-Intensity'),
  (20, 9900, 'Medium-Intensity');
select * from AirportRunway
 
--Airport Table
CREATE TABLE Airport (
    AirportID INT PRIMARY KEY,
	Name VARCHAR(255),
    Location VARCHAR(255),
    AirportType VARCHAR(255),
    FlightID INT,
    SecurityID INT,
    TrafficControlID INT,
    FuelingStationID INT,
    RunwayID INT,
    FOREIGN KEY (FlightID) REFERENCES Flight(FlightID),
    FOREIGN KEY (SecurityID) REFERENCES Security(SecurityID),
    FOREIGN KEY (TrafficControlID) REFERENCES TrafficControl(TrafficControlID),
    FOREIGN KEY (FuelingStationID) REFERENCES FuelingStation(FuelingStationID),
    FOREIGN KEY (RunwayID) REFERENCES AirportRunway(RunwayID)
);
--Data Population
INSERT INTO Airport (AirportID, Name, Location, AirportType, FlightID, SecurityID, TrafficControlID, FuelingStationID, RunwayID)
VALUES
  (1, 'International Airport', 'City A', 'International', 1, 1, 1, 1, 1),
  (2, 'Domestic Airport', 'City B', 'Domestic', 2, 2, 2, 2, 2),
  (3, 'Regional Airport', 'City C', 'Regional', 3, 3, 3, 3, 3),
  (4, 'Private Airport', 'City D', 'Private', 4, 4, 4, 4, 4),
  (5, 'Major Airport', 'City E', 'International', 5, 5, 5, 5, 5),
  (6, 'City Airport', 'City F', 'Domestic', 6, 6, 6, 6, 6),
  (7, 'Capital Airport', 'City G', 'International', 7, 7, 7, 7, 7),
  (8, 'Skyport', 'City H', 'Domestic', 8, 8, 8, 8, 8),
  (9, 'Aero Hub', 'City I', 'International', 9, 9, 9, 9, 9),
  (10, 'Air Base', 'City J', 'Military', 10, 10, 10, 10, 10),
  (11, 'Gateway Airport', 'City K', 'International', 11, 11, 11, 11, 11),
  (12, 'Sunset Airfield', 'City L', 'Private', 12, 12, 12, 12, 12),
  (13, 'Metro Airport', 'City M', 'Domestic', 13, 13, 13, 13, 13),
  (14, 'Eagle Landing', 'City N', 'Regional', 14, 14, 14, 14, 14),
  (15, 'Harbor Skyport', 'City O', 'International', 15, 15, 15, 15, 15),
  (16, 'Silver Wings', 'City P', 'Domestic', 16, 16, 16, 16, 16),
  (17, 'Panorama Airport', 'City Q', 'International', 17, 17, 17, 17, 17),
  (18, 'Golden Fields', 'City R', 'Domestic', 18, 18, 18, 18, 18),
  (19, 'Air Haven', 'City S', 'International', 19, 19, 19, 19, 19),
  (20, 'Central Skyport', 'City T', 'Domestic', 20, 20, 20, 20, 20)
select * from Airport
 
--Airline Table
CREATE TABLE Airline (
    AirlineID INT PRIMARY KEY,
    AirlineName VARCHAR(255),
    AirlineType VARCHAR(255),
    AirlineStatus VARCHAR(255),
    FlightID INT,
    FOREIGN KEY (FlightID) REFERENCES Flight(FlightID)
);
--Data Population
INSERT INTO Airline (AirlineID, AirlineName, AirlineType, AirlineStatus, FlightID)
VALUES
  (1, 'Airline A', 'International', 'Active', 1),
  (2, 'Airline B', 'Domestic', 'Active', 2),
  (3, 'Airline C', 'Regional', 'Inactive', 3),
  (4, 'Airline D', 'Private', 'Active', 4),
  (5, 'Airline E', 'Domestic', 'Active', 5),
  (6, 'Airline F', 'International', 'Inactive', 6),
  (7, 'Airline G', 'Private', 'Active', 7),
  (8, 'Airline H', 'Regional', 'Active', 8),
  (9, 'Airline I', 'International', 'Inactive', 9),
  (10, 'Airline J', 'Domestic', 'Active', 10),
  (11, 'Airline K', 'Private', 'Active', 11),
  (12, 'Airline L', 'International', 'Inactive', 12),
  (13, 'Airline M', 'Regional', 'Active', 13),
  (14, 'Airline N', 'Domestic', 'Active', 14),
  (15, 'Airline O', 'Private', 'Active', 15),
  (16, 'Airline P', 'International', 'Inactive', 16),
  (17, 'Airline Q', 'Regional', 'Active', 17),
  (18, 'Airline R', 'Domestic', 'Active', 18),
  (19, 'Airline S', 'Private', 'Active', 19),
  (20, 'Airline T', 'International', 'Inactive', 20);
select * from Airline
 
--Passenger Security Association Table
CREATE TABLE PassengerSecurityAssociation (
    PassengerID INT,
    SecurityID INT,
    CheckDateTime DATETIME,
    Status VARCHAR(255),
    PRIMARY KEY (PassengerID, SecurityID),
    FOREIGN KEY (PassengerID) REFERENCES Passenger(PassengerID),
    FOREIGN KEY (SecurityID) REFERENCES Security(SecurityID)
);
--Data Population
INSERT INTO PassengerSecurityAssociation (PassengerID, SecurityID, CheckDateTime, Status)
VALUES
  (1, 1, '2023-05-15 08:00:00', 'Clear'),
  (2, 2, '2023-05-16 10:30:00', 'Clear'),
  (3, 3, '2023-05-17 12:45:00', 'Pending'),
  (4, 4, '2023-05-18 14:15:00', 'Clear'),
  (5, 5, '2023-05-19 16:30:00', 'Pending'),
  (6, 6, '2023-05-20 18:45:00', 'Clear'),
  (7, 7, '2023-05-21 20:00:00', 'Pending'),
  (8, 8, '2023-05-22 22:15:00', 'Clear'),
  (9, 9, '2023-05-23 23:30:00', 'Pending'),
  (10, 10, '2023-05-24 01:45:00', 'Clear'),
  (11, 11, '2023-05-25 03:00:00', 'Clear'),
  (12, 12, '2023-05-26 05:15:00', 'Pending'),
  (13, 13, '2023-05-27 07:30:00', 'Clear'),
  (14, 14, '2023-05-28 09:45:00', 'Pending'),
  (15, 15, '2023-05-29 11:00:00', 'Clear'),
  (16, 16, '2023-05-30 13:15:00', 'Pending'),
  (17, 17, '2023-05-31 15:30:00', 'Clear'),
  (18, 18, '2023-06-01 17:45:00', 'Pending'),
  (19, 19, '2023-06-02 20:00:00', 'Clear'),
  (20, 20, '2023-06-03 22:15:00', 'Pending');
select * from PassengerSecurityAssociation
 
--Pilot Table
CREATE TABLE Pilot (
    PilotID INT PRIMARY KEY,
	Name VARCHAR(255),
    HoursExperience INT,
    LicenseNo VARCHAR(255),
    AircraftAllowed VARCHAR(255)
);
--Data Population
INSERT INTO Pilot (PilotID, Name, HoursExperience, LicenseNo, AircraftAllowed)
VALUES
  (1, 'John Smith', 1500, 'PL12345', 'Boeing 737'),
  (2, 'Jane Doe', 2000, 'PL67890', 'Airbus A320'),
  (3, 'Michael Johnson', 1800, 'PL34567', 'Boeing 747'),
  (4, 'Emily White', 1200, 'PL89012', 'Cessna 172'),
  (5, 'David Brown', 2500, 'PL45678', 'Bombardier Challenger 300'),
  (6, 'Emma Wilson', 1600, 'PL12346', 'Airbus A380'),
  (7, 'Andrew Miller', 2200, 'PL67891', 'Boeing 777'),
  (8, 'Olivia Davis', 1900, 'PL23456', 'Embraer E175'),
  (9, 'William Taylor', 1400, 'PL78901', 'Cessna Citation X'),
  (10, 'Sophia Anderson', 2600, 'PL34567', 'Gulfstream G650'),
  (11, 'Liam Harris', 1700, 'PL89012', 'Airbus A330'),
  (12, 'Ava Clark', 2100, 'PL12347', 'Boeing 787'),
  (13, 'Daniel Martin', 1300, 'PL67892', 'Cessna 208 Caravan'),
  (14, 'Isabella Hall', 2400, 'PL23457', 'Bombardier Global 6000'),
  (15, 'Jackson Adams', 2000, 'PL78902', 'Embraer Phenom 300'),
  (16, 'Mia Turner', 1800, 'PL34568', 'Airbus A350'),
  (17, 'Logan Walker', 1500, 'PL90123', 'Boeing 767'),
  (18, 'Sophie Baker', 1700, 'PL12348', 'Cirrus SR22'),
  (19, 'Samuel Cooper', 2100, 'PL56789', 'Airbus A319'),
  (20, 'Chloe Nelson', 2300, 'PL23458', 'Boeing 757');
select * from Pilot
 
--Pilot Flight Association Table
CREATE TABLE PilotFlightAssociation (
    PilotID INT,
    FlightID INT,
    PRIMARY KEY (PilotID, FlightID),
    FOREIGN KEY (PilotID) REFERENCES Pilot(PilotID),
    FOREIGN KEY (FlightID) REFERENCES Flight(FlightID)
);
--Data Population
INSERT INTO PilotFlightAssociation (PilotID, FlightID)
VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7),
  (8, 8),
  (9, 9),
  (10, 10),
  (11, 11),
  (12, 12),
  (13, 13),
  (14, 14),
  (15, 15),
  (16, 16),
  (17, 17),
  (18, 18),
  (19, 19),
  (20, 20);
select * from PilotFlightAssociation
 
--Flight Fueling Station Association Table
CREATE TABLE FlightFuelingStationAssociation (
    FlightID INT,
    FuelingStationID INT,
    PRIMARY KEY (FlightID, FuelingStationID),
    FOREIGN KEY (FlightID) REFERENCES Flight(FlightID),
    FOREIGN KEY (FuelingStationID) REFERENCES FuelingStation(FuelingStationID)
);
--Data Population
INSERT INTO FlightFuelingStationAssociation (FlightID, FuelingStationID)
VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7),
  (8, 8),
  (9, 9),
  (10, 10),
  (11, 11),
  (12, 12),
  (13, 13),
  (14, 14),
  (15, 15),
  (16, 16),
  (17, 17),
  (18, 18),
  (19, 19),
  (20, 20);
select * from FlightFuelingStationAssociation

-- Indexes:

-- Create a nonclustered index on the Flight table for DepartureTime
CREATE NONCLUSTERED INDEX IX_NonClusteredFlightIndex
ON Flight (DepartureTime);


-- Create a nonclustered index on the Luggage table
CREATE NONCLUSTERED INDEX IX_NonClusteredLuggageIndex
ON Luggage (Weight)
WHERE Weight <= 50;


-- Create a nonclustered index on the Pilot table
CREATE NONCLUSTERED INDEX IX_NonClusteredPilotIndex
ON Pilot (HoursExperience);

-- Create a nonclustered index on the Ticket table
CREATE NONCLUSTERED INDEX IX_NonClusteredTicketIndex
ON Ticket (Price);

-- Create a nonclustered index on the FuelingStation table
CREATE NONCLUSTERED INDEX IX_NonClusteredFuelingStationIndex
ON FuelingStation (Capacity, AircraftsAttended);

-- Views:

CREATE VIEW PassengerTicketView AS
SELECT
    P.PassengerID,
    P.Name AS PassengerName,
    P.PassportID,
    L.Type AS LuggageType,
    L.Weight AS LuggageWeight,
    T.TicketType,
    T.Price AS TicketPrice,
    T.PurchaseDate
FROM
    Passenger P
JOIN Luggage L ON P.LuggageID = L.LuggageID
JOIN Ticket T ON P.PassengerID = T.PassengerID;

SELECT * FROM PassengerTicketView;


-- Create the view
CREATE VIEW PilotScheduleView
AS
SELECT
    P.PilotID,
    P.Name AS PilotName,
    P.HoursExperience,
    P.LicenseNo,
    P.AircraftAllowed,
    AF.FlightID,
    AF.DepartureTime AS NextShiftDepartureTime,
    AF.ArrivalTime AS NextShiftArrivalTime,
    A.AirlineName
FROM
    Pilot AS P
JOIN
    PilotFlightAssociation AS PFA ON P.PilotID = PFA.PilotID
JOIN
    Flight AS F ON PFA.FlightID = F.FlightID
JOIN
    Airline AS A ON F.FlightID = A.FlightID
CROSS APPLY (
    SELECT TOP 1
        AF2.FlightID,
        AF2.DepartureTime,
        AF2.ArrivalTime
    FROM
        PilotFlightAssociation AS PFA2
    JOIN
        Flight AS AF2 ON PFA2.FlightID = AF2.FlightID
    WHERE
        PFA2.PilotID = P.PilotID
        AND AF2.DepartureTime > GETDATE() -- Next shift's departure time is in the future
    ORDER BY
        AF2.DepartureTime
) AS AF
WHERE
    AF.FlightID IS NOT NULL;

	SELECT * FROM PilotScheduleView;


-- Create the view
CREATE VIEW RunwayOccupancyView
AS
SELECT
    R.RunwayID,
    R.Length,
    R.LightingSystems,
    F.FlightID,
    F.DepartureTime,
    F.ArrivalTime,
    CASE
        WHEN F.DepartureTime IS NOT NULL AND F.ArrivalTime IS NULL THEN 'Departure'
        WHEN F.DepartureTime IS NULL AND F.ArrivalTime IS NOT NULL THEN 'Arrival'
        ELSE 'Unknown'
    END AS OperationType,
    CASE
        WHEN F.DepartureTime IS NOT NULL AND F.ArrivalTime IS NULL THEN 'Occupied'
        WHEN F.DepartureTime IS NULL AND F.ArrivalTime IS NOT NULL THEN 'Occupied'
        ELSE 'Free'
    END AS RunwayStatus
FROM
    AirportRunway AS R
LEFT JOIN
    Airport AS AP ON R.RunwayID = AP.RunwayID
LEFT JOIN
    Flight AS F ON AP.FlightID = F.FlightID;

	SELECT * FROM RunwayOccupancyView;



-- Create the view without dbo schema
CREATE VIEW FuelingStationUsageView
AS
SELECT
    FS.FuelingStationID,
    FS.Name AS FuelingStationName,
    COUNT(DISTINCT FSA.FlightID) AS FlightsAttended,
    FS.FuelType AS FuelSoldType
FROM
    FlightFuelingStationAssociation AS FSA
JOIN
    FuelingStation AS FS ON FSA.FuelingStationID = FS.FuelingStationID
GROUP BY
    FS.FuelingStationID,
    FS.Name,
    FS.FuelType;

-- Select data from the view
SELECT * FROM FuelingStationUsageView;


-- Procedures:

--When a passenger increases the weight of his luggage greater 
--than the limit set by the airport, the price of the ticket is increased
-- Create the procedure
CREATE PROCEDURE IncreaseTicketPriceOnExceedLimit
    @passengerID INT,
    @luggageWeight DECIMAL(10, 2),
    @limit DECIMAL(10, 2),
    @priceMultiplier DECIMAL(10, 2)
AS
BEGIN
    -- Check if luggage weight exceeds the limit
    IF @luggageWeight > @limit
    BEGIN
        -- Calculate the new ticket price
        DECLARE @newPrice DECIMAL(10, 2);
        SET @newPrice = (SELECT Price * @priceMultiplier FROM Ticket WHERE PassengerID = @passengerID);

        -- Update the ticket price
        UPDATE Ticket
        SET Price = @newPrice
        WHERE PassengerID = @passengerID;
    END
END;

-- Execute the procedure
EXEC IncreaseTicketPriceOnExceedLimit @passengerID = 1, @luggageWeight = 37, @limit = 35, @priceMultiplier = 1.2;

-- Select data from Ticket table
SELECT * FROM Ticket WHERE PassengerID = 1;




-- Create the procedure
CREATE PROCEDURE UpdateSecurityArea
    @securityID INT,
    @newAllocatedArea VARCHAR(255)
AS
BEGIN
    -- Update the allocated area for the specified security department
    UPDATE Security
    SET AllocatedArea = @newAllocatedArea
    WHERE SecurityID = @securityID;
END;

--Execute the procedure
EXEC UpdateSecurityArea @securityID = 1, @newAllocatedArea = 'Area Z';

-- Example: Select data from Security table to verify the update
SELECT * FROM Security WHERE SecurityID = 1;



--Print the details of first five passengers 
create procedure DetailsOfPassengers
as
begin
declare @counter int = 1
while @counter <= 5
begin
select * from Passenger order by PassengerID 
offset (@counter - 1) rows fetch next 1 rows only
set @counter = @counter + 1
end
end

exec DetailsOfPassengers 


--Show the details of passengers and their luggage
create procedure PassengersAndLuggage
as
begin
select * from Passenger as p inner join Luggage as l on p.LuggageID = l.LuggageID
end

exec PassengersAndLuggage


--Show details of how many flights are already booked 
create procedure FlightsBooked
@counter int output
as
begin
set NOCOUNT on
select @counter = count (*) from Flight 
select count (*) as 'Number of Flights Booked' from Flight 
end

declare @output int 
exec FlightsBooked @counter = 1



-- Create the procedure
CREATE PROCEDURE CheckRunwayCondition
    @flightID VARCHAR(50)
AS
BEGIN
    DECLARE @runwayID INT;
    DECLARE @departureTime DATETIME;
    DECLARE @lightingSystemsCondition VARCHAR(255);

    -- Get the runway ID and departure time for the specified flight
    SELECT @runwayID = A.RunwayID, @departureTime = F.DepartureTime
    FROM Flight AS F
    JOIN Airport AS A ON F.FlightID = A.FlightID
    WHERE F.FlightID = @flightID;

    -- Get the condition of lighting systems for the specified runway
    SELECT @lightingSystemsCondition = LightingSystems
    FROM AirportRunway
    WHERE RunwayID = @runwayID;

    -- Check the condition and take action accordingly
    IF @lightingSystemsCondition = 'Operational'
    BEGIN
        -- Allow the flight to operate
        PRINT 'Flight ' + @flightID + ' can operate as scheduled.';
        -- Add logic for further actions if needed
    END
    ELSE
    BEGIN
        -- Delay the flight
        PRINT 'Flight ' + @flightID + ' is delayed due to runway lighting systems issues.';
        -- Add logic for further actions if needed, such as rescheduling or notifying passengers
    END;
END;

-- Example: Execute the procedure
EXEC CheckRunwayCondition @flightID = 2;


-- Triggers:

--If the passenger wants to book an already booked ticket it generates the following trigger
create trigger BookATicket
on Ticket 
for insert 
as 
begin
if ((select max(TicketID) from Ticket)<20)
begin 
raiserror ('Error. This seat has already been book.',20,3)
end;
else
begin
print 'Sorry for the inconvenience. You can choose another seat.'
end
end;
INSERT INTO Ticket (TicketID, TicketType, Price, PurchaseDate, PassengerID)
VALUES (21, 'Economy', 150.00, '2024-01-20', 1);





-- A particular customer is trying to upgrade his flight from economy to business
CREATE TRIGGER UpgradeATicket
ON Ticket
INSTEAD OF DELETE
AS
BEGIN
    PRINT 'Dear Passenger! Thank you for your request, your ticket is being upgraded.';

    DECLARE @TicketID INT;
    DECLARE @TicketType VARCHAR(255);
    DECLARE @Price DECIMAL(10, 2);
    DECLARE @PurchaseDate DATE;
    DECLARE @PassengerID INT;

    SELECT @TicketID = d.TicketID,
           @TicketType = d.TicketType,
           @Price = d.Price,
           @PurchaseDate = d.PurchaseDate,
           @PassengerID = d.PassengerID
    FROM deleted d;

    -- Output the updated ticket information
    PRINT 'Dear Passenger! Following is your updated ticket information';
    PRINT 'TicketID: ' + CAST(@TicketID AS VARCHAR(10));
    PRINT 'TicketType: ' + @TicketType;
    PRINT 'Price: ' + CAST(@Price AS VARCHAR(20));
    PRINT 'PurchaseDate: ' + CAST(@PurchaseDate AS VARCHAR(20));
    PRINT 'PassengerID: ' + CAST(@PassengerID AS VARCHAR(10));

    -- Perform the necessary updates
    UPDATE Ticket SET TicketType = 'Business', Price = 600 WHERE TicketID = @TicketID;
END;

-- Execute the trigger by deleting a ticket (assuming TicketID = 1)
DELETE FROM Ticket WHERE TicketID = 1;




-- If there is a flight delay, the passengers are notified
CREATE TRIGGER FlightDelay
ON Flight
AFTER UPDATE
AS
BEGIN
    -- Check if DepartureTime has been updated
    IF UPDATE(DepartureTime)
    BEGIN
        DECLARE @FlightID VARCHAR(50);
        DECLARE @NewDepartureTime DATETIME;
        DECLARE @OldDepartureTime DATETIME;

        -- Get the FlightID and the old and new DepartureTime values
        SELECT @FlightID = i.FlightID, @NewDepartureTime = i.DepartureTime, @OldDepartureTime = d.DepartureTime
        FROM inserted i
        JOIN deleted d ON i.FlightID = d.FlightID;

        -- Check if there's an actual delay
        IF @NewDepartureTime > @OldDepartureTime
        BEGIN
            -- Update the DepartureTime for demonstration purposes
            UPDATE Flight SET DepartureTime = DATEADD(HOUR, 2, @OldDepartureTime) WHERE FlightID = @FlightID;

            -- Notify passengers about the delay
            PRINT 'Dear Passengers! We would like to notify you that Flight ' + @FlightID + ' has been delayed by 2 hours. We appreciate your patience. Thank you!';
        END;
    END;
END;

-- Execute the trigger by simulating a flight delay (assuming FlightID = 10)
UPDATE Flight SET DepartureTime = '2024-01-18T22:45:00' WHERE FlightID = 10;




-- If the weight of luggage exceeds the limit set by the airline, a trigger is generated
CREATE TRIGGER LuggageWeightCheck
ON Luggage
FOR INSERT
AS
BEGIN
    IF ((SELECT Weight FROM INSERTED) > 35)
        PRINT 'Dear Passenger! Your luggage weight exceeds the limit we allow, please either go for cargo option or pay for your extra luggage.'
    ELSE
        PRINT 'Dear Passenger! Your luggage has been taken in.'
END;


-- Execute the trigger by inserting a new luggage item
INSERT INTO Luggage (LuggageID, Type, Weight)
VALUES (22, 'Suitcase', 40);



-- A trigger is generated if the fuel in a plane exceeds the normal amount
create trigger FuelMonitoring
on FuelingStation
after insert
as
begin
    if ((select max(Capacity) from FuelingStation) > 250000)
    begin
        print 'Error! The fuel capacity exceeds the normal amount, fix the issue before taking off'
    end
    else
    begin
        print 'Fuel capacity is within the normal range. Safe to proceed.'
    end
end;

-- Insert a new row into FuelingStation (assuming FuelingStationID = 22)
INSERT INTO FuelingStation (FuelingStationID, Name, Capacity, AircraftsAttended, FuelType)
VALUES (22, 'Fuel Station 1', 260000, 5, 'Jet-A');


-- Logins & Authorizations:

-- Drop users, roles, and logins if they exist
IF EXISTS (SELECT 1 FROM sys.database_principals WHERE name IN ('CoAdmin1', 'CoAdmin2', 'AirportDBA'))
BEGIN
    DROP USER CoAdmin1;
    DROP USER CoAdmin2;
    DROP USER AirportDBA;
END

IF EXISTS (SELECT 1 FROM sys.database_principals WHERE name = 'DBARole')
BEGIN
    DROP ROLE DBARole;
END

IF EXISTS (SELECT 1 FROM sys.server_principals WHERE name = 'AdminLogin')
BEGIN
    DROP LOGIN AdminLogin;
END

-- Creating Admin Login
CREATE LOGIN AdminLogin WITH PASSWORD = 'Airport321$%';

-- Creating Users who are going to use an admin login
CREATE USER CoAdmin1 FOR LOGIN AdminLogin;
CREATE USER CoAdmin2 FOR LOGIN AdminLogin;
CREATE USER AirportDBA FOR LOGIN AdminLogin;


SELECT DB_NAME(DB_ID()) as DatabaseName, * FROM sys.sysusers
-- Create DBARole with extensive privileges
CREATE ROLE DBARole;

-- Grant extensive privileges to DBARole
GRANT ALTER ANY ASSEMBLY TO DBARole;
GRANT ALTER ANY DATASPACE TO DBARole;
GRANT ALTER ANY FULLTEXT CATALOG TO DBARole;
GRANT ALTER ANY DATABASE TO DBARole;
GRANT CREATE ANY DATABASE TO DBARole;
GRANT CREATE PROCEDURE TO DBARole;
GRANT CREATE SCHEMA TO DBARole;
GRANT CREATE TABLE TO DBARole;
GRANT CREATE VIEW TO DBARole;
GRANT CREATE TRIGGER TO DBARole;
GRANT ALTER ANY LOGIN TO DBARole;
GRANT ALTER ANY USER TO DBARole;
GRANT VIEW DEFINITION TO DBARole;
GRANT CONNECT SQL TO DBARole;
GRANT EXECUTE TO DBARole;
GRANT SHOWPLAN TO DBARole;
GRANT VIEW SERVER STATE TO DBARole;
GRANT ALTER ANY CONNECTION TO DBARole;

-- Revoke permissions from public role (customize as necessary)
REVOKE CONNECT SQL FROM public;

-- Assign DBARole to users
ALTER ROLE DBARole ADD MEMBER CoAdmin1;
ALTER ROLE DBARole ADD MEMBER CoAdmin2;
ALTER ROLE DBARole ADD MEMBER AirportDBA;




-- Performance Analysis:

-- Checking relationships of the table (subquries)

SELECT
    (SELECT Name FROM Passenger WHERE PassengerID = P.PassengerID) AS PassengerName,
    (SELECT P_Contact FROM PassengerContact WHERE PassengerID = P.PassengerID) AS PassengerContact,
    (SELECT Weight FROM Luggage WHERE LuggageID = P.LuggageID) AS LuggageWeight
FROM
    Passenger AS P;


-- Veryfying the users:

EXEC sp_helpuser 'SecurityUser';

EXEC sp_helpuser 'PassengerUser';

EXEC sp_helpuser 'StaffUser';

EXEC sp_helpuser 'AirportDBA';


-- Login to the DB:

