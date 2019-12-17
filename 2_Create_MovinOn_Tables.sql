/* Purpose: Create tables in the MovinOn database
Script Date:March 20,2019
Developped by Hang
*/
-- drop database if exists movinon;
use MovinOn;

drop table if exists tblCustomer;
create table tblCustomer 
(
	CustID smallint not null auto_increment,
    CompantyName varchar(30) null,
    ContactFirst varchar(15) not null,
    ContacLast varchar(15) not null,
    Address varchar(40) not null,
    City varchar(15) not null,
    State char(2) not null,
    Zip char(5) not null,
    Phone char(15) not null,
    balance int not null,
    constraint pk_Customer primary key clustered (CustID asc)
);

alter table tblcustomer
modify column city varchar(20) not null,
modify column state varchar(10) not null;

show tables;
show create database movinon;
show create table tblCustomer;
describe tblCustomer;
show columns from tblcustomer;

create table tblUnitRental 
(
	CustID smallint not null auto_increment,
    WarehouseID char(4) not null,
    UnitID smallint not null,
    DateIn date not null,
    DateOut date null,
    constraint pk_tblUnitRental primary key clustered
    (
		CustID asc,
		WarehouseId asc,
		UnitId asc
    )  -- composite primary key
);

create table tblWarehouse 
(
	WarehouseID char(4) not null,
    Address varchar(40) not null,
    City varchar(15) not null,
    State char(2) not null,
    Zip char(5) not null,
    Phone char(15) not null,
    climateControl boolean not null,
    SecurityGate boolean not null, 
    constraint pk_tblWarehouse primary key clustered (WarehouseID asc)
);

drop table if exists tblstorageunit;
create table tblStorageUnit 
(
	ID smallint not null,
    UnitID smallint not null,
    UnitSize varchar(10) not null,
    WarehouseID char(4) not null,
    Rent smallint not null
);

create table tblEmployee 
(
	EmpID smallint not null auto_increment,
    EmpFirst varchar(15) not null,
    EmpLast varchar(15) not null,
    Address varchar(40) not null,
    City varchar(15) not null,
    State varchar(2) not null,
    Zip char(5) not null,
    Phone char(15) not null,
    cell char(15) not null,
	SSN char(9) not null,
    DOB date not null,
    StartDate date not null,
    EndDate date null,
    PositionID smallint not null,
    Salary float null,
    HourlyRate float null,
    Review date null,
    Memo varchar(60) not null,
    WarehouseID char(4) not null,
    constraint pk_tblEmployee primary key clustered (EmpID asc)
);

alter table tblEmployee
	modify memo varchar(60) null;

create table tblPosition 
(    
	PositionID smallint not null auto_increment,
	title varchar(15) null,
    constraint pk_tblPosition primary key clustered (PositionID asc)
);

create table tblJobOrder 
(
	JobID smallint not null auto_increment,
    CustID smallint not null,
    MoveDate date not null,
    FromAddress varchar(40) not null,
    FromCity varchar(15) not null,
    FromState char(2) not null,
    ToAddress varchar(60) not null,
    ToCity varchar(15) not null,
    ToState char(2) not null,
	DistanceEst float not null,
    WeightEst smallint not null,
    Packing tinyint not null,
    Heavy tinyint not null,
    `Storage` tinyint null,
    constraint pk_tblJobOrder primary key clustered (JobID asc)
);

create table tblJobDetail 
(
	JobID smallint not null auto_increment,
    VehicleID char(7) not null,
    DriverID smallint not null,
    MileageActual smallint not null,
    WeightActual smallint not null,
    constraint pk_tblJobDtail primary key clustered (JobID asc)
);
    
create table tblDriver 
(
	DriverID smallint not null auto_increment,
    DriverFirst varchar(10) not null,
    DriverLast varchar(10) not null,
    SSN char(9) not null,
    DOB date not null,
    StartDate date not null,
    EndDate date null,
    Address varchar(40) not null,
    City varchar(10) not null,
    State varchar(10) not null,
    Zip char(5) not null,
    Phone char(15) not null,
    cell char(11) not null,
    MileageRate float not null,
    Review date not null,
    DrivingRecord char(1) not null,
    constraint pk_tblDriver primary key clustered (DriverID asc)
);

alter table tbldriver
	modify City varchar(15) not null,
    modify Review date null;
  

create table tblVehicle
(   
    LicensePlateNum char(7) not null,
    VehicleID char(7) not null,
    Axle tinyint not null,
    Color varchar(8) not null,
    constraint pk_tblVehicle primary key clustered (VehicleID asc)
);

-- show base table information
select *
from information_schema.Tables
where table_type = 'Base Table'
and table_schema = 'MovinON';

-- show how many base table
select count(TABLE_NAME) as 'No. of Base Tables'
from information_schema.Tables 
where table_type = 'Base Table'
and Table_schema = 'movinon';

-- return the information of table tblcustomers
select *
from information_schema.COLUMNS
where table_name = 'tblcustomer';
