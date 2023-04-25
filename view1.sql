-- creating view named StudentCourseSchedule
CREATE VIEW StudentCourseSchedule AS
     SELECT DISTINCT
         s.firstname,
         s.contactno,
         hs.street,
         cs.Day,
         cs.courseID
     FROM
         studentinfo s
         JOIN courseregistrationinfo CRN ON s.studentid = CRN.studentid
         JOIN housinginfo hs ON hs.addressid = s.addressid
         JOIN coursescheduleinfo cs ON cs.courseID = CRN.courseId;