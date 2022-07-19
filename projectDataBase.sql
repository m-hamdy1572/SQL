
create table Doctor(
id int primary key identity,
DocName nchar(50) not Null,
DocAge int not Null,
DocGraduated char(100) not Null,
DocSalary money not Null,
)
create table Trainee(
id int primary key identity,
TrnName nchar(50) not Null,
TrnGraduated char(100) not Null,
TrnAge int not Null,
DocId int ,
constraint FK_Trainee_Doctor foreign key (DocId) references Doctor(id) on delete cascade 
)

insert into[dbo].[Doctor]([DocName],[DocAge],[DocGraduated],[DocSalary]) values('ahmed mostafa','29','benha university faculty of science','3000')
insert into[dbo].[Doctor]([DocName],[DocAge],[DocGraduated],[DocSalary]) values('hassan ali','30','cairo university faculty of science','4000')
insert into[dbo].[Doctor]([DocName],[DocAge],[DocGraduated],[DocSalary]) values('mohamed mostafa','35','shabin alkum university faculty of science','4500')
insert into[dbo].[Doctor]([DocName],[DocAge],[DocGraduated],[DocSalary]) values('amira ahmed','40','ain shams university faculty of science','5000')

insert into[dbo].[Trainee]([TrnName],[TrnGraduated],[TrnAge],[DocId]) values('mona ezzat','benha university faculty of science','21','1')
insert into[dbo].[Trainee]([TrnName],[TrnGraduated],[TrnAge],[DocId]) values('mostafa hessen','benha university faculty of science','22','1')
insert into[dbo].[Trainee]([TrnName],[TrnGraduated],[TrnAge],[DocId]) values('marwa samy','cairo university faculty of science','23','2')
insert into[dbo].[Trainee]([TrnName],[TrnGraduated],[TrnAge],[DocId]) values('mahmoud reda','cairo university faculty of science','22','2')
insert into[dbo].[Trainee]([TrnName],[TrnGraduated],[TrnAge],[DocId]) values('nada abdallah','ain shams university faculty of science','23','3')
insert into[dbo].[Trainee]([TrnName],[TrnGraduated],[TrnAge],[DocId]) values('ali ahmed','ain shams university faculty of science','24','3')
insert into[dbo].[Trainee]([TrnName],[TrnGraduated],[TrnAge],[DocId]) values('menna osama','shabin alkum university faculty of science','25','4')
insert into[dbo].[Trainee]([TrnName],[TrnGraduated],[TrnAge],[DocId]) values('marwan yasser','shabin alkumuniversity faculty of science','23','4')


create table Patients
(
id int primary key identity,
name_patient nvarchar (50) not null,
age_patient int not null,
address_patient nvarchar (100)  not null,
phone_num_patient int  not null,
analysis_name nvarchar (50) not null,
blood_type_patient char (100) not null,
idTrainee int null,
 constraint Fk_Patient_Trainee foreign key (idTrainee) references Trainee(id) on delete cascade 
)
insert into Patients values('karima', 20 ,'cairo,shoubraelkhema',0112465387,'TSH','O++',1) 
insert into Patients values('esraa', 22 ,'cairo,elsadat',0112855387,'CBC','A+',1) 
insert into Patients  values('nada', 20 ,'cairo,alazahr',012846387,'TSH','O++',2) 
insert into Patients  values('aya', 45 ,'cairo,alataba',01124984381,'MCV','O-',2) 
insert into Patients  values('ahmed', 23 ,'cairo,elshohada',0112943388,'HCT','AB-',3) 
insert into Patients  values('hager', 45 ,'cairo,matria',0112395367,'RBCS','B+',3) 
insert into Patients  values('menna', 23 ,'kalybya,banha',0112207387,'PLT','A+',4) 
insert into Patients  values('nour', 28 ,'kalybya,kafrshukr',01176485387,'ESR','O+',4) 
insert into Patients  values('walaa', 27 ,'alex',0112422287,'LDL','AB-',5) 
insert into Patients  values('basma', 29 ,'cairo,alzmalak',0112484308,'cholestrol','O-',5) 
insert into Patients values('noura', 34 ,'cairo,abasya',0112499987,'glycinine','A+',6) 
insert into Patients  values('marwa', 23 ,'elwan',01124645687,'W.B.C','A-',6) 
insert into Patients  values('mohamed', 65 ,'cairo,westelbald',0118465387,'URIC ACID','AB-',7) 
insert into Patients  values('nader', 89 ,'cairo,suezcanale',0112487457,'TG','AB+',7) 
insert into Patients values('nadia', 19 ,'cairo,elsadat',011237457,'TG','AB+',8) 
insert into Patients  values('wafaa', 39 ,'cairo,elmosky',011245457,'TG','AB+',8) 


create view getData
as
select age_patient,phone_num_patient,blood_type_patient,analysis_name, DocName,TrnName, DocAge , TrnAge,TrnGraduated ,name_patient from Patients join Trainee
on Patients.idTrainee=Trainee.id join Doctor
on Trainee.DocId=Doctor.id

select * from getData
where name_patient like 'esraa'

create proc insertDataPatient
@namePatient nvarchar(50),
@agePatient int,
@addressPatient nvarchar(50),
@PhoneNumber int,
@analyseName nvarchar(50),
@booldType char(50),
@idTraniee int
as
begin
insert into Patients(name_patient,age_patient,address_patient,phone_num_patient,analysis_name,blood_type_patient,idTrainee) values(@namePatient,@agePatient,@addressPatient,@PhoneNumber,@analyseName,@booldType,@idTraniee)
end


create proc updateDataPatient
@namePatient nvarchar(50),
@agePatient int,
@addressPatient nvarchar(50),
@PhoneNumber int,
@analyseName nvarchar(50),
@booldType char(50),
@idTraniee int
as
begin
update Patients set name_patient=@namePatient , age_patient=@agePatient, address_patient=@addressPatient, analysis_name=@analyseName,blood_type_patient=@booldType,idTrainee=@idTraniee
end

create proc deleteDataPatient
@id int
as
begin
delete from Patients where id=@id
end


exec dbo.insertDataPatient 'Ahmed','26','sdadsad','011212321','dasdasd','sdadda','4';
