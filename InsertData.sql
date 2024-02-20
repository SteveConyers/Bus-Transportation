/* InsertTestData */

use PUBLIC_TRANSPORTATION;

insert into DRIVER_TYPE
values ('AM', 'Morning Driver', '19019');
insert into DRIVER_TYPE
values ('PM', 'Evening Driver', '67524');
INSERT INTO DRIVER_TYPE
VALUES ('AM', 'Morning Driver', '53540');

insert into BUS_DRIVER
values ('19019', 'Stephen', 'Strange');
insert into BUS_DRIVER
values ('67524', 'Clark', 'Kent');
insert into BUS_DRIVER
values ('53540', 'Bruce', 'Wayne');

insert into DRIVER_SCHEDULE
values ('19019', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'N');
insert into DRIVER_SCHEDULE
values ('67524', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');
insert into DRIVER_SCHEDULE
values ('53540', 'N', 'Y', 'N', 'Y', 'Y', 'N', 'Y');

insert into RIDERS
values ('0737', 'Axel', 'Foley', '711 Ruddiman', 'Detroit', 'Michigan', '48127', 'Y');
insert into RIDERS
values (1234, 'Mike', 'Tyson', '53 Fallen Treasure Swale', 'Brownsville', 'New York', '11212', 'N');
insert into RIDERS
values ('', 'Thanos', NULL, '155 Amber Mountain Autoroute', 'Eggnog', 'Mississippi', '39148-0813', 'N');
insert into RIDERS
values ('0574', 'Akeem', 'Joffer', NULL, 'Zamunda', 'Africa', 'C0X-6W0', 'Y');
insert into RIDERS
values ('0276', '(Princess) Shuri', 'T''Challa', '12w2 Round Port', 'Wakanda', 'MAINE', '38841-2631', 'Y');

insert into MONTHLY_BILLING
values ('0737', 'Visa', encryptbypassphrase('())s*ec!ret p$assw#ord&', '3158009492737502'), '4/10/2016', '619', '711 Ruddiman Drive', 'Detroit', 'Michigan', '48127', 'Axel Foley');
insert into MONTHLY_BILLING
values ('0574', 'AE', encryptbypassphrase('())s*ec!ret p$assw#ord&', '5165347407380901'), '7/12/2017', '187', NULL, 'Zamunda', 'Africa', 'C0X-6W0', 'Akeem Joffer');
insert into MONTHLY_BILLING
values ('0276', 'Visa', encryptbypassphrase('())s*ec!ret p$assw#ord&', '86573090187384121'), '2/13/1993', '201', '12w2 Round Port', 'Wakanda', 'East Africa', '38841-2631', '(Princess) Shuri T''Challa');

insert into PASS_HOLDERS
values ('Foley', 'Axel', '0737');
insert into PASS_HOLDERS
values ('T''Challa', '(Princess) Shuri', '0276');
insert into PASS_HOLDERS
values ('Joffer', 'Akeem', '0574');

insert into Fares
values ('Foley', 'Axel', 'Standard', 'Monthly', 50.00);
insert into Fares
values ('Tyson', 'Mike', 'Standard', 'Ten-Rides', 12.50);
insert into Fares
values ('Thanos', null, 'Senior', 'One-Way', .60);
insert into Fares
values ('Joffer', 'Akeem', 'Senior', 'Monthly', 30.00);
insert into Fares
values ('T''Challa', '(Princess) Shuri', 'Disabled', 'Ten-Rides', 6.00);

insert into ROUTE_LIST
values ('48127', 'MI');
insert into ROUTE_LIST
values ('11212', 'NY');
insert into ROUTE_LIST
values ('39148', 'MS');
insert into Route_LIST
values ('49444', 'AF');
insert into ROUTE_LIST
values ('38841', 'AF');

insert into REDUCED_FARE
values ('101086', Null, 'Thanos', '78');
insert into REDUCED_FARE
values ('867535', 'T''Challa', '(Princess) Shuri', '30');

insert into COVERED_STATES
values('NY', '53540');
insert into COVERED_STATES
values('MI', '19019');
insert into COVERED_STATES
values('MS', '53540');
INSERT INTO COVERED_STATES
VALUES ('AF', '19019');
insert into COVERED_STATES
values ('ME', '67254');

-- View all data in tables
select * from RIDERS;
select * from BUS_DRIVER;
select * from DRIVER_TYPE;
select * from PASS_HOLDERS;
select * from FARES;
select * from ROUTE_LIST;
select * from COVERED_STATES;
select * from MONTHLY_BILLING;
select * from DRIVER_SCHEDULE;
select * from REDUCED_FARE
