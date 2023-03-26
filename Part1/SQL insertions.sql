
-- creating tables 

CREATE TABLE PlaneType (
  TypeID INT PRIMARY KEY,
  ModelNum VARCHAR(255) NOT NULL,
  Capacity INT NOT NULL,
  Weight INT NOT NULL
);

CREATE TABLE Hangar(
  HangarID INT PRIMARY KEY,
  Number_ INT NOT NULL, 
  Capacity INT NOT NULL,
  Location VARCHAR(255) NOT NULL
);

CREATE TABLE Airplane (
  RegNum VARCHAR(255) PRIMARY KEY,
  TypeID INT FOREIGN KEY REFERENCES PlaneType(TypeID),
  HangarID INT FOREIGN KEY REFERENCES Hangar(HangarID)
);

CREATE TABLE Owner(
  OwnerID INT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,
  Address VARCHAR (100) NOT NULL,
  TeleNo INT NOT NULL
);

CREATE TABLE Corporation (
  CorporationID INT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,
  Address VARCHAR (100) NOT NULL,
  TeleNo INT NOT NULL
);

CREATE TABLE Person(
  PersonID INT PRIMARY KEY,
  SSN INT NOT NULL,
  Name VARCHAR(50) NOT NULL,
  Address VARCHAR (100) NOT NULL,
  TeleNo INT NOT NULL
);

CREATE TABLE Pilot(
  PilotID INT PRIMARY KEY,
  LiscenceNum VARCHAR(20)NOT NULL,
  Restrictions TEXT NOT NULL,
  PersonID INT FOREIGN KEY REFERENCES Person(PersonID)
);

CREATE TABLE Employee(
  EmployeeID INT PRIMARY KEY,
  Salary INT NOT NULL,
  Shift VARCHAR(10) CHECK (Shift IN ('Morning', 'Evening', 'Night')),
  PersonID INT FOREIGN KEY REFERENCES Person(PersonID)
);

CREATE TABLE ServiceRecord(
  RecordID INT PRIMARY KEY,
  MaintenanceData DATE NOT NULL,
  HoursSpent INT NOT NULL,
  WorkType VARCHAR(30),
  AirplaneRegNum VARCHAR(255) FOREIGN KEY REFERENCES Airplane(RegNum) NOT NULL,
  EmployeeID INT FOREIGN KEY REFERENCES Employee(EmployeeID) NOT NULL
);

CREATE TABLE Authorization(
  AuthorizationID INT PRIMARY KEY,
  PilotID INT FOREIGN KEY REFERENCES Pilot(PilotID) NOT NULL,
  TypeID INT FOREIGN KEY REFERENCES PlaneType(TypeID) NOT NULL
);

CREATE TABLE MaintenanceAuthorization(
  MaintenanceAuthID INT PRIMARY KEY,
  EmployeeID INT FOREIGN KEY REFERENCES Employee(EmployeeID) NOT NULL,
  TypeID INT FOREIGN KEY REFERENCES PlaneType(TypeID) NOT NULL
);

--Insertions
--values in PlaneType
INSERT INTO PlaneType(TypeID, ModelNum, Capacity, Weight)
VALUES	('1', 'Boeing 747', '416', '178800'), 
		('2', 'Airbus A380', '853', '560000'),
		('3', 'Airbus 747', '330', '254000');

--values in hanger
INSERT INTO Hangar(HangarID, Number_, Capacity, Location)
VALUES	('1', '1', '10', 'Pakistan'),
		('2', '2', '15', 'Los Angeles'),
		('3', '3', '20', 'Pakistan'),
		('4', '4', '19', 'New York');

--values for airplane
INSERT INTO Airplane(RegNum, TypeID, HangarID)
VALUES	('N123', '1', '1'),
		('N124', '2', '2'),
		('N125', '3', '3'),
		('N126', '2', '2');

--values in owner
INSERT INTO Owner(OwnerID, Name, Address, TeleNo)
VALUES	('1', 'John Smith', '123 Main St, New York, NY', '5551234'),
		('2', 'Mary Johnson', '456 Elm St, Los Angeles, CA', '5555678'),
		('3', 'Robert Lee', '789 Oak St, Chicago, Il', '5559012');

--values in Corporation
INSERT INTO Corporation (CorporationID, Name, Address, TeleNo)
VALUES	('1', 'ABC Corporation', '123 Main St, New York, NY', '5551234'), 
		('2', 'XYZ Corporation', '456 Elm St, Los Angeles, CA', '5555678'), 
		('3', 'DEF Corporation', '789 Oak St, Chicago, Il', '5559012');

--values into Person
INSERT INTO Person(PersonID, SSN, Name, Address, TeleNo)
VALUES	('1', '123456789','John Smith', '123 Main St, New York, NY', '5551234'),
		('2', '234567890','Mary Johnson', '456 Elm St, Los Angeles, CA', '5555678'),
		('3', '345678901','Robert Lee', '789 Oak St, Chicago, Il', '5559012');

--values into Pilot
INSERT INTO Pilot(PilotID, PersonID, LiscenceNum, Restrictions)
VALUES	('1', '2', 'P1234567', 'None'), 
		('2', '3', 'P2345678', 'Glasses'), 
		('3', '1', 'P3456789', 'Night Flying Only');

--values in Employee
INSERT INTO Employee(EmployeeID, Salary, Shift, PersonID)
VALUES	('1', '50000', 'Day', '1'), 
		('2', '60000', 'Night', '2'),
		('3', '55000', 'Evening', '3');

--values in service record
INSERT INTO ServiceRecord(RecordID, AirplaneRegNum, EmployeeID, MaintenanceDate, HoursSpent, WorkType)
VALUES	('1', 'N123', '1', '2022-01-01', '10', 'Oil Change'), 
		('2', 'N124', '2', '2022-02-15', '20', 'Tire Replacement'),
		('3', 'N125', '3', '2022-03-25', '15', 'Brake Inspection');

--values into Authorization
INSERT INTO Authorization_(AuthorizationID, PilotID, TypeID)
VALUES	('1', '1', '1'),
		('2', '2', '2'),
		('3', '3', '3');

--values into Authorization
INSERT INTO MaintenanceAuthorization(MaintenanceAuthID, EmployeeID, TypeID)
VALUES	('1', '1', '1'),
		('2', '2', '2'),
		('3', '3', '3');
