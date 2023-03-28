Assignment # 2
Course      : Database 
submitted to: Miss Javeria 
submitted by: i211213_Syeda Fatima Kazmi
              i211186_Anum Batool
ERD Explaination
The EERD consists of the following entities and their attributes:
1. Person (PersonID (Primary Key),SSN,Name,Address,TelephoneNumber)
2. Employee (EmployeeID (Primary Key), Salary, Shift)
3. Pilot (PilotID (Primary Key), LicenseNumber,Restrictions)
4. Owner (OwnerID (Primary Key),Name,Address,TelephoneNumber)
5. Corporation (CorporationID (Primary Key), Name, Address, TelephoneNumber)
6. PlaneType ( TypeID (Primary Key), ModelNumber, Capacity, Weight)
7. Hangar (HangarID (Primary Key), Number, Capacity, Location)
8. Airplane ( RegistrationNumber (Primary Key))
9. ServiceRecord (RecordID (Primary Key),MaintenanceDate, HoursSpent, WorkType),
10. Authorization (AuthorizationID (Primary Key))
11. MaintenanceAuthorization (MaintenanceAuthorizationID (Primary Key))

The Relationships can be explained as follows:
1. Person is a superclass with two subclasses, namely, Pilot and Employee. We have established a disjoint relationship here which means that a person cannot be an employee and a pilot at the same time. 
Note: A correction was made to this portion of the EERD, where the owner entity was also a subclass to the Person entity. However, to avoid data redundency in the tables we separated the Onwer Entity from the Person entity. Additionally, the table information given in the Data.pdf suggested that the two entities are independent of each other.

2. Every Employee has a maintenance Record and every Maintenance Record is associated with an Employee therefore the relationships linking these two entities have Total Participation. Same is the case for Pilot and Authorization entity.
Note: The Maintenance and Authorization entites were orginally relationships. The represented the many-to-many relationship between Employee and Plane Type, and between Pilot and Plane Type. However, to make the EERD more understandanble the relationship was decomposed further to form Maintenance and Authorization entities.

3. An Employee also maintains several Service Records.

4. Each Airplane undergoes a Service and Many Services are performed on an airplane.

5. Every airplane is of a particular Plane Type but not every planetype is formed/registered into as an airplane, hence the single participation constraint is applied.

6. Multiple planes are placed in a single hanger at a time. 

7. Every owner/corportaion associated with this database owns multiple aiplanes and total participation was applied here since airplanes have owners.
