# 🎓 University Management System — DBMS Capstone Project

## 📌 Project Overview

The **University Management System (UMS)** is a relational database project developed for the **Database Management Systems (2501IT05)** course.

The project focuses on organizing university information using a structured database and clearly defined relationships between entities.

## 🎯 Objectives

- Design an **ER diagram** for the University Management System.
- Identify the major entities and their attributes.
- Define **Primary Keys (PK)** and **Foreign Keys (FK)**.
- Prepare the **relational database schema**.
- Implement the database using **MySQL**.
- Maintain relationships and data consistency between tables.

## 🗂️ Main Entities

The project identifies six main entities:

1. **College**
2. **Department**
3. **Student**
4. **Faculty**
5. **Course**
6. **Enrollment**

## 🔗 Key Relationships

- A **College** has many **Departments**.
- A **Department** has many **Students**.
- A **Department** has many **Faculty** members.
- A **Department** has many **Courses**.
- **Students** and **Courses** have a many-to-many relationship through **Enrollment**.

## 🗃️ Relational Schema

The relational schema represents the database structure using tables, attributes, primary keys, foreign keys, and relationships.

The main tables used in the project are:

- `college`
- `department`
- `students`
- `faculty`
- `courses`
- `enrollments`

## 🖼️ ER Diagram

The ER diagram represents the six entities and their relationships in the University Management System.

![ER Diagram](ER%20DIAGRAM.png)

## 💻 MySQL Implementation

The database was implemented using **MySQL**. SQL commands such as `CREATE TABLE`, `ALTER TABLE`, `DESCRIBE`, and `SHOW TABLES` were used to create and verify the database structure.

The complete SQL script is available here:

📄 **[University Management System — 6 Entities SQL](University_Management_System_6_Entities.sql)**

## 📊 Project Presentation

The project presentation contains the project introduction, problem statement, objectives, ER diagram, relational schema, database implementation, and conclusion.

📑 **[View / Download Project PPT](DBMS-Lab-Project-PPT-Final%20(1).pptx)**

## 👥 Team Members

| Roll No. | Team Member |
|---|---|
| 25B11DS045 | **B. Rohith** |
| 25B11DS016 | **Ali Raza Hasan** |
| 25B11DS286 | **K. Anand Sai** |
| 25B11DS212 | **Vishnu Vardhan** |
| 25B11DS314 | **K. Siva Lakshmi Rahul** |

## 📁 Repository Contents

```text
university-management-system-dbms/
│
├── ER DIAGRAM.png
├── DBMS-Lab-Project-PPT-Final (1).pptx
├── University_Management_System_6_Entities.sql
└── README.md
```

## 🛠️ Technologies Used

- **MySQL** — Database implementation
- **SQL** — Database definition and manipulation
- **ER Modeling** — Database design
- **GitHub** — Project repository and documentation

## 🚀 Future Scope

The database can be extended in future stages with features such as a web interface, user authentication, attendance management, performance tracking, reports, and data analytics.

---

### 🎓 DBMS Capstone Project
**University Management System**  
*Design • Structure • Implement • Manage*
