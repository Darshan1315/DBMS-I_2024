Alter table Hospital_Detail
add	H_EmaillD varchar(50);
UPDATE Hospital_Detail
SET H_EmaillD =' samarpan@gmail.com'
WHERE H_ID =101
UPDATE Hospital_Detail
SET H_EmaillD ='nakshatra@yahoo.in'
WHERE H_ID =102
UPDATE Hospital_Detail
SET H_EmaillD =' civilmorbi@gov.in'
WHERE H_ID =103
UPDATE Hospital_Detail
SET H_EmaillD ='amity@gmail.com'
WHERE H_ID =104
UPDATE Hospital_Detail
SET H_EmaillD ='generalrajkot@gov.in'
WHERE H_ID =105

Alter table Room_Detail
add	H_ID int;

UPDATE Room_Detail
SET H_ID =101
WHERE R_ID =2001
UPDATE Room_Detail
SET H_ID =103
WHERE R_ID =2002
UPDATE Room_Detail
SET H_ID =104
WHERE R_ID =2003
UPDATE Room_Detail
SET H_ID =103
WHERE R_ID =2004
UPDATE Room_Detail
SET H_ID =102
WHERE R_ID =2005
UPDATE Room_Detail
SET H_ID =104
WHERE R_ID =2006
UPDATE Room_Detail
SET H_ID =102
WHERE R_ID =2007
UPDATE Room_Detail
SET H_ID =101
WHERE R_ID =2008
UPDATE Room_Detail
SET H_ID =105
WHERE R_ID =2009
UPDATE Room_Detail
SET H_ID =105
WHERE R_ID =2010

select * from Room_Detail

UPDATE Patient_Detail
SET P_Address ='Green city main Road'
WHERE P_ID =5009

select * from Patient_Detail

DELETE FROM  Doctor_Detail
WHERE D_ID =3010

select * from Doctor_Detail

DELETE FROM  Appointment_Detail
WHERE A_ID = 4008

select * from Appointment_Detail

--8--

ALTER TABLE Doctor_Detail ALTER COLUMN D_Name nvarchar(50)
ALTER TABLE Doctor_Detail ALTER COLUMN D_Designation nvarchar(50)
ALTER TABLE Doctor_Detail ALTER COLUMN D_Gender nvarchar(50)
ALTER TABLE Doctor_Detail ALTER COLUMN D_EmailID nvarchar(50)
ALTER TABLE Doctor_Detail ALTER COLUMN D_Address nvarchar(50)
ALTER TABLE Doctor_Detail ALTER COLUMN D_City nvarchar(50)

select * FROM Doctor_Detail

ALTER TABLE Hospital_Detail ALTER COLUMN H_Name nvarchar(50)
ALTER TABLE Hospital_Detail ALTER COLUMN H_Address nvarchar(50)
ALTER TABLE Hospital_Detail ALTER COLUMN H_City nvarchar(50)
ALTER TABLE Hospital_Detail ALTER COLUMN H_Type nvarchar(50)
ALTER TABLE Hospital_Detail ALTER COLUMN H_EmaillD nvarchar(50)

select * FROM Hospital_Detail


ALTER TABLE Patient_Detail ALTER COLUMN P_FirstName nvarchar(50)
ALTER TABLE Patient_Detail ALTER COLUMN P_MiddleName nvarchar(50)
ALTER TABLE Patient_Detail ALTER COLUMN P_LastName nvarchar(50)
ALTER TABLE Patient_Detail ALTER COLUMN P_Address nvarchar(50)
ALTER TABLE Patient_Detail ALTER COLUMN P_City nvarchar(50)
ALTER TABLE Patient_Detail ALTER COLUMN P_Gender nvarchar(50)
ALTER TABLE Patient_Detail ALTER COLUMN P_Disease nvarchar(50)
ALTER TABLE Patient_Detail ALTER COLUMN P_Disease_Remarks nvarchar(50)


select * FROM Patient_Detail



ALTER TABLE Transaction_Detail ALTER COLUMN Tr_Number nvarchar(50)
ALTER TABLE Transaction_Detail ALTER COLUMN Tr_Type nvarchar(50)

select * FROM Transaction_Detail

ALTER TABLE Room_Detail ALTER COLUMN R_Availability nvarchar(50)
ALTER TABLE Room_Detail ALTER COLUMN R_Type nvarchar(50)


--9--

ALTER TABLE Appointment_Detail  ALTER COLUMN A_Date date
select *from Patient_Detail
--10--
Alter table Patient_Detail Drop column P_MiddleName
select *from Patient_Detail
 --11--
 Alter table Doctor_Detail Drop column D_Gender
 select *from Doctor_Detail
 --12--
 sp_rename 'Transaction_Detail.Tr_B_Amount','Tr_Bill_Amount '	
  select *from Transaction_Detail
  --13--
  select *from Hospital_Detail
  select *from Room_Detail

  --14--
  select R_ID, R_Number, R_Availability  from Room_Detail

  --15--
  select H_Name,H_ContactNo  from Hospital_Detail
  where H_Type='Private Hospital'
  --16---
  select P_FirstName,P_LastName,P_ContactNo,P_Disease,P_City  from Patient_Detail
  where P_City='Ahmedabad'

  --17--
  select P_ID,P_FirstName,P_LastName,P_ContactNo,P_City  from Patient_Detail
  where P_Disease='Tooth Break' 
  
  --18--
select R_ID, R_Number, R_Availability,R_Charge from Room_Detail
where R_Type='Non-AC'

--19--
select D_ID,D_Name,D_Salary,D_EmailID,D_ContactNo,D_Address,D_City,H_ID from Doctor_Detail
where D_Designation='Ortho'

--20--
Exec sp_rename 'Transaction_Detail','Transaction_Master'
