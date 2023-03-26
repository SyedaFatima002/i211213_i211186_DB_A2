
-- creating tables 

CREATE TABLE PlaneType (
  TypeID INT PRIMARY KEY,
  ModelNum INT,
  Capacity INT,
  Weight DOUBLE
);

CREATE TABLE Hangar(
  HangarID INT PRIMARY KEY,
  Number_ INT, 
  Capacity INT,
  Location VARCHAR(150)
);

CREATE TABLE Airplane (
  RegNum INT PRIMARY KEY,
  TypeID INT FOREIGN KEY REFERENCES PlaneType(TypeID),
  HangarID INT FOREIGN KEY REFERENCES Hangar(HangarID)
);

CREATE TABLE Owner(
  OwnerID INT PRIMARY KEY,
  Name VARCHAR(50),
  Address VARCHAR (100),
  TeleNo DOUBLE
);

CREATE TABLE Corporation (
  CorporationID INT PRIMARY KEY,
  Name VARCHAR(50),
  Address VARCHAR (100),
  TeleNo DOUBLE
);

CREATE TABLE Person(
  PersonID INT PRIMARY KEY,
  SSN INT,
  Name VARCHAR(50),
  Address VARCHAR (100),
  TeleNo DOUBLE
);

CREATE TABLE Pilot(
  PilotID INT PRIMARY KEY,
  LiscenceNum VARCHAR(20),
  Restrictions TEXT,
  PersonID INT FOREIGN KEY REFERENCES Person(PersonID)
);

CREATE TABLE Employee(
  EmployeeID INT PRIMARY KEY,
  Salary DOUBLE,
  Shift VARCHAR(10) CHECK (Shift IN ('Morning', 'Evening', 'Night')),
  PersonID INT FOREIGN KEY REFERENCES Person(PersonID)
);

CREATE TABLE ServiceRecord(
  RecordID INT PRIMARY KEY,
  MaintenanceData TEXT,
  HoursSpent INT,
  WorkType VARCHAR(30),
  AirplaneRegNum INT FOREIGN KEY REFERENCES Airplane(AirplaneRegNum),
  EmployeeID INT FOREIGN KEY REFERENCES Employee(EmployeeID)
);

CREATE TABLE Authorization(
  AuthorizationID INT PRIMARY KEY,
  PilotID INT FOREIGN KEY REFERENCES Pilot(PilotID),
  TypeID INT FOREIGN KEY REFERENCES PlaneType(TypeID)
);

CREATE TABLE MaintenanceAuthorization(
  MaintenanceAuthID INT PRIMARY KEY,
  EmployeeID INT FOREIGN KEY REFERENCES Employee(EmployeeID),
  TypeID INT FOREIGN KEY REFERENCES PlaneType(TypeID)
);