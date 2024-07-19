create table Employee(
employee_id int,
first_name varchar(20),
last_name varchar(20),
city varchar(25),
state varchar(25),
constraint Employee_pk primary key(Employee_id));

create table Department(
Department_id int,
Department_name varchar(30),
constraint Department_pk primary key(Department_id));

create table Salary(
sal_id int,
employee_id int,
sal_amt int,
sal_type varchar(20),
hourly_pay int,
constraint Salary_pk primary key(Sal_id));


create table Attendance(
attendance_id int,
hours_work int,
constraint Attendance_pk primary key(Attendance_id));

create table Work_location(
loc_id int,
loc_name varchar(50),
no_of_Employees int,
city varchar(20),
state varchar(20),
constraint loc_pk primary key(Location_id));

create table login(
login_id int,
login_username varchar(50),
login_password varchar(50)
);

create table AccountDeatails(
acc_id int,
Bank_name varchar(50),
acc_no varchar(50),
Employee_id int,
constraint Account_pk primary key(Account_id),
foreign key(Employee_id)
);

