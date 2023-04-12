-- creating the database with name lewis


-- changing the DATABASE
use Lewis;

-- tables
-- Table: CourseInfo
CREATE TABLE CourseInfo (
    CourseId char(10)  NOT NULL PRIMARY KEY,
    CourseName varchar(32)  NOT NULL,
    CreditHours int  NOT NULL,
    CourseDescription varchar(128)  NULL
);

-- Table: CourseRegistrationInfo
CREATE TABLE CourseRegistrationInfo (
    RegistrationId char(4)  NOT NULL PRIMARY KEY,
    StudentId char(4)  NOT NULL,
    CourseId char(10)  NOT NULL,
    Grade char(1)  NULL
);

-- Table: CourseScheduleInfo
CREATE TABLE CourseScheduleInfo (
    CRNId int  NOT NULL AUTO_INCREMENT,
    Day varchar(9)  NOT NULL PRIMARY KEY,
    StartDate date  NOT NULL,
    EndDate date  NOT NULL,
    ClassTime varchar(20)  NOT NULL,
    Location varchar(20)  NOT NULL,
    Instructor varchar(40)  NOT NULL,
    CourseId char(10)  NOT NULL
);

-- Table: HousingInfo
CREATE TABLE HousingInfo (
    AddressId char(4)  NOT NULL PRIMARY KEY,
    FlatNo int  NOT NULL,
    AptNo int  NULL,
    AptType varchar(10)  NULL,
    Street varchar(40)  NOT NULL,
    Zipcode int  NOT NULL,
    City varchar(40)  NOT NULL
);

-- Table: InsuranceDetails
CREATE TABLE InsuranceDetails (
    InsuranceId char(4)  NOT NULL PRIMARY KEY,
    Provider varchar(32)  NOT NULL,
    StartDate date  NOT NULL,
    ExpiryDate date  NOT NULL,
    MaxBenefit int  NOT NULL,
    StudentId char(4)  NOT NULL
);

-- Table: StudentInfo
CREATE TABLE StudentInfo (
    StudentId char(4)  NOT NULL PRIMARY KEY,
    FirstName varchar(20)  NOT NULL,
    LastName varchar(20)  NOT NULL,
    Gender char(1)  NOT NULL CHECK (Gender IN ('M', 'F')),
    Major varchar(20)  NOT NULL,
    ContactNo char(12)  NOT NULL,
    EmergencyContact char(12)  NOT NULL,
    LinkedInId varchar(32)  NULL,
    AddressId char(4)  NOT NULL,
    VendorId char(4)  NULL
);

-- Table: VehicleVendors
CREATE TABLE VehicleVendors (
    VendorId char(4)  NOT NULL PRIMARY KEY,
    VendorName varchar(32)  NOT NULL,
    Contact varchar(12)  NOT NULL,
    Email varchar(40)  NULL
);

-- Table: WorkingDetails
CREATE TABLE WorkingDetails (
    WorkId char(4)  NOT NULL PRIMARY KEY,
    JobType varchar(20)  NOT NULL,
    Employer varchar(20)  NOT NULL,
    Jobtitle varchar(32)  NOT NULL,
    SalaryPerHr int  NOT NULL,
    StudenId char(4)  NOT NULL
);

-- foreign keys
-- Reference: CourseRegistrationInfo_CourseInfo (table: CourseRegistrationInfo)
ALTER TABLE CourseRegistrationInfo ADD CONSTRAINT CourseRegistrationInfo_CourseInfo FOREIGN KEY CourseRegistrationInfo_CourseInfo (CourseId)
    REFERENCES CourseInfo (CourseId);

-- Reference: CourseRegistrationInfo_Student_Info (table: CourseRegistrationInfo)
ALTER TABLE CourseRegistrationInfo ADD CONSTRAINT CourseRegistrationInfo_Student_Info FOREIGN KEY CourseRegistrationInfo_Student_Info (StudentId)
    REFERENCES StudentInfo (StudentId);

-- Reference: CourseScheduleInfo_CourseInfo (table: CourseScheduleInfo)
ALTER TABLE CourseScheduleInfo ADD CONSTRAINT CourseScheduleInfo_CourseInfo FOREIGN KEY CourseScheduleInfo_CourseInfo (CourseId)
    REFERENCES CourseInfo (CourseId);

-- Reference: InsuranceDetails_Student_Info (table: InsuranceDetails)
ALTER TABLE InsuranceDetails ADD CONSTRAINT InsuranceDetails_Student_Info FOREIGN KEY InsuranceDetails_Student_Info (StudentId)
    REFERENCES StudentInfo (StudentId);

-- Reference: Student_Info_HousingInfo (table: StudentInfo)
ALTER TABLE StudentInfo ADD CONSTRAINT Student_Info_HousingInfo FOREIGN KEY Student_Info_HousingInfo (AddressId)
    REFERENCES HousingInfo (AddressId);

-- Reference: Student_Info_VehicleVendors (table: StudentInfo)
ALTER TABLE StudentInfo ADD CONSTRAINT Student_Info_VehicleVendors FOREIGN KEY Student_Info_VehicleVendors (VendorId)
    REFERENCES VehicleVendors (VendorId);

-- Reference: WorkingDetails_Student_Info (table: WorkingDetails)
ALTER TABLE WorkingDetails ADD CONSTRAINT WorkingDetails_Student_Info FOREIGN KEY WorkingDetails_Student_Info (StudenId)
    REFERENCES StudentInfo (StudentId);

-- End of file.

