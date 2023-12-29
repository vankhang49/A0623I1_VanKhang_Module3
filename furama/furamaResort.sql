create database furamaResort;
use furamaResort;

create table workPosition(
position_id int not null unique auto_increment,
position_name varchar(45),
primary key(position_id)
);
create table worklevel(
level_id int not null unique auto_increment,
level_name varchar(45),
primary key(level_id)
);
create table department(
dep_id int not null unique auto_increment,
dep_name varchar(45),
primary key(dep_id)
);
create table employees(
empId int not null unique auto_increment,
empFullName varchar(45),
dob date,
identifier varchar(12),
salary double,
phone varchar(10),
email varchar(45),
address varchar(100),
position_id int,
level_id int,
dep_id int,
primary key(empId),
foreign key(position_id) references workPosition(position_id),
foreign key(level_id) references workLevel(level_id),
foreign key(dep_id) references department(dep_id)
);

create table customerType(
type_id int not null unique auto_increment,
type_name varchar(45),
primary key(type_id)
);
create table gender(
genderId int not null unique auto_increment,
des varchar(10),
primary key(genderId)
);
create table customers(
cusId int not null unique auto_increment,
cusFullName varchar(45),
dob date,
genderId int,
identifier varchar(12),
phone varchar(10),
email varchar(45),
type_id int,
address varchar(100),
primary key(cusId),
foreign key(genderId) references gender(genderId),
foreign key(type_id) references customerType(type_id)
);

create table rentalType(
rental_id int not null unique auto_increment,
rental_name varchar(45),
primary key(rental_id)
);
create table typeOfService(
serviceType_id int not null unique auto_increment,
serviceType_name varchar(45),
primary key(serviceType_id)
);
create table services(
serviceId int not null unique auto_increment,
serviceName varchar(45),
area int,
rentalFee double,
maxOfNumPeople int,
rental_id int,
serviceType_id int,
standard varchar(45),
descriptions text,
poolArea double,
floors int,
primary key(serviceId),
foreign key(rental_id) references rentalType(rental_id),
foreign key(serviceType_id) references typeOfService(serviceType_id)
);

create table contracts(
contractId int not null unique auto_increment,
contractDate date,
contractEndDate date,
deposits double,
empId int,
cusId int,
serviceId int,
primary key(contractId),
foreign key(empId) references employees(empId),
foreign key(cusId) references customers(cusId),
foreign key(serviceId) references services(serviceId)
);
create table accompanies(
acc_id int not null unique auto_increment,
acc_name varchar(45),
price double,
unit varchar(10),
acc_status varchar(45),
primary key(acc_Id));
create table detailedContract(
detail_id int not null unique auto_increment,
contractId int,
acc_id int,
amount int,
primary key(detail_id),
foreign key(contractId) references contracts(contractId),
foreign key(acc_id) references accompanies(acc_id)
);






