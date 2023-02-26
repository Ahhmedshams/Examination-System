--------------------------------------------------------------Insert Data------------------------------------------------
USE db_project
--1)Instractor Table
SP_InsertInstractor @Fname = 'Nada' ,@Lname = 'Ahmed' , @gender = 'male',@age = 29 , @email = 'Example21@example.com' , @Phone = '01023456789' ,@Zip_code = '00000' , @Street  = 'Street1' ,@City = 'Cairo' ,@password = '123456' ,@Salary  = 20000

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



--Insert BULK DATA
INSERT INTO [Instractor] (Fname,Lname,Ins_age,Ins_gender,Ins_email,Ins_Phone,City,Street,Zip_code,Ins_password,Ins_Dept,Ins_Salary)
VALUES
  ('Alaa','Shams',29,'male','ut.lacus@hotmail.com','+202478280915','port Said','Al-Azhar','X6E 7QQ','DRB28CBE7OU',1,4109),
  ('Saed','El ot',36,'male','nec@icloud.com','+208846938474','Asyut','Al Muizz li Din Allah Street','J6L 2K1','MUY82JNK5TW',1,4368),
  ('Hosam','Ezat',33,'male','nibh.enim.gravida@hotmail.com','+205771287855','Aswan','Talaat Harb Street','440377','ZTS47YFX1YF',1,4208),
  ('Nour','Hassan',34,'male','mauris@google.com','+203058645863','	Cairo','Al-Azhar','723535','WSY71UOO3UT',1,4429),
  ('Alaa','Teto',27,'male','nisl@protonmail.com','+202534712454','Asyut','Darb Al Asfar Street','31-79','BVQ57ZQD7HS',1,4097),
  ('Ahmed','Shams',29,'male','eleifend.vitae.erat@google.com','+205784215348','Mansoura','Joseph Tito','436386','NML80KYU7KR',1,4458),
  ('Ahmed','Hassan',26,'male','dictum.eleifend@icloud.com','+205109397315','Sohag','Talaat Harb Street','567756','SNM13LDG9IU',1,4187),
  ('Hosam','Ezat',27,'male','dolor@hotmail.com','+204912482397','Mansoura','Darb Al Asfar Street','51143','QLD73KYG1XE',1,4395),
  ('Alaa','Teto',32,'male','rutrum.non@outlook.com','+203315683077','Asyut','Khan El-Khalili Street','412572','WRW26VNO6HU',1,4448),
  ('Saed','Nour',36,'male','sit.amet.orci@yahoo.com','+208365474182','Suze','Darb Al Asfar Street','8158','LXM01PFG8IH',1,4357),
  ('Abdulla','Nasr',29,'male','sapien.cursus@google.com','+200423132306','Suze','Talaat Harb Street','IO2I 9BX','DOM13UNA9OM',1,4137),
  ('Saed','Shams',35,'male','dui.nec@aol.com','+204551118361','Aswan','Masr W-el Sudan','80416','MZK41TVO8VZ',2,4031),
  ('Saed','wahba',28,'male','pharetra@icloud.com','+205757774534','Damietta','Al Muizz li Din Allah Street','4501-3981','NON22WZW9EM',2,4085),
  ('Abdulla','Shams',28,'male','lacinia@google.com','+206481137286','Sohag','Khan El-Khalili Street','271416','ONX14GOQ0FK',2,4203),
  ('Hosam','Hassan',33,'male','mauris@outlook.com','+201766332891','	Cairo','Al Muizz li Din Allah Street','5593-9666','BER12DMO7HC',2,4274),
  ('Nour','wahba',36,'male','augue.id@icloud.com','+205417986866','port Said','Darb Al Asfar Street','6441','TLQ36XSH5ZW',2,4280),
  ('Nour','Abdo',37,'male','donec.consectetuer.mauris@aol.com','+205194322835','Zagazig','Al-Azhar','45845','JDE91TWQ2HL',2,4362),
  ('Alaa','Shams',35,'male','curabitur.massa@hotmail.com','+208484856352','Damietta','Khan El-Khalili Street','437502','BIX77TTB1SP',2,4125),
  ('Taha','Hassan',32,'male','sit@yahoo.com','+206585165467','Minya','Darb Al Asfar Street','289845','MME42UCR8XR',2,4413),
  
  ('Moaz','Nasr',34,'male','vivamus.nisi@outlook.com','+208622431877','Alexandria','Khan El-Khalili Street','72883','JCU81XVM4DC',2,4281),
  ('Ahmed','Nour',29,'male','interdum.sed.auctor@protonmail.com','+205235986933','Faiyum','Masr W-el Sudan','713182','HJX51KYD7EV',2,4428),
  ('Moaz','Shams',33,'male','ultricies.dignissim.lacus@icloud.com','+202404084862','Alexandria','Joseph Tito','8008 KO','LMU97JEK5RK',3,4410),
  ('Alaa','Amir',26,'male','imperdiet.dictum@outlook.com','+207131741314','Suze','Al Muizz li Din Allah Street','51117','VYI70WDS6FI',3,4403),
  ('Taha','Amir',29,'male','ipsum@icloud.com','+203366517711','port Said','Talaat Harb Street','245887','RNV42YSO3DU',3,4392),
  ('Ahmed','Teto',34,'male','vitae.orci.phasellus@google.com','+200814521236','Tanta','Talaat Harb Street','95-12','NGQ76YQO0CE',3,4408),
  ('Nour','Teto',35,'male','tellus.faucibus@yahoo.com','+204475274383','Tanta','Joseph Tito','41913','LUK45CNR2YE',3,4299),
  ('Nour','Ezat',29,'male','augue.sed@protonmail.com','+203847325284','Sohag','Khan El-Khalili Street','Q8O 2YK','CPY68DTS2GR',3,4064),
  ('Saed','Nasr',28,'male','sem.ut.dolor@icloud.com','+206749374170','	Cairo','Khan El-Khalili Street','27425','BLJ83SHD7HY',3,4135)

  INSERT INTO [Instractor] (Fname,Lname,Ins_age,Ins_gender,Ins_email,Ins_Phone,City,Street,Zip_code,Ins_password,Ins_Dept,Ins_Salary)
