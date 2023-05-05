show databases;
---- UC1 ----
create database address_book_service;
use address_book_services

-- UC2 ----
create table address_book(id int not null auto_increment, first_name varchar(50) not null, 
last_name varchar(50) not null, address varchar(200) not null, city varchar(50) not null, 
state varchar(50) not null, zip int not null,  phone_number long not null, 
email varchar(50) not null, primary key(id)); 

describe address_book;

---- UC3 ----
insert into address_book(first_name,last_name,address,city,state,zip,phone_number,email) values 
('Saras','Kumar','sirmour chock','Rewa','MP',486001,1234567890,'saras@hotmail.com');

insert into address_book(first_name,last_name,address,city,state,zip,phone_number,email) values 
('Narendra','Modi','7 RCR Road','Delhi','Delhi',123456,123454568,'pmmodi@govin.com');

insert into address_book(first_name,last_name,address,city,state,zip,phone_number,email) values 
('Yogi','adityanath','CM awash','Lucknow','UP',654321,767878089,'cmup@govup.com');

insert into address_book(first_name,last_name,address,city,state,zip,phone_number,email) values 
('Nitin','Gadkari','LIC chock','Nagpur','MP',145789,741443202,'nitin@govin.com');

---- UC4 ----

update address_book set address='Whitefield', city='BLR', email='milind@gmail.com' where first_name='Saras';

---- UC5 ----
delete from address_book where first_name='Saras';

---- UC6 ----
Select first_name from address_book where city='Delhi';

---- UC7 ----

select state, count(state) from address_book group by state;
select * from address_book;

----- UC8 ----

select * from address_book where city = 'jaipur' order by city;

---- UC9 ----
alter table address_book add relationship varchar(30) not null after last_name;
update address_book set relationship='Friend' where id=2;
update address_book set relationship='Friend' where id=3;
update address_book set relationship='Profession' where id=4;
update address_book set relationship='Profession' where id=5;
update address_book set relationship='Family' where id=6;
update address_book set relationship='Family' where id=7;	

select * from address_book;

