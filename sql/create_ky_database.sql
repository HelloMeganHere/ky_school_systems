DROP DATABASE IF EXISTS kentucschool_db;
CREATE DATABASE kentucschool_db;
USE kentucschool_db;

CREATE TABLE region (
county_name VARCHAR(100) PRIMARY KEY,
region VARCHAR(100) NOT NULL
);

CREATE TABLE district (
 district_number CHAR(3) PRIMARY KEY,
 district_name VARCHAR(100) NOT NULL,
 county_number CHAR(3),
 county_name VARCHAR(100),
 CONSTRAINT fk_district_region FOREIGN KEY (county_name) REFERENCES region(county_name)
);

CREATE TABLE school (
 school_code VARCHAR(10) PRIMARY KEY,
 school_number CHAR(3),
 school_name VARCHAR(150) NOT NULL,
 state_school_id VARCHAR(20),
 nces_id VARCHAR(20),
 co_op VARCHAR(100),
 co_op_code VARCHAR(20),
 school_type VARCHAR(50),
 district_number CHAR(3) NOT NULL,
 CONSTRAINT fk_school_district FOREIGN KEY (district_number) REFERENCES district(district_number)
);

CREATE TABLE school_enrollment (
enrollment_id BIGINT AUTO_INCREMENT PRIMARY KEY,
 school_year CHAR(8) NOT NULL,
 school_code VARCHAR(10) NOT NULL,
 demographic VARCHAR(50) NOT NULL,
 enrollment_total INT NOT NULL,
 grade_level VARCHAR(20) NOT NULL,
 CONSTRAINT uni_enrollment UNIQUE (school_year, school_code, demographic, grade_level),
 CONSTRAINT fk_enrollment FOREIGN KEY (school_code) REFERENCES school(school_code)
);

CREATE TABLE school_absenteeism (
 absenteeism_id BIGINT AUTO_INCREMENT PRIMARY KEY,
 school_year CHAR(8) NOT NULL,
 school_code VARCHAR(10) NOT NULL,
 demographic VARCHAR(50) NOT NULL,
 grade_level VARCHAR(50) NOT NULL,
 suppressed VARCHAR(10),
 chronically_absent_students INT,
 enrolled_10_plus_days INT,
 chronic_absenteeism_rate DECIMAL(8, 2),
 CONSTRAINT uni_absenteeism UNIQUE (school_year, school_code, demographic, grade_level),
 CONSTRAINT fk_absenteeism FOREIGN KEY (school_code) REFERENCES school(school_code)
);

CREATE TABLE school_dropout (
 dropout_id BIGINT AUTO_INCREMENT PRIMARY KEY,
 school_year CHAR(8) NOT NULL,
 school_code VARCHAR(10) NOT NULL,
 demographic VARCHAR(50) NOT NULL,
 suppressed VARCHAR(10),
 dropout_rate DECIMAL(8, 2),
 CONSTRAINT uni_dropout UNIQUE (school_year, school_code, demographic),
 CONSTRAINT fk_school_dropout FOREIGN KEY (school_code) REFERENCES school(school_code)
);