VALUES
  ('Naden','Hassan',39,'female','e2st1.nunc@aol.com','+200506343237','Sohag','Darb Al Asfar Street','1390 DR','HDW55JUQ7OR',4,4497),
  ('Naden','Amir',37,'female','ali2quam@yahoo.com','+207365265420','Faiyum','Talaat Harb Street','340912','SNX68DPJ1AD',4,4462),
  ('Eman','Nasr',30,'female','bi2bendum.donec@aol.com','+207617567366','Asyut','Khan El-Khalili Street','50116','TBM01EJP7KU',4,4172),
  ('Asma','Nasr',40,'female','le2ctus.nullam.suscipit@protonmail.com','+203328728276','Asyut','Talaat Harb Street','3337-3123','BIB91YSS7WW',4,4111),
  ('Asma','Nasr',26,'female','fau2cibus.ut.nulla@icloud.com','+206034728519','Sohag','Talaat Harb Street','4206','NRK45KHG0IQ',4,4215),
  ('Eman','Nasr',27,'female','2duis.mi@google.com','+203395187293','Damietta','Al Muizz li Din Allah Street','D3 2SG','KON67UUZ2KK',4,4287),
  ('Aya','wahba',32,'female','sagi2ttis.semper.nam@icloud.com','+209134462483','Damietta','Masr W-el Sudan','57827','VIG10VUQ3SG',4,4160),
  ('Asma','Ezat',32,'female','soci2osqu@yahoo.com','+202481507396','Giza','Talaat Harb Street','41109','ATI44WCT5ZG',4,4273),
  ('Asmaa','Nour',36,'female','ips2um.sodales@google.com','+202014605803','port Said','Joseph Tito','66-53','YKC82OQG7VJ',4,4401),
  ('Asmaa','wahba',32,'female','fu2sce.diam@yahoo.com','+204816814492','Suze','Al Muizz li Din Allah Street','7249 AG','SGG56KZU7QX',4,4262),
  ('Nada','Nasr',34,'female','nul2la@protonmail.com','+208145247237','Damietta','Talaat Harb Street','775478','JFT64ICJ8RM',4,4117),
  ('Naden','Nasr',25,'female','imp2erdiet@icloud.com','+205772046186','Zagazig','Al-Azhar','685570','DIZ37QHG8RT',4,4151),
  ('Nada','Hassan',25,'female','ves2tibulum.nec@protonmail.com','+201673237128','Minya','Darb Al Asfar Street','53384','WKV59UFE8MD',4,4474),
  ('Asma','Nasr',38,'female','me2tus.aenean@aol.com','+207334429327','Minya','Khan El-Khalili Street','6779','PCZ71PYZ3HI',4,4406),
  ('Alaa','Nour',36,'female','nu2lla@google.com','+209191735841','port Said','Khan El-Khalili Street','60728','NOG56VHX6CR',4,4355),
  ('Naden','Amir',34,'female','po2rttitor@protonmail.com','+203857353846','Aswan','Joseph Tito','H3T 5H2','YSL57UHL4HN',4,4157),
  ('Nada','Amir',30,'female','di2ctum.augue@yahoo.com','+208245762312','Minya','Khan El-Khalili Street','96280','LUT46XRB5LO',4,4371),
  ('Aya','El ot',32,'female','qui2s.massa@aol.com','+203502221818','Aswan','Joseph Tito','2783-6375','WMI76WSC7NL',4,4320),
  ('Aya','Shams',33,'female','male2suada@icloud.com','+207475517557','Ismaila','Talaat Harb Street','56714','VEF41YRW2PL',4,4314),
  ('Alaa','Ezat',34,'female','ar2cu.vestibulum@hotmail.com','+208131851028','	Cairo','Darb Al Asfar Street','2112','WSG61VEX2GM',4,4110),
  ('Alaa','Amir',31,'female','at@a2ol.com','+205268322131','Ismaila','Al-Azhar','95846','CDO60VPT4PG',4,4034),
  ('Nada','Abdo',35,'female','conub2ia@outlook.com','+205929095632','Elmahalla','Joseph Tito','790242','BQH44WYP8CB',4,4217),
  ('Aya','Nour',36,'female','ma2ecenas.mi@aol.com','+203170464272','port Said','Joseph Tito','DP1 3UM','CFY52BET1QR',4,4207);
  
  SP_DeleteInstractorById  22
  SP_GetAllInstractors
  SP_GetInstractorsByCity 'Elmahalla'
  SP_GetInstractorsByDept 2
  SP_GetInstractorsByID 1
  SP_UpdateInstractor 1, @Lname = 'Hessen'
