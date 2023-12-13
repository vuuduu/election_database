-- Name: Vu Nguyen
-- Date: 11/21/2023
-- DESC: Project 1 - Milestone 2 | a SQL script (text) file with SQL statements for dropping/deleting any database
-- 		 objects (tables, indexes, functions, etc) that are specific to your project in your MySql server.

-- Drop all Tables

DROP TABLE IF EXISTS elections.cast_votes;
DROP TABLE IF EXISTS elections.voting_registrations;
DROP TABLE IF EXISTS elections.ballot_answers;
DROP TABLE IF EXISTS elections.ballots;
DROP TABLE IF EXISTS elections.workers;
DROP TABLE IF EXISTS elections.operating_periods;
DROP TABLE IF EXISTS elections.voting_centers;
DROP TABLE IF EXISTS elections.residence;
DROP TABLE IF EXISTS elections.places;
DROP TABLE IF EXISTS elections.staffs;
DROP TABLE IF EXISTS elections.emails;
DROP TABLE IF EXISTS elections.folks;

-- Drop the Schema
DROP SCHEMA IF EXISTS elections;
