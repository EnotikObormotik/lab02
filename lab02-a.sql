DROP TABLE IF EXISTS lab02, installs, soft, pcs, rooms, employees;

-- installs

CREATE TABLE installs
(
pc_id integer,
soft_id integer
);

CREATE TABLE soft
(
id integer,
sname varchar(20),
ver varchar(20),
quant int
);

CREATE TABLE pcs
(
id integer,
room_id integer,
note varchar (200),
ip_addr varchar(200),
mac_addr varchar(200)
);

CREATE TABLE rooms
(
id integer,
num varchar(20),
emp_id integer
);

CREATE TABLE employees
(
id integer,
lname varchar (20),
fname varchar (20),
mname varchar (20)
);