------------------------------------------------------------------------------------------------------------------------------------------
--2)Department Table

SP_InsertDepartment @name = 'OS'  ,@Manager = 1
GO 
SP_InsertDepartment @name = 'PD'  ,@Manager = 2
GO 
SP_InsertDepartment @name = 'BI'  ,@Manager = 3 
GO 
SP_InsertDepartment @name = 'ART'  ,@Manager = 4
GO 
SP_DeleteDepartmentById 10

SP_GetAllDepartmentS
SP_GetDepartmentByID 11
SP_UpdateDepartment 6, @name ='ttest'

SP_InsertDepartment @Dname = 'PD' , @Manager_id = 5 , @HireDate = '2020-1-1'
SP_InsertDepartment @Dname = 'OS' , @Manager_id = 9 , @HireDate = '2020-4-1' 
SP_InsertDepartment @Dname = 'HR' , @Manager_id = 11 , @HireDate = '2020-8-1'
SP_InsertDepartment @Dname = 'Cyber Security' , @Manager_id = 12 , @HireDate = '2021-1-1' 
SP_InsertDepartment @Dname = 'System Admin' , @Manager_id = 13 , @HireDate = '2021-4-1' 
SP_InsertDepartment @Dname = 'Marketing' , @Manager_id = 14 , @HireDate = '2021-8-1' 
SP_InsertDepartment @Dname = 'Training' , @Manager_id = 15 , @HireDate = '2022-1-1'
SP_InsertDepartment @Dname = 'English' , @Manager_id = 16 , @HireDate = '2022-4-1'
SP_InsertDepartment @Dname = 'social Media' , @Manager_id = 17 , @HireDate = '2023-1-1'
SP_InsertDepartment @Dname = 'Sales' , @Manager_id = 18 , @HireDate = ''


