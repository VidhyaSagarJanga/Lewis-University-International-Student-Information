--SQL CODE for creating adminstrators
 CREATE USER 'Sagar' IDENTIFIED BY '8106064932a@A';
 CREATE USER 'bharath' IDENTIFIED BY '765997998a@A';

--SQL code for granting permissions
GRANT SELECT, UPDATE, INSERT ON *.* TO 'Sagar','bharath';


--SQL code for creating student users
CREATE USER 'karthik' IDENTIFIED BY 'karthik123';
CREATE USER 'rohit' IDENTIFIED BY 'rohit123';

--SQL CODE for Granting permissions to students
GRANT SELECT,INSERT, UPDATE ON studentinfo TO 'karthik','rohit';
GRANT SELECT,INSERT, UPDATE ON housinginfo TO 'karthik','rohit';
GRANT SELECT,INSERT, UPDATE ON courseregistrationinfo TO 'karthik','rohit';

GRANT SELECT ON courseinfo TO 'karthik','rohit';
GRANT SELECT ON workingdetails TO 'karthik','rohit';
GRANT SELECT ON insurancedetails TO 'karthik','rohit';
GRANT SELECT ON coursescheduleinfo TO 'karthik','rohit';
GRANT SELECT ON vehiclevendors TO 'karthik','rohit';

--SQL CODE FOR CREATING USERS 'PROFESSORS'
CREATE USER 'rklump' IDENTIFIED BY 'klump123';
CREATE USER 'choward' IDENTIFIED BY 'howard123';

--SQL CODE for Granting permissions to  'PROFESSORS'
GRANT SELECT,INSERT, UPDATE ON courseregistrationinfo TO 'rklump','choward';
GRANT SELECT,INSERT, UPDATE ON coursescheduleinfo TO 'rklump','choward';
GRANT SELECT,INSERT, UPDATE ON courseinfo TO 'rklump','choward';

GRANT SELECT ON housinginfo TO 'rklump','choward';
GRANT SELECT ON workingdetails TO 'rklump','choward';
GRANT SELECT ON studentinfo TO 'rklump','choward';
GRANT SELECT ON vehiclevendors TO 'rklump','choward';


--SQL code for creating VehicleVendors
CREATE USER 'harrisvv' IDENTIFIED BY 'harris123';
CREATE USER 'haribabu' IDENTIFIED BY 'haribabu123';

--SQL CODE for Granting permissions to  'VehicleVendors'
GRANT SELECT, INSERT, UPDATE ON vehiclevendors TO 'harrisvv','haribabu';
GRANT SELECT ON studentinfo TO 'harrisvv','haribabu';
GRANT SELECT ON housinginfo TO 'harrisvv','haribabu';
GRANT SELECT ON insurancedetails TO 'harrisvv','haribabu';


--SQL code for creating Employers
CREATE USER 'sodexo_manager' IDENTIFIED BY 'sodexo123';
CREATE USER 'dayton_manager' IDENTIFIED BY 'dayton123';

--SQL CODE for Granting permissions to  'VehicleVendors'
GRANT SELECT, INSERT, UPDATE ON workingdetails TO 'sodexo_manager','dayton_manager';
GRANT SELECT ON studentinfo TO 'sodexo_manager','dayton_manager';
GRANT SELECT ON housinginfo TO 'sodexo_manager','dayton_manager';
GRANT SELECT ON courseregistrationinfo TO 'sodexo_manager','dayton_manager';


--SQL code for creating Insurance Providers
CREATE USER 'Lewer_mark' IDENTIFIED BY 'lewer123';
CREATE USER 'aetna' IDENTIFIED BY 'aetna123';

--SQL CODE for Granting permissions to Insurance Providers
GRANT SELECT, INSERT, UPDATE ON insurancedetails TO 'Lewer_mark','aetna';
GRANT SELECT ON studentinfo TO 'Lewer_mark','aetna';
GRANT SELECT ON housinginfo TO 'Lewer_mark','aetna';
