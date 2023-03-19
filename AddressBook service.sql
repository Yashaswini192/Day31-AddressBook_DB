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

update AddressBook set zip=200345 where firstname="Akhila";
update AddressBook set email="anjali456@gmail.com" where firstname="Anjali";
update AddressBook set city ="Daegu" where firstname="Jimin";
update AddressBook set phoneNumber=9441109754 where firstname="Taehyung";
update AddressBook set Address="26-48E/567" where secondname="macherla";
	
delete from AddressBook where firstname="Akhila";
delete from AddressBook where secondname="Kota";

select firstname,secondname,Address,city,state,zip,phoneNumber,email from AddressBook 
  where city in(select city from AddressBook  group by city having count(*) >1);
select firstname,secondname,Address,city,state,zip,phoneNumber,email from AddressBook 
where state in(select state from AddressBook group by state having count(*) >1);

select count(city) from AddressBook
where city in(select city from AddressBook group by city);
select count(state) from AddressBook 
where state in(select state from AddressBook group by state);

select firstname,secondname,Address,city,state,zip,phoneNumber,email from AddressBook
where city="vizag"  order by firstname ASC;
select firstname,secondname,Address,city,state,zip,phoneNumber,email from AddressBook
where city="Hyderabad"  order by firstname ASC;

alter table AddressBook add ABtype varchar(50) not null;
update AddressBook set ABtype ="Family" where firstname="Akhila";
update AddressBook set ABtype="Friends" where firstname="Jimin";
update AddressBook set ABtype ="Family" where firstname="Sandhya";
update AddressBook set ABtype="Friends" where firstname="Taehyung";
select firstname,secondname,Address,city,state,zip,phoneNumber,email,ABtype from AddressBook
where ABtype="Family";
select firstname,secondname,Address,city,state,zip,phoneNumber,email,ABtype from AddressBook
where ABtype="Friends";

select count(ABtype) from AddressBook where ABtype="Family";
select count(ABtype) from AddressBook where ABtype="Friends";

insert into AddressBook(firstname,secondname,Address,city,state,zip,phoneNumber,email,ABtype)
 values("Anjali","Kota","29-56/456","Hyderabad","Telangana",500056,9666324598,"anju@gmail.com","Family");
 insert into AddressBook(firstname,secondname,Address,city,state,zip,phoneNumber,email,ABtype)
 values("Kshirja","khan","67-5677","Solapur","Maharashtra",600078,8675863425,"kshirja@gmail.com","Friends");
 
 create table personal_details(
							id int not null primary key auto_increment,
                            firstname varchar(30),
                            secondname varchar(50) not null,
                            phoneNumber Long not null ,
                            email text(100) not null
                            );
insert into personal_details(firstname,secondname,phoneNumber,email)
values("Sam","rao",9586746547,"sam@gmail.com"),
("Riya","thakur",7869586324,"riya12@gmail.com"),
("Abhi","roy",7563425367,"abhi56@gmail.com"),
("Jin","soek",7586947543,"jin@gmail.com"),
("Ayra","singh",6574857445,"ayra@gmail.com");
select * from personal_details;
 create table choose_type(
				contacttype_id int primary key not null,
                contact_type varchar(20)
                );
insert into choose_type(contacttype_id,contact_type) values(1,"Family"),(2,"Friends"),(3,"Profession");
select * from choose_type;
create table book_type(
						id int,
                        contacttype_id int,
                        foreign key(id) references personal_details(id),
                        foreign key(contacttype_id) references choose_type(contacttype_id)
                        );
insert into book_type(id,contacttype_id) values(1,1),(2,3),(3,1),(4,2),(5,3);

create table contact_address(
							id int not null,
                            address varchar(20),
                            city varchar(20),
                            state varchar(20),
                             foreign key(id) references personal_details(id)
                             );
insert into contact_address(id,address,city,state) values(1,"46-4758","Vizag","AP");
insert into contact_address(id,address,city,state) values(2,"56-45/456","Busan","Seoul"),
														(3,"56/675","New delhi","Delhi"),
                                                        (4,"56-387","Banglore","karnataka"),
                                                        (5,"34-4565","solapur","Maharashtra");
                                                        
                                                        