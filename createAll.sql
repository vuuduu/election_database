-- Name: Vu Nguyen
-- Date: 11/21/2023
-- DESC: Project 1 - Milestone 2 | SQL script file with SQL statements for creating all the
-- 		 database objects for your project (eg tables, constraints, indexes, functions, triggers, etc).

-- create a schema and use it
CREATE SCHEMA IF NOT EXISTS elections;
USE elections;

-- Create all the Tables

-- Folks Table
CREATE TABLE IF NOT EXISTS folks (
	id INT PRIMARY KEY,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    nickName VARCHAR(255),
    dob DATE NOT NULL,
    primaryPhone VARCHAR(10) NOT NULL,
    secondaryPhone VARCHAR(10)
);
-- Emails Table
CREATE TABLE IF NOT EXISTS emails (
	folkID INT,
	email VARCHAR(255) UNIQUE,
    PRIMARY KEY (folkID, email),
    CONSTRAINT fkrc_emails_folks FOREIGN KEY (folkID) REFERENCES folks(id) ON DELETE CASCADE
);
-- Election Staffs Table
CREATE TABLE IF NOT EXISTS staffs (
	staffID INT PRIMARY KEY,
	folkID INT UNIQUE,
    staffType ENUM('Clerk', 'Monitor') NOT NULL,
    CONSTRAINT fkrc_staffs_folks FOREIGN KEY (folkID) REFERENCES folks(id) ON DELETE CASCADE
);
-- Places Table
CREATE TABLE IF NOT EXISTS places (
	placeID INT PRIMARY KEY,
    streetNumber INT NOT NULL,
    streetName VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    state VARCHAR(26) NOT NULL,
    zipcode INT NOT NULL,
    xCoordinate INT NOT NULL,
    yCoordinate INT NOT NULL,
    CONSTRAINT uc_address UNIQUE (streetNumber, streetName, city, state, zipcode),
    CONSTRAINT uc_xy_coordinate UNIQUE (xCoordinate, yCoordinate)
);
-- Residence Table
CREATE TABLE IF NOT EXISTS residence (
    folkID INT UNIQUE,
    placeID INT,
    PRIMARY KEY (folkID, placeID),
    CONSTRAINT fkrc_residence_folks FOREIGN KEY (folkID) REFERENCES folks(id) ON DELETE CASCADE,
    CONSTRAINT fkrc_residence_places FOREIGN KEY (placeID) REFERENCES places(placeID) ON DELETE CASCADE
);
-- Voting Centers Table
CREATE TABLE IF NOT EXISTS voting_centers (
    vcID VARCHAR(4) UNIQUE,
    placeID INT,
    PRIMARY KEY (vcID, placeID),
    CONSTRAINT fkrc_votingCenters_places FOREIGN KEY (placeID) REFERENCES places(placeID) ON DELETE CASCADE
);
-- Operating Periods table
CREATE TABLE IF NOT EXISTS operating_periods (
    vcID VARCHAR(4),
    openDatetimes DATETIME,
    closeDatetimes DATETIME,
    PRIMARY KEY (vcID, openDatetimes, closeDatetimes),
    CONSTRAINT check_valid_operating_periods CHECK (openDatetimes < closeDatetimes),
    CONSTRAINT fkrc_operatingPeriods_votingCenters FOREIGN KEY (vcID) REFERENCES voting_centers(vcID) ON DELETE CASCADE
);
-- Voting Centers Workers Table
CREATE TABLE IF NOT EXISTS workers (
    staffID INT,
    vcID VARCHAR(4),
    startDatetimes DATETIME,
    endDatetimes DATETIME,
    PRIMARY KEY (staffID, vcID, startDatetimes, endDatetimes),
    CONSTRAINT fkrc_workers_staff FOREIGN KEY (staffID) REFERENCES staffs(staffID) ON DELETE CASCADE,
    CONSTRAINT fkrc_workers_votingCenters FOREIGN KEY (vcID) REFERENCES voting_centers(vcID) ON DELETE CASCADE
);
-- Ballots Table
CREATE TABLE IF NOT EXISTS ballots (
    shortName VARCHAR(4) PRIMARY KEY,
    questionText VARCHAR(255) NOT NULL,
    availableStartPeriod DATETIME,
    availableEndPeriod DATETIME,
    CONSTRAINT check_ballot_period CHECK (availableStartPeriod < availableEndPeriod)
);
-- Ballots Answer table
CREATE TABLE IF NOT EXISTS ballot_answers (
	ballotShortName VARCHAR(4),
    ballotAnswer ENUM('YES', 'NO', 'ABSTAIN'),
    PRIMARY KEY (ballotShortName, ballotAnswer),
    CONSTRAINT fkrc_ballotAnswers_ballots FOREIGN KEY (ballotShortName) REFERENCES ballots(shortName) ON DELETE CASCADE
);
-- Voting Registrations table
CREATE TABLE IF NOT EXISTS voting_registrations (
    registrationNumber INT PRIMARY KEY,
    folkID INT,
    ballotShortName VARCHAR(4),
    vcID VARCHAR(4),
    desiredVotingDate DATE,
    CONSTRAINT uc_folkID_ballotShortName UNIQUE (folkID, ballotShortName),
    CONSTRAINT fkrc_registrations_folks FOREIGN KEY (folkID) REFERENCES folks(id) ON DELETE CASCADE,
    CONSTRAINT fkrc_registrations_votingCenters FOREIGN KEY (vcID) REFERENCES voting_centers(vcID) ON DELETE CASCADE,
    CONSTRAINT fkrc_registrations_ballots FOREIGN KEY (ballotShortName) REFERENCES ballots(shortName) ON DELETE CASCADE
);
-- Cast Votes Table
CREATE TABLE IF NOT EXISTS cast_votes (
    registrationNumber INT PRIMARY KEY,
    voterChoice ENUM('YES', 'NO', 'ABSTAIN'),
    votedDate DATE,
    staffID INT,
    CONSTRAINT fkrc_castVotes_registations FOREIGN KEY (registrationNumber) REFERENCES voting_registrations(registrationNumber),
	CONSTRAINT fkrc_castVotes_staffs FOREIGN KEY (staffID) REFERENCES staffs(staffID)
);













