create database addressbook_service;
use addressbook_service;
show databases;
create table AddressBook(
						firstname varchar(50) not null,
                        secondname varchar(50) not null,
                        Address text not null,
                        city varchar(30) not null,
                        state varchar(30) not null,
                        zip int not null,
                        phoneNumber Long not null ,
                        email text not null
                        );
select * from addressbook;
insert into AddressBook(firstname,secondname,Address,city,state,zip,phoneNumber,email) 
     values("Anjali","Kota","29-56/456","Hyderabad","Telangana",500056,9666324598,"anju@gmail.com");
insert into AddressBook(firstname,secondname,Address,city,state,zip,phoneNumber,email) 
 values("Jimin","Park","78-485/34","Seoul","Busan",800045,7989562938,"jmpark@gmail.com");
 insert into AddressBook(firstname,secondname,Address,city,state,zip,phoneNumber,email) 
 values("Taehyung","Kim","34-58/098","vizag","AndhraPradesh",200034,7075352056,"kim123@gmail.com");
 insert into AddressBook(firstname,secondname,Address,city,state,zip,phoneNumber,email) 
 values("Sandhya","macherla","29/4-576","Hyderabad","Telangana",500057,7337094033,"sandhya18@gmail.com");
insert into AddressBook(firstname,secondname,Address,city,state,zip,phoneNumber,email) 
values("Akhila","koti","45/A-356","vizag","AndhraPradesh",200031,9879785647,"akhila26@gmail.com");

	
