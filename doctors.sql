use trainingdb21;
show tables;

select * from customers;

create table doctors (
id int primary key auto_increment,
name varchar(100) not null,
specialty varchar(100) not null,
hospital varchar(100) not null,
consultation_fees decimal(10,2) not null);

insert into doctors (name, specialty, hospital, consultation_fees) 
values('Dr.Ben','Homeopathy','KMCH',500.00);
insert into doctors (name, specialty, hospital, consultation_fees) 
values('Dr.Rishi','Homeopathy','KMCH',500.00);
insert into doctors (name, specialty, hospital, consultation_fees) 
values('Dr.Aruna','Ayurveda','San Jose Bonaventure',1500.00);
insert into doctors (name, specialty, hospital, consultation_fees) 
values('Dr.Roy','Physiologist','San Jose Bonaventure',1000.00);

select * from doctors;

select distinct d1.name, d1.specialty, d1.hospital
from doctors d1
join doctors d2
on d1.hospital = d2.hospital
and d1.specialty <> d2.specialty
order by d1.specialty desc;