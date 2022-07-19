create view getData
as
select age_patient,phone_num_patient,blood_type_patient,analysis_name, DocName, name_patient ,DocAge , TrnAge,TrnGraduated from Patients join Trainee
on Patients.idTrainee=Trainee.id join Doctorr
on Trainee.DocId=Doctorr.id