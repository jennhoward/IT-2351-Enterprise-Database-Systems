-- ********************************************
-- Assignment5No2	IT2351	Jennifer Howard
-- this SQL script creates a database with
-- provided and additional information
-- ********************************************

-- create and use the database
drop database if exists student_log;
create database student_log;
use student_log;

-- create the tables
create table student_names
(
	stud_num	int	primary key	auto_increment,
    studentID	varchar(5)	not null	unique,
    first_name	varchar(50),
    last_name	varchar(50)
);

create table comm_types
(
	studentID	varchar(5)	primary key,
    address	varchar(50),
    email	varchar(50),
    constraint comm_types_fk_student_names
		foreign key (studentID)
        references student_names (studentID)
);

create table school_studies
(
	studentID	varchar(5)	primary key,
    classes	varchar(15),
    major	varchar(50),
    constraint school_studies_fk_student_names
		foreign key (studentID)
        references student_names (studentID)
);
    


