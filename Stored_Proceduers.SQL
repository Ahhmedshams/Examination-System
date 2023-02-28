----------------------------------------------Create Stored proceduers------------------------------------------------

-----------------Instractor Stored proc------------------

--1) Insert Instractor

CREATE PROC SP_InsertInstractor @Fname  NVARCHAR(20) ,
				@Lname NVARCHAR(20),@age INT  = NULL , @gender  VARCHAR(6) ,
				@email VARCHAR(50) , @Phone VARCHAR(6) ,
				@Zip_code VARCHAR(10) = NULL , @Street NVARCHAR(50) = NULL,
				@City NVARCHAR(50) = NULL , @password VARCHAR(50)  ,@Salary INT = NULL ,@Dept INT = NULL 
AS 
BEGIN
	BEGIN TRY
			INSERT INTO Instractor ( Fname, Lname, Ins_age, Ins_gender, Ins_email ,Zip_code ,Street , City ,  Ins_password , Ins_Phone , Ins_Salary , Ins_Dept )
				VALUES (@Fname, @Lname ,@age , @gender,@email, @Zip_code , @Street , @City ,@password, @Phone , @Salary , @Dept  );
	END TRY
	BEGIN CATCH 
		SELECT 'Error'
	END CATCH
END
--2) Delete Instractor 

--By Id
CREATE PROC SP_DeleteInstractorById @id INT
AS
BEGIN 
		IF EXISTS ( SELECT Ins_Id FROM Instractor WHERE Ins_Id =  @ID   )
			BEGIN
				delete from Instractor
				where Ins_Id = @id
			END
		ELSE
			SELECT 'This Instractor Not Exist'
END
--3) Select Instractor 

--Get all
CREATE PROC SP_GetAllInstractors
AS
BEGIN 
		SELECT * 
		FROM Instractor 
END

--Get By City 
CREATE PROC SP_GetInstractorsByCity  @City NVARCHAR(50)
AS
BEGIN 
		SELECT * 
		FROM Instractor 
		WHERE City = @City
END

--Get By Dept 
CREATE PROC SP_GetInstractorsByDept  @Dept  INT
AS
BEGIN 
		SELECT * 
		FROM Instractor 
		WHERE Ins_Dept = @Dept
END
--Get By ID 
CREATE PROC SP_GetInstractorsByID  @ID  INT
AS
BEGIN 
		
IF EXISTS ( SELECT Ins_Id FROM Instractor WHERE Ins_Id =  @ID  )
			BEGIN
				SELECT * 
				FROM Instractor 
				WHERE Ins_Id =  @ID
			END
		ELSE
			SELECT 'This Instractor Not Exist'
END
--4) Update Instractor 
CREATE PROC [dbo].SP_UpdateInstractor
				@id INT,
				@Fname  NVARCHAR(20) = NULL,
				@Lname NVARCHAR(20) = NULL,
				@age INT  = NULL , 
				@gender  VARCHAR(6) = NULL ,
				@email VARCHAR(50) = NULL ,
				@Phone VARCHAR(6) = NULL ,
				@Zip_code VARCHAR(10) = NULL ,
				@Street NVARCHAR(50) = NULL,
				@City NVARCHAR(50) = NULL ,
				@password VARCHAR(50) = NULL ,
				@Salary INT = NULL ,
				@Dept INT = NULL
AS
BEGIN 
	IF EXISTS ( SELECT Ins_id FROM Instractor WHERE Ins_id =  @ID )
			UPDATE Instractor 
			SET
				Fname =isnull(@Fname,Fname),
				Lname =isnull(@Lname,Lname),
				Ins_age = isnull(@age,Ins_age),
				Ins_email = ISNULL(@email, Ins_email),
				Zip_code = ISNULL( @Zip_code , Zip_code),
				Street = ISNULL(@Street,Street),
				City = ISNULL(@City,City),
				Ins_password = ISNULL(@password,Ins_password),
				Ins_Phone = ISNULL(@Phone,Ins_Phone),
				Ins_Dept = ISNULL(@Dept,Ins_Dept),
				Ins_Salary = ISNULL(@Salary,Ins_Salary),
				Ins_gender = ISNULL( @gender,Ins_gender)
			where Ins_id = @id
	ELSE
			SELECT 'This Instractor Not Exist'	
