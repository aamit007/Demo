-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS PERSON1;

-- Set the database and schema context
USE SCHEMA PERSON1.PUBLIC;


-- Create the tables
CREATE TABLE Person1 (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255),
    Salary int
);
