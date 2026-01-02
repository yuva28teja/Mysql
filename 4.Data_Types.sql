USE pfs41;

--------------------------------------------------
-- STEP 0: CREATE EXTENDED STUDENT TABLE WITH COMMENTS
--------------------------------------------------
CREATE TABLE student_extended (
    -- Original Student Columns
    sl_no INT,                      -- Student serial number (Integer)
    name VARCHAR(50),                -- Student name (Variable-length string)
    course VARCHAR(20),              -- Course name (Variable-length string)
    branch VARCHAR(20),              -- Branch/department (Variable-length string)
    graduation_year YEAR,            -- Graduation year (Year)

    -- Integer Types
    col_tinyint TINYINT,             -- Tiny integer (-128 to 127)
    col_smallint SMALLINT,           -- Small integer (-32,768 to 32,767)
    col_mediumint MEDIUMINT,         -- Medium integer (-8,388,608 to 8,388,607)
    col_integer INTEGER,             -- Standard integer (-2,147,483,648 to 2,147,483,647)
    col_bigint BIGINT,               -- Large integer (-9 quintillion to +9 quintillion)

    -- Decimal & Floating Types
    col_decimal DECIMAL(10,2),       -- Fixed-point decimal (10 digits, 2 after decimal)
    col_float FLOAT,                 -- Single-precision floating point
    col_double DOUBLE,               -- Double-precision floating point

    -- Date & Time Types
    col_date DATE,                   -- Date (YYYY-MM-DD)
    col_datetime DATETIME,           -- Date and time (YYYY-MM-DD HH:MM:SS)
    col_timestamp TIMESTAMP,         -- Timestamp (UTC)
    col_time TIME,                   -- Time (HH:MM:SS)
    col_year YEAR,                   -- Year (YYYY)

    -- String (Character) Types
    col_char CHAR(10),               -- Fixed-length string (10 characters)
    col_varchar VARCHAR(50),         -- Variable-length string (up to 50 characters)
    col_tinytext TINYTEXT,           -- Small text (up to 255 bytes)
    col_text TEXT,                   -- Text (up to 65,535 bytes)
    col_mediumtext MEDIUMTEXT,       -- Medium text (up to 16 MB)
    col_longtext LONGTEXT,           -- Long text (up to 4 GB)
    col_enum ENUM('A','B','C'),      -- Enum type, allowed values A, B, C
    col_set SET('X','Y','Z'),        -- Set type, multiple allowed values X, Y, Z

    -- Binary Types
    col_binary BINARY(10),           -- Fixed-length binary data (10 bytes)
    col_varbinary VARBINARY(50),     -- Variable-length binary data (up to 50 bytes)
    col_tinyblob TINYBLOB,           -- Tiny binary object (up to 255 bytes)
    col_blob BLOB,                   -- Binary large object (up to 65,535 bytes)
    col_mediumblob MEDIUMBLOB,       -- Medium binary object (up to 16 MB)
    col_longblob LONGBLOB,           -- Long binary object (up to 4 GB)

    -- Boolean Type
    col_boolean BOOLEAN               -- Boolean value (TRUE/FALSE)
);

--------------------------------------------------
-- STEP 1: INSERT SAMPLE RECORDS
--------------------------------------------------
INSERT INTO student_extended (
    sl_no, name, course, branch, graduation_year,
    col_tinyint, col_smallint, col_mediumint, col_integer, col_bigint,
    col_decimal, col_float, col_double,
    col_date, col_datetime, col_timestamp, col_time, col_year,
    col_char, col_varchar, col_tinytext, col_text, col_mediumtext, col_longtext, col_enum, col_set,
    col_binary, col_varbinary, col_tinyblob, col_blob, col_mediumblob, col_longblob,
    col_boolean
) VALUES
(101, 'yuvateja', 'mysql', 'cse', 2025,
 127, 32767, 8388607, 2147483647, 9223372036854775807,
 12345.67, 123.45, 1234567.89,
 '2025-12-29', '2025-12-29 18:00:00', CURRENT_TIMESTAMP, '18:00:00', 2025,
 'charfield', 'varchar field', 'tiny text', 'text field', 'medium text', 'long text', 'A', 'X,Y',
 b'1010101010', b'101010', b'1010', b'10101', b'10101010', b'1010101010',
 TRUE
),
(102, 'gopi', 'mysql', 'cse', 2025,
 100, 20000, 500000, 123456789, 900000000000000000,
 54321.12, 987.65, 7654321.12,
 '2025-12-28', '2025-12-28 12:30:00', CURRENT_TIMESTAMP, '12:30:00', 2025,
 'char2', 'varchar2', 'tiny2', 'text2', 'medium2', 'long2', 'B', 'Y,Z',
 b'11110000', b'11001100', b'1111', b'1100', b'101010', b'1111000011',
 FALSE
);

--------------------------------------------------
-- STEP 2: VERIFY INSERT
--------------------------------------------------
SELECT * FROM student_extended;
