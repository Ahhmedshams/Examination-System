USE db_project

------------------------------------------------------Creation Tables-------------------------------------------


--1) Create Instractor Table 
CREATE TABLE Instractor (
Ins_id INT  NOT NULL IDENTITY(1,1) ,
Fname  NVARCHAR(20) NOT NULL ,
Lname NVARCHAR(20) NOT NULL , 
Ins_age INT ,
Ins_gender VARCHAR(6) , 
Ins_email VARCHAR(50) UNIQUE NOT NULL,
Ins_Phone VARCHAR(18),
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
Dept_Manager int ,
HireDate DATE DEFAULT GETDATE(),
CONSTRAINT Dept_id_PK PRIMARY KEY (Dept_id),
CONSTRAINT Dept_Manager_FK FOREIGN KEY (Dept_Manager) REFERENCES Instractor(Ins_id),
);

SET IDENTITY_INSERT Instractor OFF

--3) Create Student Table
CREATE TABLE Students (
Std_id INT NOT NULL IDENTITY(1,1),
Fname  NVARCHAR(20) NOT NULL ,
Lname NVARCHAR(20) NOT NULL , 
Std_age INT ,
Std_gender VARCHAR(6) , 
Std_email VARCHAR(50) UNIQUE NOT NULL,
Zip_code VARCHAR(10) ,
Street NVARCHAR(50) , 
City NVARCHAR(50) ,
Std_password VARCHAR(50) NOT NULL ,
Std_Phone VARCHAR(18),
Std_Dept INT ,
Supervisor_id INT  NULL,
CONSTRAINT Std_id_PK PRIMARY KEY (Std_id),
CONSTRAINT Std_Dept_FK FOREIGN KEY (Std_Dept) REFERENCES Department(Dept_id),
CONSTRAINT Supervisor_id_FK FOREIGN KEY (Supervisor_id) REFERENCES Students (Std_id),
);


--4) Create Courses Table
CREATE TABLE Courses(
	Course_Id int NOT NULL IDENTITY(1,1),
	Course_Name varchar(50) NOT NULL UNIQUE,
	Duration varchar(10) NULL,
	Decription NVARCHAR(MAX) NULL,
	CONSTRAINT Courses_Id_PK PRIMARY KEY (Course_Id)
)



--5) Create Topic Table
CREATE TABLE Topics(
	[Topic_ID] int NOT NULL IDENTITY(1,1),
	[Topic_Name] nvarchar(50) NOT NULL UNIQUE,
	[Topic_Desc] nvarchar(max) NULL,
	CONSTRAINT Topic_ID_PK PRIMARY KEY (Topic_ID)
)
--ALTER TABLE Topics ALTER COLUMN  [Topic_Name] nvarchar(max) NOT NULL UNIQUE


SELECT TABLE_NAME,
       CONSTRAINT_TYPE,CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME='Topics';
 
--6) Create Course_Topics Table
CREATE TABLE Course_Topics(
Topic_id int NOT NULL ,
Course_id INT NOT NULL,
CONSTRAINT Course_Topics_Topic_id_FK FOREIGN KEY (Topic_id) REFERENCES Topics(Topic_ID),
CONSTRAINT Course_Topics_Course_id_FK FOREIGN KEY (Course_id) REFERENCES Courses (Course_Id),
CONSTRAINT Course_Topics_PK PRIMARY KEY (Topic_id,Course_id)
)

--7) Create Std_courses Tables
CREATE TABLE Std_courses(
Course_id INT NOT NULL,
Std_id INT NOT NULL,
Grade INT ,
CONSTRAINT Std_courses_Course_id_FK FOREIGN KEY (Course_id) REFERENCES Courses (Course_Id),
CONSTRAINT Std_courses_Std_id_FK FOREIGN KEY (Std_id) REFERENCES Students(Std_id),
CONSTRAINT Std_courses_PK PRIMARY KEY (Course_id,Std_id)
)
--8) Create Ins_courses Table
CREATE TABLE Ins_courses(
Course_id INT NOT NULL,
Ins_id INT NOT NULL,
CONSTRAINT Ins_courses_Course_id_FK FOREIGN KEY (Course_id) REFERENCES Courses (Course_Id),
CONSTRAINT Ins_courses_Std_id_FK FOREIGN KEY (Ins_id) REFERENCES Instractor(Ins_id),
CONSTRAINT Ins_courses_PK PRIMARY KEY (Course_id,Ins_id)
)

--9) Create Questions Table
CREATE TABLE Questions(
	[Question_ID] int IDENTITY(1,1) NOT NULL,
	[Crs_ID] int NULL,
	[Q_Type] VARCHAR(4) NULL,
	[Q_Content] varchar(300) NOT NULL,
	[Correct_Answer] char(1) NULL,
	CONSTRAINT QUESTION_ID_PK PRIMARY KEY (Question_ID)
)

--10) Create Question_Choices Table
CREATE TABLE Question_Choices(
	[Question_ID] [int] NOT NULL,
	[A] varchar(max) Not NULL,
	[B] varchar(max) Not NULL,
	[C] varchar(max)  NULL,
	[D] varchar(max)  NULL,
	CONSTRAINT Q_ID_FK FOREIGN KEY (Question_ID) REFERENCES Questions(Question_ID),
	CONSTRAINT Q_choices_PK PRIMARY KEY (Question_ID)
	)


--11) Create Exam Table
CREATE TABLE Exam(
	[ExamId] [int] IDENTITY(1,1) NOT NULL,
	[ExamGrade] [float] NULL,
	[ExamTime] [float] NULL,
	[ExamDate] [date] NULL,
	[CourseId] [int] NULL,
	CONSTRAINT Course_ID_FK FOREIGN KEY (CourseId) REFERENCES Courses(Course_Id),
	CONSTRAINT Exam_PK PRIMARY KEY (ExamId)
	)

--12) Create Exam Question
CREATE TABLE [dbo].[Exam_Question](
	[ExamId] [int] NOT NULL,
	[QuesId] [int] NOT NULL,
	CONSTRAINT Ques_ID_FK FOREIGN KEY ([QuesId]) REFERENCES Questions([Question_ID]),
	CONSTRAINT Exam_Question_PK PRIMARY KEY (ExamId,QuesId)
	)
	


--13) Create Student ExamAnswers table
CREATE TABLE [dbo].[Student_Answer](
	[StudId] [int] NOT NULL,
	[ExamId] [int] NOT NULL,
	[QuesId] [int] NOT NULL,
	[StudQuesAns] char(1) NULL,
	CONSTRAINT Stud_ID_FK FOREIGN KEY ([StudId]) REFERENCES Students([Std_id]),
	CONSTRAINT Exam_ID_FK FOREIGN KEY ([ExamId]) REFERENCES Exam([ExamId]),
	CONSTRAINT Question_ID_FK FOREIGN KEY ([QuesId]) REFERENCES Questions([Question_ID]),
	CONSTRAINT Stud_QAns_PK PRIMARY KEY (StudId,ExamId,QuesId) )

---constraints
alter table Instractor  add constraint CHECK_Ins_Gender
check(Ins_gender in ('male', 'female'))

alter table Students  add constraint CHECK_Std_Gender
check(Std_gender in ('male', 'female'))

alter TABLE Instractor
ADD CONSTRAINT CHECK_Ins_Email  CHECK(Ins_email LIKE '%___@___%') 

alter TABLE Students
ADD CONSTRAINT CHECK_Std_Email  CHECK(Std_email LIKE '%___@___%') 

SELECT * FROM Students s  WHERE  s.Std_email  NOT LIKE '%___@___%'


