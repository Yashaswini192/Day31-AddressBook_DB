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
	
