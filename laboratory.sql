
create table Patients
(
id_patient int primary key identity,
name_patient nvarchar (50) not null,
age_patient int not null,
address_patient nvarchar (100)  not null,
phone_num_patient int  not null,
analysis_name nvarchar (50) not null,
blood_type_patient char (100) not null,
result_patient nvarchar(50)  not null
)
insert into[dbo].[Patients]([name_patient],[age_patient],[address_patient],[phone_num_patient],[analysis_name],[blood_type_patient],[result_patient]) values('karima', 20 ,'cairo,shoubraelkhema',0112465387,'TSH','O++','negative') 
insert into[dbo].[patients] ([name_patient],[age_patient],[address_patient],[phone_num_patient],[analysis_name],[blood_type_patient],[result_patient]) values('esraa', 22 ,'cairo,elsadat',0112855387,'CBC','A+','negative') 
insert into[dbo].[Patients] ([name_patient],[age_patient],[address_patient],[phone_num_patient],[analysis_name],[blood_type_patient],[result_patient]) values('nada', 20 ,'cairo,alazahr',012846387,'TSH','O++','positive') 
insert into[dbo].[patients] ([name_patient],[age_patient],[address_patient],[phone_num_patient],[analysis_name],[blood_type_patient],[result_patient]) values('aya', 45 ,'cairo,alataba',01124984381,'MCV','O-','negative') 
insert into[dbo].[patients] ([name_patient],[age_patient],[address_patient],[phone_num_patient],[analysis_name],[blood_type_patient],[result_patient]) values('ahmed', 23 ,'cairo,elshohada',0112943388,'HCT','AB-','negative') 
insert into[dbo].[Patients] ([name_patient],[age_patient],[address_patient],[phone_num_patient],[analysis_name],[blood_type_patient],[result_patient]) values('hager', 45 ,'cairo,matria',0112395367,'RBCS','B+','positive') 
insert into[dbo].[patients] ([name_patient],[age_patient],[address_patient],[phone_num_patient],[analysis_name],[blood_type_patient],[result_patient]) values('menna', 23 ,'kalybya,banha',0112207387,'PLT','A+','negative') 
insert into[dbo].[patients] ([name_patient],[age_patient],[address_patient],[phone_num_patient],[analysis_name],[blood_type_patient],[result_patient]) values('nour', 28 ,'kalybya,kafrshukr',01176485387,'ESR','O+','positive') 
insert into[dbo].[patients] ([name_patient],[age_patient],[address_patient],[phone_num_patient],[analysis_name],[blood_type_patient],[result_patient]) values('walaa', 27 ,'alex',0112422287,'LDL','AB-','negative') 
insert into[dbo].[patients] ([name_patient],[age_patient],[address_patient],[phone_num_patient],[analysis_name],[blood_type_patient],[result_patient]) values('basma', 29 ,'cairo,alzmalak',0112484308,'cholestrol','O-','negative') 
insert into[dbo].[patients] ([name_patient],[age_patient],[address_patient],[phone_num_patient],[analysis_name],[blood_type_patient],[result_patient]) values('noura', 34 ,'cairo,abasya',0112499987,'glycinine','A+','positive') 
insert into[dbo].[patients] ([name_patient],[age_patient],[address_patient],[phone_num_patient],[analysis_name],[blood_type_patient],[result_patient]) values('marwa', 23 ,'elwan',01124645687,'W.B.C','A-','negative') 
insert into[dbo].[patients] ([name_patient],[age_patient],[address_patient],[phone_num_patient],[analysis_name],[blood_type_patient],[result_patient]) values('mohamed', 65 ,'cairo,westelbald',0118465387,'URIC ACID','AB-','positive') 
insert into[dbo].[Patients] ([name_patient],[age_patient],[address_patient],[phone_num_patient],[analysis_name],[blood_type_patient],[result_patient]) values('nader', 89 ,'cairo,suezcanale',0112487457,'TG','AB+','negative') 
insert into[dbo].[Patients] ([name_patient],[age_patient],[address_patient],[phone_num_patient],[analysis_name],[blood_type_patient],[result_patient]) values('nadia', 19 ,'cairo,elsadat',011237457,'TG','AB+','negative') 
insert into[dbo].[Patients] ([name_patient],[age_patient],[address_patient],[phone_num_patient],[analysis_name],[blood_type_patient],[result_patient]) values('wafaa', 39 ,'cairo,elmosky',011245457,'TG','AB+','positive') 

select* from patient