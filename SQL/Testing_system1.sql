-- Testing system 1 

-- asm1
-- Table 1:Department
 create  database Testing_system1 ;
   
   use Testing_system1 ;
  
 CREATE TABLE department1   (
    departmentid INT PRIMARY KEY AUTO_INCREMENT,
    departmentname VARCHAR(255)
);
-- Table 2: Position-
CREATE TABLE position (
    positionID INT PRIMARY KEY AUTO_INCREMENT,
    positionName VARCHAR(255)
);
-- Table 3: Account
 CREATE TABLE Account1 (
    account12ID   INT PRIMARY KEY AUTO_INCREMENT,
    Email VARCHAR(25),
    FULLmame VARCHAR(33),
    departmentID INT,
    positionID INT,
    CREATEdate DATE
);
-- Table 4: Group
 CREATE TABLE  Group1(
 GroupID  INT PRIMARY KEY AUTO_INCREMENT,
 GroupName VARCHAR(25),
 CreatorID
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 