END
-----------------Department Stored proc------------------
--1) Insert Department
CREATE PROC SP_InsertDepartment @name  NVARCHAR(30) ,
				@Manager INT = NULL, @HireDate DATE  = NULL 
				 
AS 
BEGIN
	BEGIN TRY
			INSERT INTO Department ( Dept_Name, Dept_Manager, HireDate)
				VALUES (@name, @Manager , ISNULL(@HireDate, GETDATE())  );
	END TRY
	BEGIN CATCH 
		SELECT 'Error'
	END CATCH
END

--2) Delete Department 

--By Id
CREATE PROC SP_DeleteDepartmentById @id INT
AS
BEGIN 
		IF EXISTS ( SELECT Dept_id FROM Department WHERE Dept_id =  @ID   )
			BEGIN
				delete from Department
				where Dept_id = @id
			END
		ELSE
			SELECT 'This Department Not Exist'
END

--3) Select Department 

--Get all
CREATE PROC SP_GetAllDepartmentS
AS
BEGIN 
		SELECT * 
		FROM Department 
END

--Get By ID 
CREATE PROC SP_GetDepartmentByID  @ID  INT
AS
BEGIN 
		
IF EXISTS ( SELECT Dept_id FROM Department WHERE Dept_id =  @ID  )
			BEGIN
				SELECT * 
				FROM Department 
				WHERE Dept_id =  @ID
			END
		ELSE
			SELECT 'This Department Not Exist'
END

--4) Update Department 
CREATE PROC [dbo].SP_UpdateDepartment
				@id INT,
				@name  NVARCHAR(20) = NULL,
				@Manager INT = NULL, @HireDate DATE  = NULL
AS
BEGIN 
	IF EXISTS ( SELECT Dept_id FROM Department WHERE Dept_id =  @ID )
			UPDATE Department 
			SET
				Dept_Name =isnull(@name,Dept_Name),
				Dept_Manager =isnull(@Manager,Dept_Manager),
				HireDate = isnull(@HireDate,HireDate)
				
			where Dept_id = @id
	ELSE
			SELECT 'This Department Not Exist'	
END

-----------------Student Stored proc------------------

--1) Insert Student

CREATE PROC SP_InsertStudent @Fname  NVARCHAR(20) ,
				@Lname NVARCHAR(20),@age INT  = NULL , @gender  VARCHAR(6) ,
				@email VARCHAR(50) , @Phone VARCHAR(6) ,
				@Zip_code VARCHAR(10) = NULL , @Street NVARCHAR(50) = NULL,
				@City NVARCHAR(50) = NULL , @password VARCHAR(50)  ,@Dept INT = NULL ,@Supervisor INT = NULL
AS 
BEGIN
	BEGIN TRY
			INSERT INTO Students ( Fname, Lname, Std_age,Std_gender, Std_email ,Zip_code ,Street , City ,  Std_password , Std_Phone , Std_Dept , Supervisor_id )
				VALUES (@Fname, @Lname ,@age , @gender,@email, @Zip_code , @Street , @City ,@password, @Phone , @Dept , @Supervisor  );
	END TRY
	BEGIN CATCH 
		SELECT 'Error'
	END CATCH
END


--2) Delete Student 

--By Id
CREATE PROC SP_DeleteStudentById @id INT
AS
BEGIN 
		IF EXISTS ( SELECT Std_id FROM Students WHERE Std_id = @id  )
			BEGIN
				delete from Students
				where Std_id = @id
			END
		ELSE
			SELECT 'This Student Not Exist'
