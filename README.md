# Airport Management System Database

## Overview
This project involves the design and implementation of a comprehensive Airport Management System using Microsoft SQL Server Management Studio (SSMS) for the database, Django for the backend, and Visual Studio Code for frontend development. The system manages various aspects of airport operations, including passenger information, flight schedules, baggage tracking, security protocols, and more.

## Table of Contents
1. [Choosing the Topic](#choosing-the-topic)
2. [Choosing DB Software](#choosing-db-software)
3. [Choosing the Backend Integration Model](#choosing-the-backend-integration-model)
4. [Entities and Relationships](#entities-and-relationships)
   - 4.1 [Building Relations](#building-relations)
   - 4.2 [Entity Relationship Diagram](#entity-relationship-diagram)
   - 4.3 [Relational Schema Diagram](#relational-schema-diagram)
   - 4.4 [Normalization](#normalization)
5. [Authorization](#authorization)
   - 5.1 [User Login, Roles, Privileges, and Authorization](#user-login-roles-privileges-and-authorization)
6. [Tables](#tables)
7. [Backup & Recovery](#backup-and-recovery)
   - 7.1 [Backup and Recovery Strategy](#backup-and-recovery-strategy)
   - 7.2 [Backup Process](#backup-process)
   - 7.3 [Recovery Process](#recovery-process)
8. [Views & Joins](#views-and-joins)
9. [Stored Procedures](#stored-procedures)
10. [Triggers](#triggers)
11. [Indexing](#indexing)
12. [Objectives](#objectives)
13. [Scope of the Database](#scope-of-the-database)
14. [Key Functionalities](#key-functionalities)
15. [Key Interests](#key-interests)
16. [Performance & Verification of Database](#performance-and-verification-of-database)

## 1. Choosing the Topic
The team considered multiple topics, including CRM, E-Commerce, HR, and others. After discussions, the **Airport Management System** was selected due to its complexity, widespread use, and the learning opportunities it presents.

## 2. Choosing DB Software
The project uses **Microsoft SQL Server Management Studio (SSMS) 19** for the database due to its integration with Visual Studio Code, advanced security features, and the team's familiarity with the platform.

## 3. Choosing the Backend Integration Model
The backend is developed using the **Django Framework**, chosen for its simplicity and compatibility with SSMS and the front-end tools.

## 4. Entities and Relationships
### Entities
- **Passenger**: Manages passenger details.
- **Flight**: Contains flight schedules and related information.
- **Airport**: Manages airport-specific details.
- **Ticket**: Details about tickets, their types, and prices.
- **Airline**: Manages airline-specific information.
- **Security**: Manages security personnel and their roles.
- **Pilot**: Contains pilot details and qualifications.
- **Traffic Control**: Manages traffic control towers and personnel.
- **Luggage**: Manages passenger luggage details.
- **Fueling Station**: Manages fueling stations and their capacities.
- **Airport Runway**: Details about the airport runways.

### 4.1 Building Relations
Relationships are defined between these entities, such as:
- **Passenger - Ticket**: One to Many
- **Flight - Airport**: One to Many
- **Ticket - Flight**: Many to One
- **Flight - Airline**: Many to One
- **Security - Airport**: Many to One
- **Pilot-Flight**: Many to Many
- **Luggage - Passenger**: One to Many

### 4.2 Entity Relationship Diagram
The ERD provides a visual representation of the entities and their relationships.

### 4.3 Relational Schema Diagram
The schema diagram outlines how the tables relate within the database.

### 4.4 Normalization
The database schema is normalized to reduce redundancy and improve efficiency.

## 5. Authorization
### 5.1 User Login, Roles, Privileges, and Authorization
Four user roles have been defined:
- **Admin**
- **Airport Staff**
- **Security Personnel**
- **Passengers**

Each role has specific privileges and access rights.

## 6. Tables
All entities have corresponding tables in the database, populated with sample data while maintaining data integrity.

## 7. Backup and Recovery
### 7.1 Backup and Recovery Strategy
A comprehensive backup and recovery strategy is in place, including:
- **Full Backups**: Weekly backups to two separate locations.
- **Differential Backups**: Taken every two days during off-peak hours.
- **Transactional Backups**: Daily log backups for continuous data protection.
- **Recovery Processes**: Steps for full, differential, and transactional recovery are outlined, ensuring data integrity and minimizing downtime.

### 7.2 Backup Process
The backup process involves regular full, differential, and transactional backups stored on-premises and off-site for disaster recovery.

### 7.3 Recovery Process
The recovery process is designed to restore data efficiently in the event of a failure, with a focus on minimizing downtime.

## 8. Views and Joins
Views have been created for various scenarios:
- **Passenger View**: Displays passenger details, luggage, and tickets.
- **Pilot View**: Displays pilot information and associated flights.
- **Runway View**: Shows runway usage for scheduled flights.
- **Flight View**: Shows the number of flights operating on a specific day.
- **Fueling Station View**: Extracts and checks fueling station data.

## 9. Stored Procedures
Stored procedures have been implemented for various functions:
- **Weight Check Procedure**: Adjusts ticket price based on luggage weight.
- **Security Area Changed Procedure**: Updates security personnel locations.
- **Print Details of First Five Passengers Procedure**: Displays the first five passengers.
- **Show Information of Passengers & Their Luggage Procedure**: Displays passenger and luggage details.
- **Number of Flights Booked Procedure**: Displays booked flights.
- **Lighting System Check**: Checks the functionality of lighting systems.

## 10. Triggers
Triggers have been created for scenarios such as:
- **Passenger-Ticket Trigger**: Checks for ticket availability.
- **Ticket Upgradation Trigger**: Handles ticket upgrades.
- **Flight Delay Trigger**: Notifies passengers of flight delays.
- **Luggage Weight Check Trigger**: Checks for luggage weight limits.
- **Fuel Monitoring Trigger**: Monitors fuel levels in aircraft.

## 11. Indexing
Indexes have been created to optimize database performance:
- **Clustered Indexing**: Automatically created on primary keys.
- **Non-clustered Indexing**: Created on specific columns like departure times, pilot experience, ticket prices, and fueling stations.

## 12. Objectives
The database aims to efficiently manage all aspects of airport operations, including passenger information, flight schedules, security, and maintenance.

## 13. Scope of the Database
The database system covers various airport operations, from passenger management to flight tracking, security protocols, and resource allocation.

## 14. Key Functionalities
- **Passenger Management**: Manages passenger details, ticketing, and check-ins.
- **Flight Operations**: Tracks flight schedules and pilot assignments.
- **Baggage Tracking**: Ensures accurate tracking of passenger baggage.
- **Security Protocols**: Monitors and enforces airport security measures.
- **Maintenance Tracking**: Schedules and tracks airport equipment maintenance.
- **Communication**: Facilitates communication between airport departments.

## 15. Key Interests
The project was chosen for its complexity and the opportunities it presents for learning about the aviation industry. The team found it engaging to work on various aspects of airport operations, including security, baggage handling, and traffic control.

## 16. Performance and Verification of Database
### 16.1 Relationship Check
Subqueries are used to check table relationships.

### 16.2 Checking Foreign Key Violation
Processes are in place to ensure no foreign key violations occur.

### 16.3 Checking Logical Errors
Logical checks are performed to validate the accuracy of the database.

### 16.4 Integrity Check
Data integrity is maintained throughout the database, ensuring reliable operations.



## Contributers:
- Abdullah Imran (GitHub: @poetabdullah)
- Ambreen (GitHub: @AmbreenAmbi04)

## Inquiries:
For any issues, feel free to reach out. 
