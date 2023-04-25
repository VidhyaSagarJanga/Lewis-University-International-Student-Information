-- creating view named student_housing_insurance_info
CREATE VIEW student_housing_insurance_info AS
    SELECT -- selecting all the required attributes required to display
       si.StudentId, 
       hi.FlatNo,
       hi.AptNo,
       hi.AptType,
       hi.Street,
       hi.Zipcode,
       hi.City,
       id.Provider,
       id.StartDate AS InsuranceStartDate,
       id.ExpiryDate AS InsuranceExpiryDate,
       id.MaxBenefit,
    CASE -- case to define the conditions
       WHEN id.InsuranceId LIKE 'I%' THEN 'HealthInsurance'
       WHEN id.InsuranceId LIKE 'D%' THEN 'VehicleInsurance'
       ELSE NULL
    END AS Insurancetype
     FROM studentinfo si
     INNER JOIN housinginfo hi ON si.AddressId = hi.AddressId
     INNER JOIN insurancedetails id ON si.StudentId = id.StudentId;