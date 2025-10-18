create database City_Hospital;
use City_Hospital;

CREATE TABLE Patients (
    Patient_ID INT ,
    Patient_Name VARCHAR(50),
    Age INT,
    Gender enum ('M','F'),
    Admission_Date DATE
);
select *from Patients;

-- ALTER table --Add Column --
Alter table Patients add Doctor_Assigned VARCHAR(50);

-- ALTER table Modify Column --
Alter table Patients modify column Patient_Name varchar(100);

-- RENAME Table --
Rename table Patients to Patient_Info;

-- TRUNCATE & DROP --
Truncate table Patient_Info;
Drop table Patient_Info;