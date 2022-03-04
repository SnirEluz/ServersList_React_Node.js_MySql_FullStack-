create database server;

USE server;

create table hostingCompay (
     id int auto_increment,
     serverName varchar(3000),
     primary key(id)
);

create table servers (
     id int auto_increment,
     name varchar(3000),
     ip varchar(3000),
	 hostingId int,
     status varchar(3000),
     date datetime default now(),
     primary key(id),
     foreign key(hostingId) references hostingCompay(id)
);

insert into servers(name, ip, hostingId, status)
values 
("FaceBook", "0-255.0-435.0-435.0-435", 1, "Online"),
("Instegram", "0-155.0-435.0-035.0-544", 2, "Ofline"),
("Snapchat", "0-132.0-987.0-564.0-655", 3, "Online"),
("JohnBryce", "0-765.0-345.0-342.0-124", 4, "Online"),
("Jbl", "0-254.0-440.4-654.0-432", 1, "Ofline"),
("Apple", "0-543.0-324.0-543.0-876", 2, "Online"),
("Dell", "0-432.0-143.0-654.0-987", 2, "Ofline"),
("Ikea", "0-456.0-876.0-432.0-145", 4, "Ofline")

insert into hostingCompay(serverName)
values ("Microsoft"),("IBM"),("GoDaddy"),("DigitalO")

