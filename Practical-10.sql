--1--
select D_ID,len(D_ID),D_Name,LEN(D_Name),D_Address,LEN(D_Address) from Doctor_Detail

--2--
select H_Name,H_Type,H_City,LEN(H_Name) from Hospital_Detail

--3--
select UPPER(D_Name),LOWER(D_Designation) from Doctor_Detail

--4--
select LEFT(P_ContactNo,5) from Patient_Detail

--5--
select RIGHT(H_City,3) from Hospital_Detail

--6--
select SUBSTRING('Diploma Computer,DIETDS',8,9)

--7--
select RIGHT('Darshan University,Rajkot',6)

--8--
select replace('Darshan College','College','University')

--9--
select * from Hospital_Detail
select H_Name,REPLACE(H_Type,'Govt.','Government') from Hospital_Detail