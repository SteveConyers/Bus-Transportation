/* CreateTransportation */

create database PUBLIC_TRANSPORTATION;
use PUBLIC_TRANSPORTATION;

create table RIDERS
(PASS_NUM char(4) primary key,
FIRST_NAME varchar(20),
LAST_NAME varchar(30),
ADDRESS varchar(50),
CITY varchar(30),
STATE varchar(30),
ZIP varchar(20),
BUS_PASS char(1));

create table BUS_DRIVER
(DRIVER_ID char(5) primary key,
FIRST_NAME varchar(15),
LAST_NAME varchar(30));

create table DRIVER_TYPE
(TYPE varchar(2),
DESCRIPTION varchar(50),
DRIVER_ID char(5));

create table PASS_HOLDERS
(LAST_NAME varchar(30) primary key,
FIRST_NAME varchar(20),
PASS_NUM varchar(15));

create table FARES
(LAST_NAME varchar(30) primary key,
FIRST_NAME varchar(20),
RIDER_TYPE char(10),
ROUTE_TYPE varchar(10),
COST decimal(4,2));

create table ROUTE_LIST
(ZIP_CODE varchar(7) PRIMARY KEY,
STATE char(2));
 
create table COVERED_STATES
(STATE char(2) primary key,
DRIVER_ID char(5));

create table MONTHLY_BILLING
(PASS_NUM char(4),
CARD_NAME varchar(30),
CARD varbinary(100),
CARD_EXPIRE DATETIME,
CARD_CVC char(3),
ADDRESS varchar(50),
CITY varchar(30),
STATE varchar(30),
ZIP varchar(20),
BILLING_NAME varchar(50));

create table DRIVER_SCHEDULE
(DRIVER_ID char(5) primary key,
MON char(1),
TUES char(1),
WED char(1),
THURS char(1),
FRI char(1),
SAT char(1),
SUN char (1));

create table REDUCED_FARE
(FARE_CARD_NUM char(10) primary key,
LAST_NAME varchar(30),
FIRST_NAME varchar(20),
Age char(3));