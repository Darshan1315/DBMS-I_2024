----- 1 -----

select P_FirstName,P_Age
from Patient_Detail
where P_Age<40

----- 2 -----

select R_Type,R_Charge
from Room_Detail
where R_Charge>2000

----- 3 -----

select D_ID,D_Name,D_EmailID,D_Designation
from Doctor_Detail
where D_Designation != 'Ortho'

----- 4 -----

select D_ID,D_Name,D_EmailID,D_Designation
from Doctor_Detail
where D_Designation != 'Ortho'

----- 6 -----

select P_ID,P_FirstName,P_ContactNo,P_City,P_Disease
from Patient_Detail
where P_Disease = 'Tooth Break' or P_Disease ='Brain Tumor'

----- 7 -----

select * from Hospital_Detail
where H_Type = 'Private Hospital' and H_Canteen_Facility = 1


----- 8 -----

select D_Name,D_Designation,D_City
from Doctor_Detail
where D_City Not in('Rajkot','Jamnagar')

----- 9 -----

select B_ID,P_ID,P_Pending_Amount
from Bill_Detail
where P_Pending_Amount >= 3000

----- 10 -----

select D_Name,D_ID,D_City,D_Salary
from Doctor_Detail
where D_Salary <= 50000 and D_City = 'Rajkot'


