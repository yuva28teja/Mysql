-- Create database
CREATE DATABASE pfs41;

-- Show all databases
SHOW DATABASES;

-- Use the database
USE pfs41;

-- Create student table
CREATE TABLE student (
    sl_no INT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    course VARCHAR(10),
    branch VARCHAR(5),
    graduation_year INT
);

-- Describe table structure
DESCRIBE student;

-- (Optional) Drop database
DROP DATABASE pfs41;