--3)Students Table
SP_InsertStudent  @Fname = 'Ahmed' ,@Lname = 'Taha' , @gender = 'male',@age = 22 , @email = 'Example1@example.com' , @Phone = '01023456789' ,@Zip_code = '00000' , @Street  = 'Street1' ,@City = 'Cairo' ,@password = '123456' ,@Dept =1 ,@Supervisor =1 
GO
SP_InsertStudent  @Fname = 'Taha' ,@Lname = 'Ahmed' , @gender = 'male',@age = 22 , @email = 'Example2@example.com' , @Phone = '01033456789' ,@Zip_code = '00001' , @Street  = 'Street2' ,@City = 'Cairo' ,@password = '123456' ,@Dept =1 ,@Supervisor =1 
GO
SP_InsertStudent  @Fname = 'Nasr' ,@Lname = 'Taha' , @gender = 'male',@age = 24 , @email = 'Example3@example.com' , @Phone = '01025456789' ,@Zip_code = '50000' , @Street  = 'Street5' ,@City = 'Cairo' ,@password = '123456' ,@Dept =1 ,@Supervisor =1 
GO
SP_InsertStudent  @Fname = 'Nora' ,@Lname = 'Taha' , @gender = 'male',@age = 22 , @email = 'Example4@example.com' , @Phone = '01023456789' ,@Zip_code = '00000' , @Street  = 'Street6' ,@City = 'Cairo' ,@password = '123456' ,@Dept =1 ,@Supervisor =1 
GO
SP_InsertStudent  @Fname = 'Asmaa' ,@Lname = 'Ahmed' , @gender = 'female',@age = 25 , @email = 'Example6@example.com' , @Phone = '01723456789' ,@Zip_code = '00000' , @Street  = 'Street8' ,@City = 'Cairo' ,@password = '123456' ,@Dept =1 ,@Supervisor =1 
GO
SP_InsertStudent  @Fname = 'Aya' ,@Lname = 'Abdo' , @gender = 'female',@age = 26 , @email = 'Example7@example.com' , @Phone = '01002345789' ,@Zip_code = '04000' , @Street  = 'Street22' ,@City = 'Cairo' ,@password = '123456' ,@Dept =1 ,@Supervisor =1 
GO
SP_InsertStudent  @Fname = 'Eman' ,@Lname = 'Hessen' , @gender = 'female',@age = 23 , @email = 'Example8@example.com' , @Phone = '01062345789' ,@Zip_code = '04060' , @Street  = 'Street9' ,@City = 'Tanta' ,@password = '123456' ,@Dept =1 ,@Supervisor =1 
GO
SP_InsertStudent  @Fname = 'Mona' ,@Lname = 'Hessen' , @gender = 'female',@age = 25 , @email = 'Example9@example.com' , @Phone = '01062399989' ,@Zip_code = '04060' , @Street  = 'Street8' ,@City = 'Tanta' ,@password = '123456' ,@Dept =1 ,@Supervisor =1 
GO
SP_InsertStudent  @Fname = 'Maram' ,@Lname = 'Magdy' , @gender = 'female',@age = 23 , @email = 'Example10@example.com' , @Phone = '0106256989' ,@Zip_code = '04060' , @Street  = 'Street8' ,@City = 'Tanta' ,@password = '123456' ,@Dept =1 ,@Supervisor =1 
GO
SP_InsertStudent  @Fname = 'Manal' ,@Lname = 'Magdy' , @gender = 'female',@age = 23 , @email = 'Example11@example.com' , @Phone = '0106256989' ,@Zip_code = '04060' , @Street  = 'Street8' ,@City = 'Tanta' ,@password = '123456' ,@Dept =1 ,@Supervisor =1 
GO
SP_InsertStudent  @Fname = 'Manar' ,@Lname = 'Mousa' , @gender = 'female',@age = 25 , @email = 'Example12@example.com' , @Phone = '0106256989' ,@Zip_code = '04060' , @Street  = 'Street8' ,@City = 'Tanta' ,@password = '123456' ,@Dept =1 ,@Supervisor =1 
GO
SP_InsertStudent  @Fname = 'Mayar' ,@Lname = 'Ayman' , @gender = 'female',@age = 24 , @email = 'Example13@example.com' , @Phone = '0106256989' ,@Zip_code = '04060' , @Street  = 'Street8' ,@City = 'Tanta' ,@password = '123456' ,@Dept =1 ,@Supervisor =1 


SP_UpdateStudent @id = 5 ,@gender = 'female'
SP_GetALLStudent

SP_GetStudentsByDept 1
SP_GetStudentsByCity 'Tanta'
SP_GetStudentsByID 1
SP_DeleteStudentById 2

  INSERT INTO Students (Fname,Lname,Std_age,Std_gender,Std_Phone,Std_email,City,Street,Zip_code,Std_password,Std_Dept,Supervisor_id)
