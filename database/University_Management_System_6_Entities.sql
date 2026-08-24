-- University Management System (UMS)
-- DBMS Capstone Project - Review I
-- Six entities from the prepared PPT:
-- College, Department, Student, Faculty, Course, Enrollment

CREATE DATABASE IF NOT EXISTS university_management_system;
USE university_management_system;

-- Clean recreation (safe for a fresh project setup)
DROP TABLE IF EXISTS Enrollment;
DROP TABLE IF EXISTS Course;
DROP TABLE IF EXISTS Faculty;
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Department;
DROP TABLE IF EXISTS College;

-- 1. COLLEGE
CREATE TABLE College (
    CollegeID INT PRIMARY KEY AUTO_INCREMENT,
    CollegeName VARCHAR(100) NOT NULL,
    Address VARCHAR(255),
    ContactInfo VARCHAR(15),
    EstablishedDate DATE
);

-- 2. DEPARTMENT
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(100),
    HeadOfDepartment VARCHAR(100),
    Location VARCHAR(100),
    Contact VARCHAR(15),
    CollegeID INT,
    CONSTRAINT fk_department_college
        FOREIGN KEY (CollegeID) REFERENCES College(CollegeID)
);

-- 3. STUDENT
CREATE TABLE Student (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Gender VARCHAR(10),
    AdmissionDate DATE,
    Status VARCHAR(30),
    DepartmentID INT,
    CONSTRAINT fk_student_department
        FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- 4. FACULTY
CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Qualification VARCHAR(100),
    Experience INT,
    Salary DECIMAL(10,2),
    DepartmentID INT,
    CONSTRAINT fk_faculty_department
        FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- 5. COURSE
CREATE TABLE Course (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    CourseName VARCHAR(100) NOT NULL,
    CourseCode VARCHAR(20) NOT NULL UNIQUE,
    Credits INT,
    Duration VARCHAR(50),
    Prerequisites VARCHAR(255),
    DepartmentID INT,
    FacultyID INT,
    CONSTRAINT fk_course_department
        FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
    CONSTRAINT fk_course_faculty
        FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID)
);

-- 6. ENROLLMENT
CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    EnrollmentDate DATE NOT NULL,
    Grade VARCHAR(5),
    CONSTRAINT fk_enrollment_student
        FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    CONSTRAINT fk_enrollment_course
        FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- Verify all six tables
SHOW TABLES;

-- Verify structure
DESCRIBE College;
DESCRIBE Department;
DESCRIBE Student;
DESCRIBE Faculty;
DESCRIBE Course;
DESCRIBE Enrollment;
