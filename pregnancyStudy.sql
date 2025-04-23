CREATE DATABASE pregnancyStudy; --creating the pregnancystudy database
USE pregnancyStudy;
--creating the girl table with theses 
CREATE TABLE Girl (
   girl_id INT PRIMARY KEY,
   name VARCHAR(255),
   age INT,
   date_of_birth DATE,
   education_level VARCHAR(50)
);

-- INSERT INTO Girl(girl_id, name, age, date_of_birth, education_level)
-- VALUES
-- ("1", "kulekula Amina", "14", "2011/6/3","secondary"),
-- ("2", "Nakalema sara", "15", "2010/12/10","secondary"),
-- ("3", "kisakye Grace", "14", "2011/8/2","Primary"),
-- ("4", "Amulet Haula", "13", "2009/11/4","Primary"),
-- ("5", "Nabossa precious", "17", "2008/9/7","secondary")

-- SELECT * FROM Girl


--creating the table for pregnancy case
CREATE TABLE PregnancyCase (
  case_id INT PRIMARY KEY,
  girl_id INT,
  age_at_pregnancy INT,
  pregnancy_status VARCHAR(255), -- e.g. 'current', 'previous'
  consequences VARCHAR(255),
  FOREIGN KEY (girl_id) REFERENCES Girl(girl_id)
);

-- INSERT INTO PregnancyCase(Case_id, girl_id, age_at_pregnancy, pregnancy_status, consequences)
-- VALUES
-- ("501", "1", "14", "previous", "school dropout"),
-- ("502", "2", "15", "current", "miscarriage")


--creating the table for the area/district
CREATE TABLE Area (
 area_id INT PRIMARY KEY,
 Name varchar(255),
 rural_urban BOOLEAN );

 INSERT INTO Area(area_id, Name, rural_urban)
 VALUES("25", "rural_Jinja", "1")
     

   --creating the table the health service in the area 
CREATE TABLE Reproductive_Health_Service (
 service_ID int PRIMARY KEY,
 Name varchar(255),
 type varchar(255), 
 Accessibility varchar(255), 
 area_id INT  );
  
 --table to provide the causes of early pregnancies in tenagers 
  CREATE TABLE Cause (
    cause_id INT PRIMARY KEY,
    CAUSES varchar(255)
);

--table for the survey.
CREATE TABLE Survey(
    Survey_ID int,
    girl_id int,
    question varchar(255),
    answer varchar(255),
    Survey_date DATE,
    FOREIGN KEY (girl_id) REFERENCES Girl(girl_id)
);
    
    
