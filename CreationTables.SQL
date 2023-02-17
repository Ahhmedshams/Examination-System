USE db_project

------------------------------------------------------Creation Tables-------------------------------------------


--1) Create Instractor Table 
CREATE TABLE Instractor (
Ins_id INT  NOT NULL IDENTITY(1,1) ,
Fname  NVARCHAR(20) NOT NULL ,
Lname NVARCHAR(20) NOT NULL , 
Ins_age INT ,
Ins_email VARCHAR(50) UNIQUE NOT NULL,
Std_Phone VARCHAR(18),
Zip_code VARCHAR(10) ,
Street NVARCHAR(50) , 
City NVARCHAR(50) ,
Ins_password VARCHAR(50) NOT NULL ,
Ins_Salary INT ,
CONSTRAINT Ins_id_PK PRIMARY KEY (Ins_id),
);
-- Create Realation

ALTER TABLE Instractor ADD Ins_Dept int FOREIGN KEY REFERENCES Department(Dept_id)

--2) Create Department Table
CREATE TABLE Department (
Dept_id INT  NOT NULL IDENTITY(1,1),
Dept_Name NVARCHAR(30) NOT NULL UNIQUE,
Dept_Manager int NOT NULL,
HireDate DATE DEFAULT GETDATE(),
CONSTRAINT Dept_id_PK PRIMARY KEY (Dept_id),
CONSTRAINT Dept_Manager_FK FOREIGN KEY (Dept_Manager) REFERENCES Instractor(Ins_id),
);


--3) Create Student Table
CREATE TABLE Students (
Std_id INT NOT NULL IDENTITY(1,1),
Fname  NVARCHAR(20) NOT NULL ,
Lname NVARCHAR(20) NOT NULL , 
Std_age INT ,
Std_email VARCHAR(50) UNIQUE NOT NULL,
Zip_code VARCHAR(10) ,
Street NVARCHAR(50) , 
City NVARCHAR(50) ,
Std_password VARCHAR(50) NOT NULL ,
Std_Phone VARCHAR(18),
Std_Dept INT NOT NULL,
Supervisor_id INT NOT NULL,
CONSTRAINT Std_id_PK PRIMARY KEY (Std_id),
CONSTRAINT Std_Dept_FK FOREIGN KEY (Std_Dept) REFERENCES Department(Dept_id),
CONSTRAINT Supervisor_id_FK FOREIGN KEY (Supervisor_id) REFERENCES Students (Std_id),
);

--4) Create Courses Table
	CREATE TABLE Courses(
	[Crs_ID] int NOT NULL,
	[Cr_Name] varchar(50) NULL,
	CONSTRAINT Crs_ID_PK PRIMARY KEY (Crs_ID)
)


--5) Create Topic Table
CREATE TABLE Topics(
	[Topic_ID] int NOT NULL,
	[Topic_Name] varchar(20) NULL,
	[Topic_Desc] varchar(40) NULL,
	CONSTRAINT Topic_ID_PK PRIMARY KEY (Topic_ID)
)

--6) Create Course_Topics Table
CREATE TABLE Course_Topics(
Topic_id int NOT NULL,
Course_id INT NOT NULL,
CONSTRAINT Topic_id_FK FOREIGN KEY (Topic_id) REFERENCES Topics(Topic_ID),
CONSTRAINT Course_id_FK FOREIGN KEY (Course_id) REFERENCES Courses (Crs_ID),
CONSTRAINT Course_Topics_PK PRIMARY KEY (Topic_id,Course_id)
)

--7) Create Std_courses Tables
CREATE TABLE Std_courses(
Course_id INT NOT NULL,
Std_id INT NOT NULL,
Grade INT ,
CONSTRAINT Std_courses_Course_id_FK FOREIGN KEY (Course_id) REFERENCES Courses (Crs_ID),
CONSTRAINT Std_courses_Std_id_FK FOREIGN KEY (Std_id) REFERENCES Students(Std_id),
CONSTRAINT Std_courses_PK PRIMARY KEY (Course_id,Std_id)
)
--8) Create Ins_courses Table
CREATE TABLE Ins_courses(
Course_id INT NOT NULL,
Ins_id INT NOT NULL,
CONSTRAINT Ins_courses_Course_id_FK FOREIGN KEY (Course_id) REFERENCES Courses (Crs_ID),
CONSTRAINT Ins_courses_Std_id_FK FOREIGN KEY (Ins_id) REFERENCES Instractor(Ins_id),
CONSTRAINT Ins_courses_PK PRIMARY KEY (Course_id,Ins_id)
)

--9) Create Questions Table
CREATE TABLE Questions(
	[Question_ID] int IDENTITY(1,1) NOT NULL,
	[Crs_ID] int NULL,
	[Q_Type] int NULL,
	[Q_Content] varchar(300) NOT NULL,
	[Correct_Answer] varchar(300) NULL,
	[Answer-1] varchar(300) NOT NULL,
	[Answer-2] varchar(300) NOT NULL,
	[Answer-3] varchar(300) NULL,
	[Answer-4] varchar(300) NULL,
	CONSTRAINT QUESTION_ID_PK PRIMARY KEY (Question_ID)
)