END


--3) Select Student 

--Get all
CREATE PROC SP_GetAllStudent
AS
BEGIN 
		SELECT * 
		FROM Students 
END

--Get By City 
CREATE PROC SP_GetStudentsByCity  @City NVARCHAR(50)
AS
BEGIN 
		SELECT * 
		FROM Students 
		WHERE City = @City
END

--Get By Dept 
CREATE PROC SP_GetStudentsByDept  @Dept  INT
AS
BEGIN 
		SELECT * 
		FROM Students 
		WHERE Std_Dept = @Dept
END
--Get By ID 
CREATE PROC SP_GetStudentsByID  @ID  INT
AS
BEGIN 
		
IF EXISTS ( SELECT Std_Id FROM Students WHERE Std_Id =  @ID  )
			BEGIN
				SELECT * 
				FROM Students 
				WHERE Std_Id =  @ID
			END
		ELSE
			SELECT 'This Student Not Exist'
END

--4) Update Student 
CREATE PROC [dbo].SP_UpdateStudent
				@id INT,
				@Fname  NVARCHAR(20) = NULL ,
				@Lname NVARCHAR(20) = NULL,
				@age INT  = NULL ,
				@email VARCHAR(50) = NULL,
				@Phone VARCHAR(18) = NULL,
				@Zip_code VARCHAR(10) = NULL ,
				@Street NVARCHAR(50) = NULL,
				@City NVARCHAR(50) = NULL ,
				@password VARCHAR(50) = NULL ,
				@Dept INT = NULL ,
				@Supervisor INT = NULL ,
				@gender  VARCHAR(6) =NULL
AS
BEGIN 
	IF EXISTS ( SELECT Std_Id FROM Students WHERE Std_Id =  @ID )
			UPDATE Students 
			SET
				Fname =isnull(@Fname,Fname),
				Lname =isnull(@Lname,Lname),
				Std_age = isnull(@age,Std_age),
				Std_email = ISNULL(@email, Std_email),
				Zip_code = ISNULL( @Zip_code , Zip_code),
				Street = ISNULL(@Street,Street),
				City = ISNULL(@City,City),
				Std_password = ISNULL(@password,Std_password),
				Std_Phone = ISNULL(@Phone,Std_Phone),
				Std_Dept = ISNULL(@Dept,Std_Dept),
				Supervisor_id = ISNULL(@Supervisor,Supervisor_id),
				Std_gender = ISNULL( @gender,Std_gender)
			where Std_id = @id
	ELSE
			SELECT 'This Student Not Exist'	
END

-----------------Courses Stored proc------------------

--1) Create Course

CREATE PROC SP_InsertCourse @name NVARCHAR(50) , @Duration VARCHAR(10) = NULL , @Decription NVARCHAR(MAX) = NULL
AS
BEGIN
		IF NOT EXISTS ( SELECT Course_Name FROM Courses WHERE Course_Name = @name  )
			INSERT INTO Courses ( Course_Name, Duration, Decription)
				VALUES (@name, @Duration , @Decription);
		ELSE
			SELECT 'This Course already Exist'
END
------------------------------------------------------------------------------------------------------------------------------------------
--2) Delete Course 

--By name
CREATE PROC SP_DeleteCourseByName @name NVARCHAR(50)
AS
BEGIN 
		IF EXISTS ( SELECT Course_Name FROM Courses WHERE Course_Name = @name  )
			BEGIN
				delete from Courses
				where Course_Name = @name 
			END
		ELSE
			SELECT 'This Course Not Exist'
END

--By Id
CREATE PROC SP_DeleteCourseById @id INT
AS
BEGIN 
		IF EXISTS ( SELECT Course_Id FROM Courses WHERE Course_Id = @id  )
			BEGIN
				delete from Courses
				where Course_Id = @id
			END
		ELSE
			SELECT 'This Course Not Exist'
END

