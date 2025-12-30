USE pfs41;

-- View existing records
SELECT * FROM student;

-- Remove all records from student table
TRUNCATE TABLE student;

--------------------------------------------------
-- APPROACH NO-1
-- Adding ALL column data (mandatory) 
-- According to TABLE column order
--------------------------------------------------

INSERT INTO student VALUES
(111, 'yuvateja', 'mysql', 'cse', 2025),
(222, 'gopi', 'mysql', 'cse', 2025),
(333, 'divya teja', 'mysql', 'ece', 2025),
(444, 'praveen', 'mysql', 'aiml', 2025),
(555, 'satish', 'mysql', 'bsc', 2025),
(666, 'ajay', 'mysql', 'eee', 2025);

--------------------------------------------------
-- APPROACH NO-2
-- Adding ALL column data (mandatory)
-- According to USER-DEFINED column order
--------------------------------------------------

TRUNCATE TABLE student;

INSERT INTO student
(name, sl_no, course, graduation_year, branch)
VALUES
('yuvateja', 111, 'mysql', 2025, 'cse'),
('gopi', 222, 'mysql', 2025, 'cse'),
('divya teja', 333, 'mysql', 2025, 'ece'),
('praveen', 444, 'mysql', 2025, 'aiml'),
('satish', 555, 'mysql', 2025, 'bsc'),
('ajay', 666, 'mysql', 2025, 'eee');

--------------------------------------------------
-- APPROACH NO-3
-- Adding data ONLY to USER-REQUIRED columns
-- Single record (not all columns)
--------------------------------------------------

TRUNCATE TABLE student;

INSERT INTO student (sl_no, name, course)
VALUES (111, 'yuvateja', 'mysql');

--------------------------------------------------
-- APPROACH NO-4
-- Adding data ONLY to USER-REQUIRED columns
-- Multiple records in a SINGLE query
--------------------------------------------------

TRUNCATE TABLE student;

INSERT INTO student (sl_no, name, course)
VALUES
(111, 'yuvateja', 'mysql'),
(222, 'gopi', 'mysql'),
(333, 'divya teja', 'mysql'),
(444, 'praveen', 'mysql'),
(555, 'satish', 'mysql'),
(666, 'ajay', 'mysql');
