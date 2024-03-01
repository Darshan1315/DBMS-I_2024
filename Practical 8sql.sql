---1----

select R_ID,R_Availability,R_Charge
from Room_Detail
where R_Charge between 2000 and 5000 

---2---

select D_ID,D_Name,D_Designation,D_Salary
from Doctor_Detail
where D_Salary between 40000 and 80000 

---3---


select P_ID,P_FirstName,P_ContactNo,P_Disease,P_City
from Patient_Detail
where P_City in ('Rajkot','Morbi','Bhavnager')

---4---
select A_ID,A_Number,H_ID,A_Date
from Appointment_Detail
where A_Date between '2023-05-01' and '2023-12-31'

----5---

select H_Name,H_Address
from Hospital_Detail
where H_Address like 'R%'

----6---

select D_Name,D_Designation,D_City
from Doctor_Detail
where D_Name like '%a'

---7---

select P_FirstName,P_Age,P_Disease,P_Disease_Remarks
from Patient_Detail
where P_Disease_Remarks like '%r_'

----8---
select D_Name
from Doctor_Detail
where D_Name like '%i%'

---9---

select P_FirstName,P_ContactNo,P_Address,P_City
from Patient_Detail
where P_City Not in ('Rajkot','Morbi')

----10---

select *from Bill_Detail
where P_AdmitDateTime between '2023-10-01' and '2024-1-31'