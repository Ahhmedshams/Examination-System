/*•	Report that returns the students information according to Department No parameter.*/
create proc getStudent @id int 
  as
select s.*,d.Dept_Name ,d.Dept_id
from Students s inner join Department d
on  s.Std_Dept =d.Dept_id
 where @id=Dept_id

  getStudent 2
---------------------------------------------------------------
/*•	Report that takes the student ID and returns the grades of the student in all courses. %*/
 create proc StudentGrade @id int 
  as
    select  Std_id,c.Course_Name,Grade
   from Courses c inner join Std_courses sc
   on c.Course_Id =sc.Course_id 
   where @id=Std_id

    StudentGrade 2
	----------------------------------------------------
/*•	Report that takes the instructor ID and returns the name of the courses that he teaches 
and the number of student per course.*/
 

 create proc CoursesbyInstructors @id int
   as
   select ic.Ins_id , count (sc.Std_id) as NumberOfStudents,c.Course_Name
   from Courses c inner join Ins_courses ic 
   on c.Course_Id  =ic.Course_id
   inner join Std_courses sc
   on c.Course_Id =sc.Course_id
    where  @id = Ins_id
	and ic.Ins_id in (@id)
   group by Course_Name,Ins_id
     
	 CoursesbyInstructors 4
	-------------------------------------------------------------------
--•	Report that takes course ID and returns its topics 

  create  proc CourseTopics @id int 
	as
	select Course_Id ,Topic_Name
	from Course_Topics ct inner join Topics t 
	 on ct.Topic_id =t.Topic_ID
	 where ct.Course_id = @id

	 CourseTopics 2

-----------------Question Stored proc------------------
--takes exam number and the student ID then returns the Questions in 
--this exam with the student answers
create proc [dbo].[Report_StdAnswerInExam] @Exam_id INT , @St_ID int
as
	BEGIN 
		begin try
				SELECT q.Q_Content  ,qc.A ,qc.B, qc.C, qc.D , sa.StudQuesAns ,q.Correct_Answer
				FROM Exam e INNER JOIN Student_Answer sa ON e.ExamId = sa.ExamId 
				INNER JOIN Questions q ON sa.QuesId = q.Question_ID
				INNER JOIN Question_Choices qc ON q.Question_ID = qc.Question_ID
				WHERE e.ExamId = @Exam_id AND sa.StudId = @St_ID
		end try
	begin catch
		select 'Error'
	end CATCH
END




--•	Report that takes exam number and returns 
--the Questions in it and chocies [freeform report]




create proc [dbo].[Report_QuestionAndChocies] @Exam_id int
as
	BEGIN 
		IF EXISTS ( SELECT ExamId FROM Exam WHERE ExamId =  @Exam_id   )
			BEGIN
				SELECT q.Q_Content , q.Correct_Answer ,qc.A ,qc.B, qc.C, qc.D
				FROM Exam e INNER JOIN Exam_Question eq ON eq.ExamId = e.ExamId 
				INNER JOIN Questions q ON eq.QuesId = q.Question_ID
				INNER JOIN Question_Choices qc ON q.Question_ID = qc.Question_ID
				WHERE e.ExamId =@Exam_id 
			END
		ELSE
			SELECT 'This Exam dose Not Exist'
END

Report_QuestionAndChocies 3