VALUES
  ('Alaa','Ezat',21,'male','+206023660657','ardcu.curabitur@aol.com','Aswan','Joseph Tito','7385','DYJ27IYG7IO',2,14),
  ('Ahmed','Abdo',28,'male','+209703728421','ut.nec@yahoo.com','Asyut','Joseph Tito','275942','EHN71NMJ2NQ',2,14),
  ('Alaa','wahba',28,'male','+206275728732','adipiscing.enim@aol.com','Suze','Al-Azhar','23524','QFI37GYD6YC',2,14),
  ('Saed','Shams',24,'male','+202832535381','mi.ac.mattis@aol.com','Zagazig','Darb Al Asfar Street','7167-3825','FFX61TIJ6CJ',2,14),
  ('Nour','Abdo',29,'male','+201081452405','ante.ipsum.primis@aol.com','	Cairo','Joseph Tito','784563','YBE12KYT4KQ',2,14),
 ('Alaa','El ot',21,'male','+200547786816','antre.lectus@protonmaisl.com','Elmahalla','Talaat Harb Street','939267','FUR69USS2UG',2,14),
  ('Saed','El ot',21,'male','+208447184834','enim.non@hotmail.com','Faiyum','Al Muizz li Din Allah Street','50240','QLT44CBW1JD',2,14),
  ('Abdulla','Shams',20,'male','+203658336418','vitae.erat@protonmail.com','Damanhur','Masr W-el Sudan','14534-755','BVI54KHC7GB',2,14),
  ('Saed','Nour',27,'male','+203526278514','sem@google.com','Elmahalla','Talaat Harb Street','31260545','GPN12PUG7DY',2,14),
  ('Alaa','Ezat',27,'male','+202249442345','quisque.libero@outlook.com','Giza','Joseph Tito','585455','EVN56WXM8BS',2,14),
  ('Saed','wahba',29,'male','+207033546060','libero.mauris.aliquam@protonmail.com','Zagazig','Al-Azhar','2223','OYU85WSO3LV',2,14),
  ('Moaz','Amir',28,'male','+207137448860','non.leo@yahoo.com','Aswan','Darb Al Asfar Street','91872','EMZ41FCE0AY',2,14),
  ('Alaa','Hassan',23,'male','+203343841554','imperdiet.ullamcorper@icloud.com','Tanta','Talaat Harb Street','7768','PPM23OGS7JW',2,1),
  ('Alaa','Amir',26,'male','+207620765650','odio.aliquam@icloud.com','Mansoura','Joseph Tito','122244','ZCC66BNF7QI',2,14),
  ('Hosam','Shams',25,'male','+207772892727','placerat@google.com','	Cairo','Masr W-el Sudan','65757','OWT32NIU6MB',2,14),
  ('Alaa','Amir',29,'male','+203468646265','orci.ut.sagittis@yahoo.com','Asyut','Al-Azhar','846496','SRE64ZSV4TN',2,14),
  ('Ahmed','Nasr',28,'male','+201665591121','vulputate.velit.eu@icloud.com','Giza','Khan El-Khalili Street','133508','JOB42CUD8XA',2,14),
  ('Nour','Abdo',31,'male','+201636617585','lorem.sit@icloud.com','Asyut','Darb Al Asfar Street','234653','AHG21OCR3YH',2,14),
  ('Saed','Hassan',29,'male','+209787518632','iaculis.quis.pede@icloud.com','	Cairo','Al Muizz li Din Allah Street','15-359','RJH85PVO9JG',2,14),
  ('Moaz','wahba',20,'male','+204846639247','lorem@hotmail.com','Faiyum','Al-Azhar','942786','PDF53CXB2XU',2,14),
  ('Taha','Nour',22,'male','+200522746443','in.nec@yahoo.com','Faiyum','Al Muizz li Din Allah Street','4874','XOC71LFB3WC',2,14),
  ('Nour','El ot',27,'male','+202563527769','est.mollis@protonmail.com','port Said','Joseph Tito','622446','GHZ56SOZ0ZK',2,14),
  ('Alaa','Nour',27,'male','+208126715675','aliquet@aol.com','port Said','Khan El-Khalili Street','27867','QPD85FRN5EE',2,14),
  ('Ahmed','wahba',27,'male','+204018431003','tortor@hotmail.com','Damanhur','Al Muizz li Din Allah Street','537311','YMQ77EGQ1ZX',2,14),
  ('Saed','wahba',27,'male','+206734070552','et.netus.et@hotmail.com','Mansoura','Joseph Tito','8912 AI','HSU72BGR7IH',2,14)


  INSERT INTO Students (Fname,Lname,Std_age,Std_gender,Std_email,Std_Phone,City,Street,Zip_code,Std_password,Std_Dept,Supervisor_id)
