--Insert statements
--Inserting two rows to vehiclevendors table
INSERT INTO vehiclevendors (VendorId, VendorName, Contact, Email)
	VALUES ('V105', 'ABC Motors', '987-356-4321', 'john@abcmotors.com'),
		   ('V104', 'XYZ Vehicles', '123-456-9876', 'jane@xyzvehicles.com'),
		   ('V103','Walter Auto','774-523-8843',NULL);	

--Inserting two rows to the addressinfo
INSERT INTO HousingInfo (AddressId, FlatNo, AptNo, AptType, Street, Zipcode, City)
	VALUES ('A105', 230, 101, '1BHK', 'Lakefront', 60601, 'Chicago'),
		   ('A106', 903, 201, 'Studio', 'Wabash Ave', 60605, 'Chicago');

--Update statements
--Updating the classtime for the course CPSc-50900 on Tuesday
UPDATE coursescheduleinfo SET classtime ='3:45pm - 5:45pm' WHERE courseid='CPSC-50900' and day='Tuesday';

 --Updating the Salary of student
UPDATE workingdetails SET salaryperhr=40 where Workid='W103';

--Simple SELECt query
Select * from housinginfo;

--Join queries
--getting student first, lastname and Major of the student who lives in Highpoint
Select firstname,lastname,Major,Flatno,Aptno from Studentinfo s JOIN housinginfo h ON s.Addressid=h.addressid;

-- Getting the student first, last name whose working in sodexo
Select firstname,lastname, contactno from studentinfo s join workingdetails w  on s.studentid=w.studentid where Employer='Sodexo';

--Summary statements
--Getting the courseid and NoOfStudents where the totalnumber of studentes registred in morethan 1
SELECT Courseid, COUNT(Studentid) as TotalNoOfStudents
     FROM courseregistrationinfo
     GROUP BY Courseid
     HAVING COUNT(Studentid) > 1;
--Getting the courseid and NoOfStudents where the totalnumber of studentes registred in morethan 1
SELECT Courseid, COUNT(Studentid) as TotalNoOfStudents
     FROM courseregistrationinfo
     GROUP BY Courseid
     HAVING COUNT(Studentid) > 1;

--Multitable Query
--Get the Vehicle Vendor name , Contact who sold cars to more than one student
SELECT Vendorname, contact
     FROM vehiclevendors
     WHERE Vendorid IN (
         SELECT vv.Vendorid
         FROM vehiclevendors vv
         JOIN Studentinfo s ON vv.vendorid = s.vendorid
         GROUP BY s.vendorid
         HAVING COUNT(s.vendorid) > 1
     );

--Query of choice
--Getting the Studentid, Firstname , maxbenefit from insurance
SELECT s.Studentid,Firstname,IFNULL(Provider,'NO Insurance') 'InsuranceProvider',IFNULL(maxbenefit,0) 'MaxBenefit'
     FROM studentinfo s LEFT JOIN insurancedetails ins ON s.studentid = ins.studentid;
	
--getting student firstname, contactnum of student who has class on Tuesday
Select DISTINCT firstname,contactno from studentinfo s 
	JOIN  courseregistrationinfo CRN ON s.studentid=CRN.studentid 
	JOIN coursescheduleinfo cs ON CRN.courseid =CS.courseid where DAY='Tuesday';






