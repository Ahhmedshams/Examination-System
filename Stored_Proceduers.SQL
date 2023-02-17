----------------------------------------------Create Stored proceduers------------------------------------------------

-----------------Courses Stored proc------------------
--1) Create Course

CREATE PROC SP_createCourse @name NVARCHAR(50) , @Duration INT , @Decription NVARCHAR(MAX)
AS
BEGIN
BEGIN TRY 
INSERT INTO Courses ( Course_Name, Duration, Decription)
VALUES (@name, @Duration , @Decription);
END TRY 
BEGIN CATCH 
SELECT 'Error'
END CATCH
END


SP_createCourse @name = 'OOP' ,  @Duration = 12