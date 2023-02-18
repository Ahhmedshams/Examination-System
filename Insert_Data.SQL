--------------------------------------------------------------Insert Data------------------------------------------------
USE db_project
--1)Students Table
SP_InsertStudent  @Fname = 'Ahmed' ,@Lname = 'Taha' , @gender = 'male',@age = 22 , @email = 'Example1@example.com' , @Phone = '01023456789' ,@Zip_code = '00000' , @Street  = 'Street1' ,@City = 'Cairo' ,@password = '123456' ,@Dept =1 ,@Supervisor =1 
SP_InsertStudent  @Fname = 'Taha' ,@Lname = 'Ahmed' , @gender = 'male',@age = 22 , @email = 'Example2@example.com' , @Phone = '01033456789' ,@Zip_code = '00001' , @Street  = 'Street2' ,@City = 'Cairo' ,@password = '123456' ,@Dept =1 ,@Supervisor =1 
SP_InsertStudent  @Fname = 'Nasr' ,@Lname = 'Taha' , @gender = 'male',@age = 24 , @email = 'Example3@example.com' , @Phone = '01025456789' ,@Zip_code = '50000' , @Street  = 'Street5' ,@City = 'Cairo' ,@password = '123456' ,@Dept =1 ,@Supervisor =1 
SP_InsertStudent  @Fname = 'Nora' ,@Lname = 'Taha' , @gender = 'male',@age = 22 , @email = 'Example4@example.com' , @Phone = '01023456789' ,@Zip_code = '00000' , @Street  = 'Street6' ,@City = 'Cairo' ,@password = '123456' ,@Dept =1 ,@Supervisor =1 
SP_InsertStudent  @Fname = 'Asmaa' ,@Lname = 'Ahmed' , @gender = 'female',@age = 25 , @email = 'Example6@example.com' , @Phone = '01723456789' ,@Zip_code = '00000' , @Street  = 'Street8' ,@City = 'Cairo' ,@password = '123456' ,@Dept =1 ,@Supervisor =1 
SP_InsertStudent  @Fname = 'Aya' ,@Lname = 'Abdo' , @gender = 'female',@age = 26 , @email = 'Example7@example.com' , @Phone = '01002345789' ,@Zip_code = '04000' , @Street  = 'Street22' ,@City = 'Cairo' ,@password = '123456' ,@Dept =1 ,@Supervisor =1 
SP_InsertStudent  @Fname = 'Eman' ,@Lname = 'Hessen' , @gender = 'female',@age = 23 , @email = 'Example8@example.com' , @Phone = '01062345789' ,@Zip_code = '04060' , @Street  = 'Street9' ,@City = 'Tanta' ,@password = '123456' ,@Dept =1 ,@Supervisor =1 
SP_InsertStudent  @Fname = 'Mona' ,@Lname = 'Hessen' , @gender = 'female',@age = 25 , @email = 'Example9@example.com' , @Phone = '01062399989' ,@Zip_code = '04060' , @Street  = 'Street8' ,@City = 'Tanta' ,@password = '123456' ,@Dept =1 ,@Supervisor =1 
SP_InsertStudent  @Fname = 'Maram' ,@Lname = 'Magdy' , @gender = 'female',@age = 23 , @email = 'Example10@example.com' , @Phone = '0106256989' ,@Zip_code = '04060' , @Street  = 'Street8' ,@City = 'Tanta' ,@password = '123456' ,@Dept =1 ,@Supervisor =1 
SP_InsertStudent  @Fname = 'Manal' ,@Lname = 'Magdy' , @gender = 'female',@age = 23 , @email = 'Example11@example.com' , @Phone = '0106256989' ,@Zip_code = '04060' , @Street  = 'Street8' ,@City = 'Tanta' ,@password = '123456' ,@Dept =1 ,@Supervisor =1 
SP_InsertStudent  @Fname = 'Manar' ,@Lname = 'Mousa' , @gender = 'female',@age = 25 , @email = 'Example12@example.com' , @Phone = '0106256989' ,@Zip_code = '04060' , @Street  = 'Street8' ,@City = 'Tanta' ,@password = '123456' ,@Dept =1 ,@Supervisor =1 
SP_InsertStudent  @Fname = 'Mayar' ,@Lname = 'Ayman' , @gender = 'female',@age = 24 , @email = 'Example13@example.com' , @Phone = '0106256989' ,@Zip_code = '04060' , @Street  = 'Street8' ,@City = 'Tanta' ,@password = '123456' ,@Dept =1 ,@Supervisor =1 


SP_UpdateStudent @id = 5 ,@gender = 'female'
SP_GetALLStudent

SP_GetStudentsByDept 1
SP_GetStudentsByCity 'Tanta'
SP_GetStudentsByID 1
SP_DeleteStudentById 2


-- 2) Course 
SP_InsertCourse  @name ='MongoDB' , @Duration  = '6h' 
go
SP_InsertCourse  @name ='ES.Next' , @Duration  = '12h'
go
SP_InsertCourse  @name ='SourceControle' , @Duration  = '7h'
go
SP_InsertCourse  @name ='Node js' , @Duration  = '6h'
go
SP_InsertCourse  @name ='Js' , @Duration  = '12h' 
go
SP_InsertCourse  @name ='CST' , @Duration  = '12h' 
go
SP_InsertCourse  @name ='Introduction to programing' , @Duration  = '23h', @Decription = 'Using C ' 
GO
SP_InsertCourse  @name ='HTML5&CSS3#' , @Duration  = '12h'
GO

SP_DeleteCourseByName 'CST'





