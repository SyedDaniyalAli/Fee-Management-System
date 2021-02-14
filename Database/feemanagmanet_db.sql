create database feemanagment_db
use feemanagment_db


/*Admins Login*/
create table admin
(
Email varchar (25) not null,
Password varchar(20) not null,
sq varchar(30),
sa varchar(30)
)

select * from admin where Email='SDA@gmail.com' and password='123'

insert into admin
values ('Salman@gmail.com',123,'What is Your Mother Name?','Mummy')

update admin
set Email='sda@gmail.com',
sq='What is Your Mother Name?',
sa='Mummy'
where Email='sda@gmail.com'




/*Employees Login*/

create table accountant
(
Email varchar (20) not null,
Password int not null
)

select * from accountant

insert accountant 
values ('sda@gmail.com',123)



/*Students Record*/

create table student
(
id varchar(20) not null primary key,
Name varchar (20) NOT NULL,
Contact varchar (20)NOT NULL,
Email varchar (50) not null,
Class varchar (20)NOT NULL,
Adress varchar (100)NOT NULL
)


select * from student


insert into student
values ('2','saad','03162314069','saad@gmail.com','10','malir-kalaboard/A/3')


Update student 
set id=2,
name='name.getText()',
Contact='+contact.getText()+',
Email='"+email.getText()+"',
Adress='"+address.getText()+"'
where id=2



select * from login where Email='Syeddaniyalali20@gamil.com'
insert into login values('Syeddaniyalali20@gmail.com','daniyal')

create table view_of_Fee
(id varchar(20) foreign key REFERENCES student(id),
 Date varchar(20) ,
 paid_fee int,
 monthly_fee int,
 due int,
 total_fee int)

 select * from Fees_Pannel

 select * from view_of_Fee 

 insert into view_of_Fee values
 ('1','2017-02-03','200','600','400','60')

 update view_of_Fee
 set id=3,
 date='2017-01-02',
 paid_fee='200',
 monthly_fee='230',
 due='353',
 total_fee='325'
 where date='2017-01-02'


 select student.id,student.name,student.contact,student.email,student.Class,Fees_Pannel.date,Fees_Pannel.Paid_fee,Fees_Pannel.monthly_fee,Fees_Pannel.due,Fees_Pannel.total_fee
 from Fees_Pannel 
 join student on student.id=Fees_Pannel.id order by id

 
 select student.id,view_of_Fee.date,view_of_Fee.Paid_fee,view_of_Fee.monthly_fee,view_of_Fee.due,view_of_Fee.total_fee
 from view_of_Fee
 join student on student.id=view_of_Fee.id where student.id=3


 /*Employees Record*/

create table employee
(
Name varchar (20) NOT NULL,
Contact varchar (20)NOT NULL,
Email varchar (50) not null primary key,
Pass varchar (20)NOT NULL,
sq varchar (30)NOT NULL,
sa varchar (30)NOT NULL,
bd varchar (20)NOT NULL,
gender varchar (30)NOT NULL
)


insert into employee
values ('Daniyal','03162314069','saad@gmail.com','123','null','null','2018-22-33','male')

 update employee
 set Email='SDA@gaail.com',
 name='Daniyal',
 Contact='03322123232',
 pass='353',
 sq='325',
 sa='ssa',
 bd='2017-32-21',
 gender='male'
 where Email='SDA@gaail.com'

select * from employee
where bd='20/09/2017'

delete employee where email='SDA@gaail.com'

/*Notice board*/

Create table Notice
(Email varchar(50) foreign key references employee(Email) unique,
 pn varchar(120),
 ss varchar(5),
 es varchar(120)
)

insert into Notice values('SDA@gmail.com','','','')


update notice
set email='saad@gmail.com',
pn='',
ss='',
es=''
where email='saad@gmail.com'

select * from Notice

select * from employee

/*personal Tasks*/
create table personal_tasks
(Email varchar(50) foreign key references employee(Email) ,
 dates varchar(50)not null,
 task varchar(120) not null
)

insert into personal_tasks values
('Salman@gmail.com','','')

delete from personal_tasks
select * from personal_tasks where task='i want to make id 4'
update personal_tasks
set email='',
task=''
where email=''

