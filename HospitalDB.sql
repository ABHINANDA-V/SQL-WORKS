create database HospitalDB;
use HospitalDB;
create table Patient(patient_id int primary key auto_increment,first_name varchar(25),last_name varchar(25),age int,gender varchar(25),city varchar(25));
insert into patient(patient_id,first_name,last_name,age,gender,city)values(1,"Aarav","Sharma",30,"Male","Delhi");
insert into patient(first_name,last_name,age,gender,city)values("Diya","Singh",25,"Female","Mumbai");
insert into patient(first_name,last_name,age,gender,city)values("Rahul","Verma",40,"Male","Chennai");
insert into patient(first_name,last_name,age,gender,city)values("Sneha","Nair",32,"Female","Kochi");
insert into patient(first_name,last_name,age,gender,city)values("Mukesh","Gupta",55,"Male","Kolkata");

create table Doctor(doctor_id int primary key auto_increment,doc_name varchar(50),specialization varchar(50),phone varchar(20));
insert into Doctor(doctor_id,doc_name,specialization,phone)values(1,"Dr.Anil Kumar","Cardiologist",'9876543210');
insert into Doctor(doc_name,specialization,phone)values("Dr.Priya Rao","Neurologist",'9988776655');
insert into Doctor(doc_name,specialization,phone)values("Dr.John Mathew","Orthopedic",'9876001234');
insert into Doctor(doc_name,specialization,phone)values("Dr.Neha Sharma","Pediatrician",'9123456780');
insert into Doctor(doc_name,specialization,phone)values("Dr.Manoj Varma","Surgeon",'9090909090');
insert into Doctor(doc_name,specialization,phone)values("Dr.Alakananda","Surgeon",'9090909089');

create table Department(department_id int primary key auto_increment,department_name varchar(50));
insert into Department(department_id,department_name)values(1,"Cardiology");
insert into Department(department_name)values("Neurology");
insert into Department(department_name)values("Orthopedics");
insert into Department(department_name)values("Pediatrics");
insert into Department(department_name)values("General Surgery");

create table Appointment(appointment_id int primary key auto_increment,patient_id int,foreign key(patient_id)references Patient(patient_id),doctor_id int,foreign key(doctor_id) references Doctor(doctor_id),appointment_date date,appoint_status varchar(50));
insert into Appointment(appointment_id,patient_id,doctor_id,appointment_date,appoint_status)values(1,1,1,'2025-10-20','Completed');
insert into Appointment(patient_id,doctor_id,appointment_date,appoint_status)values(2,2,'2025-10-21','Scheduled');
insert into Appointment(patient_id,doctor_id,appointment_date,appoint_status)values(3,3,'2025-10-22','Completed');
insert into Appointment(patient_id,doctor_id,appointment_date,appoint_status)values(4,4,'2025-10-25','Scheduled');
insert into Appointment(patient_id,doctor_id,appointment_date,appoint_status)values(5,5,'2025-10-18','Cancelled');

create table Room(room_id int primary key auto_increment,room_type varchar(50),price_per_day int);
insert into Room(room_id,room_type,price_per_day)values(1,"General Ward",1500);
insert into Room(room_type,price_per_day)values("Private Room",3000);
insert into Room(room_type,price_per_day)values("ICU",7500);
insert into Room(room_type,price_per_day)values("General Ward",1500);
insert into Room(room_type,price_per_day)values("ICU",7500);

select * from Patient;
select doc_name from Doctor;
select first_name,last_name from Patient where gender="Female"; 
select first_name from Patient where city="Delhi";
select p.first_name,a.appoint_status from Patient p inner join Appointment a on p.patient_id=a.patient_id; 
select doc_name,phone from Doctor; 
select first_name,age from Patient where age>30;
select p.first_name,a.appointment_date from Patient p inner join Appointment a on p.patient_id=a.patient_id;
select distinct room_type from Room;
select department_name from Department;

select first_name from Patient where gender="Male";
select first_name from Patient where age between 25 and 50;
select doc_name from Doctor where specialization like 'Cardio%';
select p.first_name,a.appoint_status from Patient p inner join Appointment a on p.patient_id=a.patient_id where appoint_status="Scheduled";
select first_name from Patient where city not in('Chennai');

select first_name from Patient order by first_name;
select doc_name,specialization from Doctor order by specialization;
select distinct room_type,price_per_day from Room order by price_per_day desc;
select p.first_name,a.appointment_date from Patient p inner join Appointment a on p.patient_id=a.patient_id order by appointment_date;
select first_name,age from Patient order by age;

select count(*) as total_patient from Patient;
select gender,count(*) as total_patient  from Patient group by gender;
select distinct room_type,price_per_day from Room where price_per_day=(select max(price_per_day) from Room);
select min(age) from Patient;
select first_name,age from Patient where age=(select min(age) from Patient);

-- group by
select specialization,count(*) as total_number from Doctor group by specialization;
select city,count(*) as total_number from patient group by city;
select appoint_status,count(*) as total_number from Appointment group by appoint_status;
select specialization,count(*) as number_of_doctors from doctor group by specialization;




-- join queries
select p.first_name,d.doc_name from Patient p inner join Doctor d on 