USE pfs41;

--------------------------------------------------
-- STEP 1: SINGLE RECORD INSERTION
--------------------------------------------------
INSERT INTO student (sl_no, name, course, branch, graduation_year)
VALUES (101, 'yuvateja', 'mysql', 'cse', 2025);

--------------------------------------------------
-- STEP 2: MULTIPLE ROWS INSERTION
--------------------------------------------------
INSERT INTO student (sl_no, name, course, branch, graduation_year)
VALUES
(102, 'gopi', 'mysql', 'cse', 2025),
(103, 'divya teja', 'mysql', 'ece', 2025),
(104, 'praveen', 'mysql', 'aiml', 2025),
(105, 'satish', 'mysql', 'bsc', 2025);

--------------------------------------------------
-- STEP 3: DEFAULT ARGUMENTS (PARTIAL INSERT)
--------------------------------------------------
INSERT INTO student (sl_no, name)
VALUES (106, 'vasu');

--------------------------------------------------
-- STEP 4: COPYING RECORDS FROM EXISTING TABLE TO NEW TABLE
-- (INSERT INTO ... SELECT)
--------------------------------------------------

-- Create target table first
CREATE TABLE student_info (
    name VARCHAR(20),
    course VARCHAR(10)
);

-- Copy filtered records
INSERT INTO student_info (name, course)
SELECT name, course
FROM student
WHERE sl_no % 2 = 0;

--------------------------------------------------
-- STEP 5: CREATING A NEW TABLE FROM EXISTING TABLE
-- (CREATE TABLE AS SELECT)
--------------------------------------------------

CREATE TABLE course_info AS
SELECT name, course
FROM student
WHERE course = 'mysql';

--------------------------------------------------
-- STEP 6: DATA AGGREGATION USING EXISTING TABLE
--------------------------------------------------

CREATE TABLE course_summary AS
SELECT
    course,
    COUNT(*) AS total_students
FROM student
GROUP BY course;

--------------------------------------------------
-- STEP 7: CREATING A FILTERED TABLE FROM EXISTING TABLE
--------------------------------------------------

CREATE TABLE even_students AS
SELECT *
FROM student
WHERE sl_no % 2 = 0;

--------------------------------------------------
-- STEP 8: CREATING EMPTY TABLE STRUCTURE FROM EXISTING TABLE
--------------------------------------------------

CREATE TABLE student_template AS
SELECT *
FROM student
WHERE 1 = 0;

--------------------------------------------------
-- STEP 9: VERIFICATION QUERIES
--------------------------------------------------

SELECT * FROM student;
SELECT * FROM student_info;
SELECT * FROM course_info;
SELECT * FROM course_summary;
SELECT * FROM even_students;
SELECT * FROM student_template;