VALUES
  ('Asma','Amir',28,'female','et.3magnis@outlook.com','+202784244686','Damanhur','Al-Azhar','168572','KHL26LSH0WL',4,40),
  ('Asmaa','Hassan',28,'female','es3t.vitae@yahoo.com','+208518128792','Mansoura','Darb Al Asfar Street','5448','DJX82SXG5KR',4,40),
  ('Nada','Nasr',26,'female','elit.er3at.vitae@outlook.com','+202826295872','Giza','Khan El-Khalili Street','24825','QTD97GDI5WX',4,40),
  ('Asmaa','wahba',29,'female','orn3are@aol.com','+205069484612','	Cairo','Joseph Tito','20406','IYE76XCS4UY',4,40),
  ('Alaa','Nasr',22,'female','ad.li3tora@google.com','+202077247452','	Cairo','Darb Al Asfar Street','2224','HWF27JUT7DT',4,40),
  ('Soad','Hassan',27,'female','tel3lus.non@yahoo.com','+207825248157','Damietta','Talaat Harb Street','Y9V 4Y8','SHB24JGE5WW',4,40),
   ('Asma','Shams',21,'female','p3ellentesque.a@icloud.com','+205120622598','Elmahalla','Khan El-Khalili Street','8872-5285','UEH21UVI1UE',4,40),
  ('Eman','Nasr',22,'female','mo3rbi.neque@google.com','+209765122162','Suze','Joseph Tito','95512','NHN85MIF6GD',4,40),
  ('Aya','Nour',25,'female','mas3sa@outlook.com','+202848865464','Ismaila','Khan El-Khalili Street','2482','LSV57POQ9CW',4,40)
    ,('Asma','Nour',20,'female','tellu3s.non.magna@outlook.com','+207857742625','Zagazig','Al-Azhar','28792','PXV29YFU1OV',4,40),
  ('Asma','Amir',40,'female','veli3t.pellentesque.ultricies@google.com','+202568441299','Asyut','Talaat Harb Street','07497','NHH67OMO8TZ',4,40),
  ('Alaa','Shams',26,'female','mag3na.lorem@hotmail.com','+206871224722','Aswan','Khan El-Khalili Street','7817','LHN17YED8BY',4,40),
  ('Naden','El ot',24,'female','pr3imis.in.faucibus@aol.com','+208868916256','Ismaila','Darb Al Asfar Street','8760','DSE22YIG4QY',4,40),
  ('Asmaa','wahba',28,'female','eu3@aol.com','+205792888766','Asyut','Joseph Tito','982288','PIF28ZLX6SO',4,40),
  ('Aya','Amir',29,'female','maur3is.m3agna.duis@yahoo.com','+201165885079','Aswan','Khan El-Khalili Street','27-56','CXN07AQX4GO',4,40),
  ('Asmaa','Teto',40,'female','ips3um.dolor.sit@hotmail.com','+204092472248','Asyut','Talaat Harb Street','9684','TZT77RUM6KB',4,40),
  ('Asma','Nasr',40,'female','urn3a.suscipit@protonmail.com','+207650772057','Alexandria','Masr W-el Sudan','56740','EPP76PXQ1UB',4,40),
  ('Soad','Ezat',27,'female','in.ma3gna@outlook.com','+202647661527','Asyut','Darb Al Asfar Street','84872-626','XKZ26GCX8GM',4,40),
  ('Asmaa','Amir',21,'female','eu@g3oogle.com','+208071198270','port Said','Talaat Harb Street','6647','GTR72QUG4SO',4,40),
  ('Naden','wahba',25,'female','lobort3is.quis@hotmail.com','+202257756272','port Said','Masr W-el Sudan','24672','OBZ85XGM7CN',4,40),
  ('Asmaa','Amir',28,'female','3amet@hotmail.com','+202672124856','Ismaila','Talaat Harb Street','79222','UNV80ADR8FJ',4,40),
  ('Naden','Ezat',28,'female','ut3.pellentesque.eget@hotmail.com','+206120402528','Alexandria','Masr W-el Sudan','226841','VPI16DRU8YX',4,40),
  ('Nada','wahba',24,'female','l3orem@icloud.com','+205910261025','Alexandria','Darb Al Asfar Street','72224','XIA24DWF8VM',4,40),
  ('Soad','Ezat',22,'female','nisl3.quisque@icloud.com','+207657084227','Suze','Joseph Tito','621644','PUC44XQQ9OB',4,40),
  ('Asmaa','Abdo',29,'female','lec3tus.a.sollicitudin@google.com','+202157681572','Aswan','Joseph Tito','21172','UJE48LZA6KQ',4,40),
  ('Aya','Nasr',28,'female','sit@h3otmail.com','+206268166987','Suze','Masr W-el Sudan','2758-4644','NTN81DIG6BZ',4,40),
  ('Nada','Hassan',29,'female','mag33na@protonmail.com','+202082562521','Minya','Al-Azhar','547716','KKU41TBJ7LP',4,40)

-- 4) Course 
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
SP_DeleteCourseById 5
SP_GetAllCourse
SP_UpdateCourse 2, @name = 'SQL', @Decription = 'Advanced SQL'



--5) topic
SP_InsertTopic @name = 'NoSQL', @Decription = 'A non-relational database'
GO 
SP_InsertTopic @name = 'SQL', @Decription = 'Structured Query Language'
GO
SP_InsertTopic @name = 'db_design', @Decription = 'Steps for Data Base Designe'
GO 
SP_InsertTopic @name = 'db_design', @Decription = 'Steps for Data Base Designe'
GO 
SP_InsertTopic @name = 'primitive data', @Decription = 'primitive data types'
GO 
SP_InsertTopic @name = 'non primitive', @Decription = 'non primitive data types'
GO 
SP_InsertTopic @name = 'Functions'
GO 
SP_InsertTopic @name = 'pointer'
GO 
SP_InsertTopic @name = 'inheritance'
GO 
SP_InsertTopic @name = 'association '
GO 
SP_InsertTopic @name = 'aggregation '
GO 
SP_InsertTopic @name = 'composition'
GO 
SP_InsertTopic @name = 'Stored Procedures'
GO 
SP_InsertTopic @name = 'Triggers'
GO 
SP_InsertTopic @name = 'Loops'
GO 
SP_InsertTopic @name = 'Conditions'
GO 
SP_InsertTopic @name = 'Ranking Functions'
GO 


--Get all 
SP_GetAllTopic
SP_GetAllCourse
SP_GetTopicByName 'aggregation'

SP_DeleteTopicByName 'data structure1'
SP_DeleteTopicById  13

SP_UpdateTopic 4 , 'primitive'

