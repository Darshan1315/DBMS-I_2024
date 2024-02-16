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

