# SQL (Basic) Assignment

## Assignment Overview
This repository contains a SQL script created for an online bookstore. The script retrieves, analyzes, and manages data using SQL fundamentals including data retrieval, filtering, sorting, grouping, joins, data manipulation, and table creation.

## Database Schema
The database consists of three tables:
* **Authors**: author_id (INT), author_name (VARCHAR), country (VARCHAR)
* **Books**: book_id (INT), title (VARCHAR), author_id (INT), category (VARCHAR), price (DECIMAL), published_year (INT)
* **Publishers**: publisher_id (INT, Primary Key), publisher_name (VARCHAR, Not Null, Unique), country (VARCHAR, Default), established_year (INT)

## Steps to Execute the SQL Script
1. Install and start a PostgreSQL database server.
2. Open a terminal and log into the database using `psql postgres` (or your specific credentials).
3. Run the script using the following command, replacing the file path with the actual location of the script:
   `\i /path/to/your/assignment.sql`
4. The script will automatically create tables, insert sample data, and run all required queries.