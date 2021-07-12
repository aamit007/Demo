-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS PERSONS;

-- Set the database and schema context
USE SCHEMA PERSONS.PUBLIC;

-- Create the file formats
CREATE OR REPLACE FILE FORMAT CSV_NO_HEADER
    TYPE='CSV'
    COMPRESSION = 'AUTO'
    FIELD_DELIMITER = ','
    SKIP_HEADER = 0
    FIELD_OPTIONALLY_ENCLOSED_BY = '"'
    NULL_IF = ('NULL','\\N','\N', '');

CREATE OR REPLACE FILE FORMAT JSON
    TYPE='JSON'
    COMPRESSION = 'AUTO'
    ENABLE_OCTAL = FALSE
    ALLOW_DUPLICATE = FALSE
    STRIP_OUTER_ARRAY = FALSE
    STRIP_NULL_VALUES = FALSE
    IGNORE_UTF8_ERRORS = FALSE;


-- Create the tables
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
