---- Practical 5----
--- 1 ---

select count(D_Name) as No_of_Doctors
from Doctor_Detail

--- 2 ---

select count(P_Disease) as No_of_Disease
from Patient_Detail

--- 3 ---

select count(P_Disease_Remarks) as No_of_Disease_Remark
from Patient_Detail

--- 4 ---

select sum(P_Pending_Amount) as Total_Pending_Amount
from Bill_Detail

--- 5 ---

select avg(R_Charge) as Avarage_Room_Charge
from Room_Detail

--- 6 ---

select max(D_Salary)as Maximum_Salary,
       min(D_Salary)as Minumum_Salary,
       avg(D_Salary) as Avarage_Salary
from Doctor_Detail

---p6---
---1--

select R_Type ,count(R_Type)
from Room_Detail 
group by R_Type

--2--

select P_City,count(P_ID)
from Patient_Detail 
group by P_City

--3--
select H_Canteen_Facility,count(H_Canteen_Facility)
from Hospital_Detail 
group by H_Canteen_Facility

--4--

select P_Disease,count(P_Disease)
from Patient_Detail 
group by P_Disease

--5---

select D_Designation,count(D_Designation)
from Doctor_Detail where D_Designation='Dentist' 
group by D_Designation

---6--

select Tr_Type,count(Tr_Type)
from Transaction_Master 
group by Tr_Type

--7--

select H_Name
from Hospital_Detail   
order by H_Name desc
---8---
select D_Name
from Doctor_Detail   
order by D_Name asc

--9--
select D_Name,D_EmailID,H_ID,D_Salary
from Doctor_Detail 
order by D_Salary desc

---10---

select R_Type,R_Charge
from Room_Detail
order by R_Charge

--11--

select P_FirstName,P_Age
from Patient_Detail 
order by P_Age desc
