--Script for inserting data into DATABASE.

-- Insert Statements for table : courseinfo
INSERT INTO courseinfo (CourseId, CourseName, CreditHours, CourseDescription)
	VALUES ('CPSC-50100', 'Programming Fundamentals', 3, 'This course teaches the fundamentals of object-oriented programming, algorithm development, and software development skills such as testing, debugging, and working with data structures and algorithms.'),
		   ('CPSC-50900', 'Database Systems', 3, 'This course provides a comprehensive coverage of relational databases and DBMS, including database design using ERDs and normalization, programming in SQL and high-level languages, and administration tasks such as performance monitoring, user account management, query optimization, and deadlock detection and resolution.'),
		   ('DATA-51100', 'Statistical Programming', 3, 'In this course, students will learn programming structures and algorithms for large-scale statistical data processing and visualization, using both pre-existing data analysis software packages and developing their own object-oriented programming code.');
	   
-- Insert Statements for table : CourseScheduleInfo
INSERT INTO coursescheduleinfo (Day, StartDate, EndDate, ClassTime, Location, Instructor, CourseId)
    VALUES ('Tuesday', '2022-03-14', '2022-05-06', '6:00pm - 8:00pm', 'Romeoville', 'Raymond Klump', 'CPSC-50900'),
		   ('Wednesday', '2022-03-15', '2022-05-06', '6:00pm - 8:00pm', 'Romeoville', 'Young June Kim', 'CPSC-50100'),
		   ('Monday', '2022-03-13', '2022-05-06', '6:00pm - 8:00pm', 'Romeoville', 'Osama Y Abuomar', 'DATA-51100'),
		   ('Tuesday', '2022-03-14', '2022-05-06', '6:00pm - 8:00pm', 'Online', 'Raymond Klump', 'CPSC-50900'),
		   ('Monday', '2022-03-13', '2022-05-06', '6:00pm - 8:00pm', 'Online', 'Osama Y Abuomar', 'DATA-51100');

-- Insert Statements for table : housinginfo
INSERT INTO housinginfo (AddressId, FlatNo, AptNo, AptType, Street, Zipcode, City)
	VALUES ('A101', '151', '203', '2BHK', 'Highpoint', '60446', 'Romeoville'),
		   ('A102', '71', NULL, '3BHK', 'Sonoma', '60446', 'Romeoville'),
		   ('A103', '4107', NULL, NULL, 'Chinaberry', '60564', 'Naperville'),
		   ('A104', '171', '205', '2BHK', 'Highpoint', '60446', 'Romeoville');

-- Insert Statements for table : vehiclevendors
INSERT INTO vehiclevendors (VendorId, VendorName, Contact, Email)
	VALUES ('V101', 'Harris', '682-433-2634', 'harris12@gmail.com'),
		   ('V102', 'Delta Cars LLC', '630-706-1593', 'car.delta@yahoo.com'),
		   ('V103', 'Walter Auto', '774-523-8843', NULL);
		   
-- Insert Statements for table : studentinfo
INSERT INTO studentinfo (StudentId, FirstName, LastName, Gender, Major, ContactNo, EmergencyContact, LinkedInId, AddressId, VendorId)
    VALUES ('L101', 'Bharath Kumar', 'Tella', 'M', 'Data Science', '779-206-6727', '331-246-6646', 'bharath_tella', 'A101', 'V101'),
		   ('L102', 'VidhyaSagar', 'Janga', 'M', 'Data Science', '331-246-6646', '779-206-6727', 'vidhyasagar_janga', 'A101', 'V102'),
		   ('L103', 'Sai', 'Teja', 'M', 'Business Analytics', '779-233-6980', '900-029-9432', 'sai_teja', 'A104', 'V103'),
		   ('L104', 'Karthik', 'Amanaganti', 'M', 'Computer Science', '331-246-6500', '812-152-2151', NULL, 'A101', NULL);
		   
-- Insert Statements for table : courseregistrationinfo
INSERT INTO courseregistrationinfo (RegistrationId, StudentId, CourseId, Grade)
	VALUES ('R101', 'L101', 'CPSC-50100', 'A'),
		   ('R102', 'L102', 'CPSC-50900', 'B'),
		   ('R104', 'L102', 'CPSC-50900', 'C'),
           ('R105', 'L103', 'CPSC-50900', NULL);
	
-- Insert Statements for table : InsuranceDetails
INSERT INTO InsuranceDetails (InsuranceId, Provider, StartDate, ExpiryDate, MaxBenefit, StudentId)
	VALUES ('I101', 'Lewer mark', '2023-01-09', '2023-05-02', 6000, 'L101'),
		   ('I102', 'Aetna', '2023-01-10', '2023-05-03', 6100, 'L102'),
		   ('I103', 'Lewer mark', '2023-01-09', '2023-05-02', 6000, 'L104');

-- Insert Statements for table : WorkingDetails
INSERT INTO WorkingDetails (WorkId, JobType, Employer, Jobtitle, SalaryPerHr, StudentId)
	VALUES ('W101', 'On campus', 'Sodexo', 'Food service worker', 12, 'L101'),
		   ('W102', 'On campus', 'Sodexo', 'Food service worker', 12, 'L103'),
		   ('W103', 'CPT', 'Dayton', 'Software Developer Intern', 34, 'L104');