--JS
SP_InsertCourse_Topics 2,4
go
SP_InsertCourse_Topics 2,5
go
SP_InsertCourse_Topics 2,17
go
SP_InsertCourse_Topics 2,18
go
SP_InsertCourse_Topics 2,6
-- SQL
SP_InsertCourse_Topics 1,2
go
SP_InsertCourse_Topics 1,3
go
SP_InsertCourse_Topics 1,15
go
SP_InsertCourse_Topics 1,14

--node js
SP_InsertCourse_Topics 4,6
SP_InsertCourse_Topics 4,1
SP_InsertCourse_Topics 4,2


--CST 
SP_InsertCourse_Topics 6,4
go
SP_InsertCourse_Topics 6,5
go
SP_InsertCourse_Topics 6,6

[SP_GetAllCourse_Topics] 
[SP_GetCourseTopics] 5

SP_DeleteSpecificTopic @course= 5 , @topic = 7
SP_DeleteAllTopiceRelatedToCourse 2



--Exam
INSERT [dbo].[Exam] ([ExamGrade], [ExamTime], [ExamDate], [CourseId]) VALUES ( 120, 10, CAST(N'2020-04-23' AS Date), 1)
GO
INSERT [dbo].[Exam] ([ExamGrade], [ExamTime], [ExamDate], [CourseId]) VALUES (50, 10, CAST(N'2014-11-16' AS Date), 1)
GO
INSERT [dbo].[Exam] ([ExamGrade], [ExamTime], [ExamDate], [CourseId]) VALUES (50, 120, CAST(N'2020-08-15' AS Date), 2)
GO
INSERT [dbo].[Exam] ([ExamGrade], [ExamTime], [ExamDate], [CourseId]) VALUES (120, 20, CAST(N'2014-04-25' AS Date), 2)
GO
INSERT [dbo].[Exam] ([ExamGrade], [ExamTime], [ExamDate], [CourseId]) VALUES (50, 10, CAST(N'2011-01-15' AS Date), 2)
GO
INSERT [dbo].[Exam] ([ExamGrade], [ExamTime], [ExamDate], [CourseId]) VALUES (150, 110, CAST(N'2010-10-15' AS Date), 1)
GO
INSERT [dbo].[Exam] ([ExamGrade], [ExamTime], [ExamDate], [CourseId]) VALUES (100, 80, CAST(N'2010-11-26' AS Date), 1)
GO
INSERT [dbo].[Exam] ([ExamGrade], [ExamTime], [ExamDate], [CourseId]) VALUES (100, 100, CAST(N'2018-06-22' AS Date), 2)
GO
INSERT [dbo].[Exam] ([ExamGrade], [ExamTime], [ExamDate], [CourseId]) VALUES (150, 90, CAST(N'2010-10-08' AS Date), 2)
GO
INSERT [dbo].[Exam] ([ExamGrade], [ExamTime], [ExamDate], [CourseId]) VALUES (150, 90, CAST(N'2012-10-31' AS Date), 1)
GO


--Exam Question
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (1, 1)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (1, 2)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (1, 3)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (1, 4)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (1, 5)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (1, 6)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (1, 7)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (1, 20)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (1, 21)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (1, 22)
GO


INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (2, 8)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (2, 9)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (2, 10)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (2, 11)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (2, 12)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (2, 13)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (2, 14)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (2, 24)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (2, 25)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (2, 26)
GO


INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (3, 30)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (3, 31)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (3, 32)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (3, 33)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (3, 34)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (3, 35)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (3, 36)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (3, 43)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (3, 44)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (3, 45)
GO


INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (4, 34)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (4, 35)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (4, 36)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (4, 37)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (4, 38)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (4, 39)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (4, 40)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (4, 50)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (4, 51)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (4, 52)
GO


INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (5, 34)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (5, 35)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (5, 36)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (5, 37)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (5, 38)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (5, 39)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (5, 40)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (5, 46)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (5, 47)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (5, 48)
GO

INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (6, 12)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (6, 13)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (6, 14)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (6, 15)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (6, 16)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (6, 17)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (6, 18)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (6, 22)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (6, 23)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (6, 24)
GO

INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (7, 10)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (7, 19)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (7, 12)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (7, 1)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (7, 3)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (7, 8)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (7, 9)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (7, 20)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (7, 25)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (7, 23)
GO

INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (8, 31)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (8, 33)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (8, 36)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (8, 38)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (8, 40)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (8, 42)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (8, 30)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (8, 43)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (8, 49)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (8, 51)
GO


INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (9, 40)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (9, 41)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (9, 42)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (9, 30)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (9, 31)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (9, 33)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (9, 37)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (9, 45)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (9, 47)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (9, 43)
GO

INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (10, 2)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (10, 4)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (10, 6)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (10, 8)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (10, 10)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (10, 12)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (10, 14)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (10, 24)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (10, 26)
GO
INSERT [dbo].[Exam_Question] ([ExamId], [QuesId]) VALUES (10, 28)
GO