------------------------------------------------------------------------------------------------------------------------------------------
--3) Select Course 

--Get all
CREATE PROC SP_GetAllCourse 
AS
BEGIN 
		SELECT * 
		FROM Courses 
END

--Get By Name 
CREATE PROC SP_GetCourseByName  @name NVARCHAR(50)
AS
BEGIN 
		SELECT * 
		FROM Courses 
		WHERE Course_name = @name
END
------------------------------------------------------------------------------------------------------------------------------------------
--4) Update Course 
CREATE PROC SP_UpdateCourse @id INT , @name NVARCHAR(50) =null , @Duration VARCHAR(10) =null  , @Decription NVARCHAR(MAX) =null 
AS
BEGIN 

	IF EXISTS ( SELECT Course_Id FROM Courses WHERE Course_Id = @id  )
			BEGIN
				UPDATE Courses 
				SET Course_Name = isnull(@name,Course_Name),
					Duration = isnull( @Duration,Duration) ,
					Decription= isnull(  @Decription , Decription)
				WHERE Course_Id = @id
			END
	ELSE
			SELECT 'This Course Not Exist'	
END

SP_GetAllCourse
SP_UpdateCourse @id = 4 ,@name ='C++' , @Duration = '20H',  @Decription ='essential'
SP_createCourse  @name = 'C', @Duration = '30h' , @Decription ='essential'


-----------------Topic Stored proc------------------
--1) Insert Topic

CREATE PROC SP_InsertTopic @name NVARCHAR(50), @Decription nvarchar(40) = NULL 
AS
BEGIN
		IF NOT EXISTS ( SELECT Topic_Name FROM Topics WHERE Topic_Name = @name  )
			INSERT INTO Topics ( Topic_Name, Topic_Desc)
				VALUES (@name, @Decription);
		ELSE
			SELECT 'This Topic already Exist'
END

--3) Select Topic 

--Get all
CREATE PROC SP_GetAllTopic 
AS
BEGIN 
		SELECT * 
		FROM Topics 
END

--Get By Name 
CREATE PROC SP_GetTopicByName  @name nvarchar(20)
AS
BEGIN 
		SELECT * 
		FROM Topics 
		WHERE Topic_Name = @name
END

--4) Delete Topic 

--By name
CREATE PROC SP_DeleteTopicByName @name nvarchar(50)
AS
BEGIN 
		IF EXISTS ( SELECT Topic_Name FROM Topics WHERE Topic_Name = @name  )
			BEGIN
				delete from Topics
				where Topic_Name = @name 
			END
		ELSE
			SELECT 'This Topic Not Exist'
END

--By Id
CREATE PROC SP_DeleteTopicById @id INT
AS
BEGIN 
		IF EXISTS ( SELECT Topic_ID FROM Topics WHERE Topic_ID = @id  )
			BEGIN
				delete from Topics
				where Topic_ID = @id
			END
		ELSE
			SELECT 'This Topic Not Exist'
END


--Update
CREATE PROC [dbo].SP_UpdateTopic
			@id INT,
			@name nvarchar(50) = null,
			@Decription nvarchar(40) = NULL 
AS
BEGIN 
	IF EXISTS ( SELECT Topic_ID FROM Topics WHERE Topic_ID = @id  )
			UPDATE Topics 
			SET
				[Topic_Name] =isnull(@name,[Topic_Name]),
				[Topic_Desc] = isnull(@Decription,[Topic_Desc])
			where [Topic_ID] = @id
	ELSE
			SELECT 'This Topic Not Exist'	
END
-----------------Course_Topics Stored proc------------------
--1) Insert Course_Topics
/*
CREATE PROC SP_InsertCourse_Topics @name NVARCHAR(50) , @Duration VARCHAR(10) = NULL , @Decription NVARCHAR(MAX) = NULL
AS
BEGIN
		IF NOT EXISTS ( SELECT Course_Name FROM Courses WHERE Course_Name = @name  )
			INSERT INTO Courses ( Course_Name, Duration, Decription)
				VALUES (@name, @Duration , @Decription);
		ELSE
			SELECT 'This Course already Exist'
END
*/



