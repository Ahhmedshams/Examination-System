----------------------------------------------Create Stored proceduers------------------------------------------------

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