--ins_courses
INSERT INTO [dbo].[Ins_courses] ([Ins_id], [Course_id])
 VALUES (1, 1),
  (2, 1),(3, 2),(4, 2),
  (41, 2),(42, 2),(43, 3),
  (44, 3),(45, 3),(46, 3),
  (47, 3),(48, 4),(49, 4),
  (50, 4),(51, 4),(52, 4),
  (53, 4),(75, 6),(74, 7),
  (76, 8),(80, 1),(81, 1),
  (23, 1),(24, 1),(25, 8),
  (26, 8),(27, 8),(28, 8),
  (29, 8),(30, 1),(31, 1),
  (32, 1),(33, 1),(34, 1),
  (35, 2),(36, 2),(37, 2),
  (38, 2),(39, 2),(40, 3),
  (1, 3),(2, 3),(4, 8),
  (90, 7),(91, 6),(3, 3)
GO


--student-courses

INSERT [dbo].[Std_courses] ([Course_id],[Std_id], [Grade])
 VALUES (1,1,100),
  (2,2,120),(2,3,40),(2,4,50),
  (2,5,120),(1,6,80),(2,7,85),
  (1,8,50),(1,9,150),(2,10,120),
  (2,11,45),(1,12,99),(2,13,35),
  (1,14,110),(2,15,47),(2,16,117),
  (2,17,143),(2,18,142),(1,19,37),
  (2,20,120),(1,21,110),(2,22,39)
  GO



--student answer

  INSERT [dbo].[Student_Answer] ([StudId], [ExamId], [QuesId], [StudQuesAns]) VALUES (1, 1, 1, 'B')
  GO
  INSERT [dbo].[Student_Answer] ([StudId], [ExamId], [QuesId], [StudQuesAns]) VALUES (1, 1, 2, 'D')
  GO
  INSERT [dbo].[Student_Answer] ([StudId], [ExamId], [QuesId], [StudQuesAns]) VALUES (1, 1, 3, 'A')
  GO
  INSERT [dbo].[Student_Answer] ([StudId], [ExamId], [QuesId], [StudQuesAns]) VALUES (1, 1, 4, 'B')
  GO
  INSERT [dbo].[Student_Answer] ([StudId], [ExamId], [QuesId], [StudQuesAns]) VALUES (1, 1, 5, 'D')
  GO
  INSERT [dbo].[Student_Answer] ([StudId], [ExamId], [QuesId], [StudQuesAns]) VALUES (1, 1, 6, 'C')
  GO
  INSERT [dbo].[Student_Answer] ([StudId], [ExamId], [QuesId], [StudQuesAns]) VALUES (1, 1, 7, 'C')
  GO
  INSERT [dbo].[Student_Answer] ([StudId], [ExamId], [QuesId], [StudQuesAns]) VALUES (1, 1, 20, 'A')
  GO
  INSERT [dbo].[Student_Answer] ([StudId], [ExamId], [QuesId], [StudQuesAns]) VALUES (1, 1, 21, 'B')
  GO
  INSERT [dbo].[Student_Answer] ([StudId], [ExamId], [QuesId], [StudQuesAns]) VALUES (1, 1, 22, 'A')
  GO


  
  INSERT [dbo].[Student_Answer] ([StudId], [ExamId], [QuesId], [StudQuesAns]) VALUES (6, 1, 1, 'B')
  GO
  INSERT [dbo].[Student_Answer] ([StudId], [ExamId], [QuesId], [StudQuesAns]) VALUES (6, 1, 2, 'D')
  GO
  INSERT [dbo].[Student_Answer] ([StudId], [ExamId], [QuesId], [StudQuesAns]) VALUES (6, 1, 3, 'A')
  GO
  INSERT [dbo].[Student_Answer] ([StudId], [ExamId], [QuesId], [StudQuesAns]) VALUES (6, 1, 4, 'B')
  GO
  INSERT [dbo].[Student_Answer] ([StudId], [ExamId], [QuesId], [StudQuesAns]) VALUES (6, 1, 5, 'D')
  GO
  INSERT [dbo].[Student_Answer] ([StudId], [ExamId], [QuesId], [StudQuesAns]) VALUES (6, 1, 6, 'C')
  GO
  INSERT [dbo].[Student_Answer] ([StudId], [ExamId], [QuesId], [StudQuesAns]) VALUES (6, 1, 7, 'C')
  GO
  INSERT [dbo].[Student_Answer] ([StudId], [ExamId], [QuesId], [StudQuesAns]) VALUES (6, 1, 20, 'A')
  GO
  INSERT [dbo].[Student_Answer] ([StudId], [ExamId], [QuesId], [StudQuesAns]) VALUES (6, 1, 21, 'B')
  GO
  INSERT [dbo].[Student_Answer] ([StudId], [ExamId], [QuesId], [StudQuesAns]) VALUES (6, 1, 22, 'A')
  GO