-----------------Question Stored proc------------------

--1) Insert Question 
 create proc [dbo].[SP_insertQuestion] 
			@Q_Content varchar(max),
			@Q_Correct_Answer varchar(MAX),
			@Q_Type int,
			@Crs_ID int
as
	begin try
		insert into Questions(Q_Content, Correct_Answer, Q_Type, Crs_ID)
		values(@Q_Content,@Q_Correct_Answer,@Q_Type,@Crs_ID)
	end try
	begin catch
		select 'Error'
	end CATCH

--2) Select Question
--By ID
create proc [dbo].[SP_selectQuestionByID] 
			@Q_ID int
			
as
	begin try
		select *  from Questions
		where Question_ID = @Q_ID

	end try
	begin catch
		select 'Error'
	end CATCH


--Get ALL
create proc [dbo].[SP_showAllQuestions] 					
as
	begin try
		select *  from Questions
		
	end try
	begin catch
		select 'Error'
	end CATCH

-- 3) Update Question
 create proc [dbo].[SP_updateQuestions] 
			@Q_ID int,
			@Q_Content varchar(300) = null,
			@Q_Type int = null,
			@Q_Correct_Answer varchar(300) = null,
			@Crs_ID int = null
as
	begin try
		update Questions 
		set
			Q_Content=isnull(@Q_Content,Q_Content),
			Q_Type = isnull(@Q_Type,Q_Type),
			Correct_Answer = isnull(@Q_Correct_Answer,Correct_Answer),
			Crs_ID =isnull(@Crs_ID,Crs_ID)
		where Question_ID = @Q_ID

	end try
	begin catch
		select 'Error'
	end catch

--4) Delete Question 

 create proc [dbo].[SP_deleteQuestions] 
			@Q_ID int	
as
	begin try
		delete from Questions
		where Question_ID = @Q_ID

	end try
	begin catch
		select 'Error'
	end CATCH

-----------------QuestionChoices Stored proc------------------

--1) Insert QuestionChoices 
CREATE PROC [dbo].[InsQuestionChoices] @id int, 
							   @Opt1 varchar(300) = NULL,
							   @Opt2 varchar(300) = NULL,
							   @Opt3 varchar(300) = NULL,
							   @Opt4 varchar(300) = null			
AS
	BEGIN TRY

		INSERT INTO Question_Choices(Question_ID, [Option-1], [Option-2], [Option-3], [Option-4])
		VALUES( @id, @Opt1, @Opt2, @Opt3, @Opt4)

	END TRY
	BEGIN CATCH
		SELECT 'Error'
	END CATCH

--2) DELETE QuestionChoices 

CREATE PROC [dbo].[DelQuestionChoice] @id int

AS
	BEGIN TRY

		DELETE FROM Question_Choices
		WHERE  Question_ID= @id
		
	END TRY
	BEGIN CATCH
		SELECT 'Error'
	END CATCH


--3) SELECT  Question Choice

--SELECT ALL Question Choice
CREATE PROC [dbo].[SelectAllQuestionChoice]
 
AS
	BEGIN TRY

		SELECT * 
		FROM Question_Choices
	
	END TRY
	BEGIN CATCH
		SELECT 'Error'
	END CATCH


--SELECT SPECIFIC Question choices
CREATE PROC [dbo].[SelectQuestionChoice]  @id int

AS
	BEGIN TRY

		SELECT * 
		FROM Question_Choices
		WHERE Question_ID = @id
		
	END TRY
	BEGIN CATCH
		SELECT 'Error'
	END CATCH


--3) UPDATE  Question Choice
CREATE PROC [dbo].[UpQuestionChoice] @id int, 
							 @Opt1 varchar(300) = NULL,
							 @Opt2 varchar(300) = NULL,
							 @Opt3 varchar(300) = NULL,
							 @Opt4 varchar(300) = null

