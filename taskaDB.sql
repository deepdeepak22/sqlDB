CREATE DATABASE guviClasses ;
USE guviClasses;
CREATE TABLE GuviStudentsData (
id INT primary key,
name VARCHAR (100),
course VARCHAR(100),
Trainer VARCHAR (100)
);
create table Contact(
contact_no int primary key,
contact_id int,
foreign key (contact_id) references GuviStudentsData(id)
ON DELETE CASCADE
ON UPDATE CASCADE
);
INSERT into Contact values (345567,11);
INSERT into Contact values (1234,10);
INSERT into Contact values (4567,1);
select * from Contact;

select * from GuviStudentsData ;
INSERT INTO GuviStudentsData(id ,name , course , Trainer)
values (1 , "rohit" ,"webdev" , "XYZ"),
(2 , "gill" ,"web dev" , "XYZ"),
(3 , "virat" ,"web dev" , "XYZ"),
(4 , "sky" ,"web dev" , "XYZ"),
(5 , "ishan" ,"web dev" , "XYZ"),
(6 , "hardik" ,"web dev" , "XYZ"),
(7 , "jadeja" ,"web dev" , "XYZ"),
(8 , "kuldeep" ,"web dev" , "XYZ"),
(9 , "shami" ,"web dev" , "XYZ"),
(10 , "bumrah" ,"web dev" , "XYZ"),
(11 , "siraj" ,"web dev" , "XYZ");
update GuviStudentsData
set course = "python"
where id = 5;
select * from GuviStudentsData;
delete from GuviStudentsData
where id = 11;
insert into GuviStudentsData values(11 , "siraj","webdev","xyz");