-- Objective: 	   	This assignment is centered around Data Manipulation Language (DML) 
-- 				operations in a fitness center database. You will be working on inserting, updating, 
-- 				and deleting data related to gym members, and workout sessions, emphasizing the practical 
-- 				application of SQL DML commands in a real-world scenario.

CREATE DATABASE ManagingAFitnessCenter;

CREATE TABLE Members (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
    session_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);


-- Task 1: 			SQL Data Insertion
-- Problem Statement: 	Your task is to populate the Members and WorkoutSessions tables with relevant data. 
-- 				This will involve inserting records into both tables while ensuring data integrity 
-- 				and consistency.
-- Expected Outcome: 	New member records are successfully added to the Members table with their respective details.
USE ManagingAFitnessCenter;

INSERT INTO WorkoutSessions (member_id, session_time, activity, session_date)
VALUES (1, '7am', 'jogging', "2024-01-01"), 
       (1, '7:30am', 'weights', "2024-01-03"),
       (3, '3pm', 'jogging', "2024-01-01"),
       (5, '3:55pm', 'swimming', "2024-01-01"),
       (2, '11:15am', 'weights', "2024-01-07");


INSERT INTO Members (name, age)
VALUES ('Jane Doe', 55), 
       ('James Johnson', 35),
       ('Nora Jones', 23),
       ('Sarah Stewart', 72),
       ('Brianna Mayer', 30),
       ('John Smith', 40);

-- Task 2: 			SQL Data Update

-- Problem Statement: 	Update the workout session time for a specific member. Assume member 'Jane Doe' has 
-- 				changed her workout session from morning to evening.

-- Expected Outcome: 	The WorkoutSessions table is successfully updated to reflect the new session time 
-- 				for Jane Doe.
USE ManagingAFitnessCenter;

UPDATE WorkoutSessions
SET session_time = '6pm'
WHERE member_id = 1

-- Task 3: 			SQL Data Deletion

-- Problem Statement: 	Remove data of a member who has canceled their gym membership. Assume 
-- 				member 'John Smith' has canceled his membership.
-- Expected Outcome: 	John Smith's record is successfully removed from the Members table, reflecting 
-- 				his cancellation of the gym membership.

USE ManagingAFitnessCenter;

DELETE FROM Members
WHERE id = 6;

SELECT * FROM Members
SELECT * FROM WorkoutSessions