AS
	BEGIN TRY

		UPDATE Question_Choices
		SET [Option-1] = isnull(@Opt1, [Option-1]),
			[Option-2] = isnull(@Opt2, [Option-2]),
			[Option-3] = isnull(@Opt3, [Option-3]),
			[Option-4] = isnull(@Opt4, [Option-4])
		WHERE Question_ID = @id
		
	END TRY
	BEGIN CATCH
		SELECT 'Error'
	END CATCH

-----------------Ins_courses Stored proc------------------

--1) Insert Ins_courses
create proc [dbo].[insert_Ins_Crs] @Crs_ID int, @Ins_ID int
as
	begin try
		insert into Ins_courses
		values (@Crs_ID, @Ins_ID)
	end try
	begin catch
		select 'error'
	end CATCH

--2) DELETE Ins_courses 

create proc [dbo].[delete_Ins_Crs] @Crs_ID int, @Ins_ID int
as
	begin try
		delete from Ins_courses
		where Course_id = @Crs_ID and Ins_id = @Ins_ID
	end try
	begin catch
		select 'error'
	end CATCH





/* instructor courses*/
create proc [dbo].[select_All_Ins_Crs] @Crs_ID int
as
	begin try
		select * from Ins_courses
		where Course_id = @Crs_ID
	end try
	begin catch
		select 'error'
	end catch

--3) SELECT  Ins_courses
--courses for specific instructor 

create proc [dbo].[select_Crs_Ins] @Ins_ID int
as
	begin try
		select * from Ins_courses
		where Ins_id = @Ins_ID
	end try
	begin catch
		select 'error'
	end catch
--4) Update  Ins_courses
create proc [dbo].[up_Ins_Crs] @Crs_ID int, @Ins_ID int
as
	begin try
		update Ins_courses
		set Course_id = @Crs_ID
		WHERE Ins_id = @Ins_ID
	end try
	begin catch
		select 'error'
	end catch


-----------------Std_courses Stored proc------------------

--1) Insert Std_courses

create proc [dbo].[ins_St_Crs] @Crs_ID int, @St_ID int,  @St_Grade int = NULL
as
	begin try
		insert into Std_courses
		Values (@Crs_ID,@St_ID,@St_Grade)
	end try
	begin catch
		select 'Error'
	end CATCH

--2) Delete Std_courses


CREATE proc [dbo].[de_St_Crs] @St_ID int, @Crs_ID int
as
	begin try
		delete from Std_courses
		where Std_id = @St_ID and Course_id = @Crs_ID
	end try
	begin catch
		select 'Error'
	end CATCH



--3) Select Std_courses

create proc [dbo].[select_all_course_students] @Crs_ID int
as
	begin try
		select * from Std_courses
		where Course_id  = @Crs_ID 
	end try
	begin catch
		select 'Error'
	end CATCH


--courses for specific student 

CREATE proc [dbo].[select_all_student_courses] @St_ID int
as
	begin try
		select SC.*,C.Course_Name 
		from Std_courses SC inner join Courses C
		on SC.Course_id = C.Course_Id
		where Std_id = @St_ID 
	end try
	begin catch
		select 'Error'
	end CATCH


--specific Student courses with grade
create proc [dbo].[sel_St_Crs] @St_ID int, @Crs_ID int = NULL
as
	begin try
		select * from Std_courses
		where Std_id = @St_ID and Course_id = @Crs_ID
	end try
	begin catch
		select 'Error'
	end catch

-- 3) Update Std_courses
create proc [dbo].[up_St_Grade] @St_ID int, @Crs_ID int, @St_Grade int
as
	begin try
		update Std_courses
		set Grade = @St_Grade
		where Std_id = @St_ID and Course_id = @Crs_ID
	end try
	begin catch
		select 'Error'
	end CATCH


