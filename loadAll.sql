-- Name: Vu Nguyen
-- Date: 11/21/2023
-- DESC: Project 1 - Milestone 2 |  SQL script file with statements for inserting appropriate
-- 		 data tuples to your tables (see project report for the least amount to data to load)

USE elections;

-- Insert 12 folks
INSERT INTO folks VALUES
    (1, 'Aaron', 'Smith', 'AS', '2000-01-01', '1000000000', NULL),
    (2, 'Alice', 'Sauls', 'AS', '2000-01-02', '2000000000', NULL),
    (3, 'Boris', 'Seesh', 'BS', '2000-01-03', '3000000000', NULL),
    (4, 'Ellie', 'Shill', 'ES', '2000-01-04', '4000000000', NULL),
    (5, 'Mikey', 'Shaft', 'MS', '2000-01-05', '5000000000', NULL),
    (6, 'Sofia', 'Shank', 'SS', '2000-01-06', '6000000000', NULL),
    (11, 'Chris', 'Faulk', 'CF', '2000-01-07', '7171000000', NULL),
    (12, 'Errin', 'Fault', 'EF', '2000-01-08', '7172000000', NULL),
    (13, 'Reene', 'Fills', 'RF', '2000-01-09', '7173000000', NULL),
    (14, 'Ollie', 'Fayne', 'OF', '2000-01-10', '7174000000', NULL),
    (15, 'Frank', 'Fitte', 'FF', '2000-01-11', '7175000000', NULL),
    (16, 'Maddy', 'Fairy', 'MF', '2000-01-12', '7176000000', NULL),
    (17, 'Xavie', 'Fouls', 'XF', '2000-01-13', '4101000000', NULL),
    (18, 'Yesen', 'Freem', 'YF', '2000-01-14', '4102000000', NULL),
    (19, 'Zachs', 'Flowr', 'ZF', '2000-01-15', '4103000000', NULL);

-- Insert 5 rows into the emails table
INSERT INTO emails VALUES
    (1, 'aaSmith1@example.com'),
    (2, 'a_sauls1234@example.com'),
    (4, 'e_shill104@example.com'),
    (6, 'shank_daughter@example.com'),
    (3, 'Bsheesh1@example.com'),
    (12, 'E2rFaul@example.com'),
    (5, 'mike.sha@example.com');

-- Insert 6 staff members
INSERT INTO staffs VALUES
    (10, 1, 'Clerk'),
    (20, 2, 'Clerk'),
    (30, 3, 'Clerk'),
    (40, 4, 'Monitor'),
    (50, 5, 'Monitor'),
    (60, 6, 'Monitor');

-- Insert 6 places distributed among 2 cities and 2 states
INSERT INTO places VALUES
    (1, 10, 'Oak St', 'Catonsville', 'MD', 21228, 1, 1),
    (2, 4, 'Jame Rd', 'Catonsville', 'MD', 21228, 2, 2),
    (3, 80, 'Eel Vc', 'Catonsville', 'MD', 21228, 3, 3),
    (4, 39, 'Shark Vc', 'Lancaster', 'PA', 17604, 4, 4),
    (5, 202, 'Pine St', 'Lancaster', 'PA', 17605, 5, 5),
    (6, 303, 'Fish Vc', 'Lancaster', 'PA', 17606, 6, 6),
    (7, 404, 'Cranbery Rd', 'Leola', 'PA', 17540, 7, 7);

-- Insert residence
INSERT INTO residence VALUES
	(11, 5), (12, 5), (13, 5), (14, 7), (15, 7), (16, 7), -- PA RESIDENCE
    (1, 7), (4, 5), (6, 7),
    (17, 1), (18, 1), (19, 2), -- MD RESIDENCE
    (2, 1), (3, 2), (5, 2);

-- Insert 3 voting centers, each with 4 operating periods
INSERT INTO voting_centers VALUES
    ('VC3', 3),
    ('VC4', 4),
    ('VC6', 6);

-- Insert operating periods for voting centers
INSERT INTO operating_periods VALUES
    ('VC3', '2023-11-01 09:00:00', '2023-11-01 22:00:00'), -- VC3
    ('VC3', '2023-11-02 09:00:00', '2023-11-02 22:00:00'),
    ('VC3', '2023-12-01 09:00:00', '2023-12-01 22:00:00'),
    ('VC3', '2023-12-02 09:00:00', '2023-12-02 22:00:00'),
	('VC4', '2023-11-01 09:00:00', '2023-11-01 22:00:00'), -- VC4
    ('VC4', '2023-11-02 09:00:00', '2023-11-02 22:00:00'),
    ('VC4', '2023-12-01 09:00:00', '2023-12-01 22:00:00'),
    ('VC4', '2023-12-02 09:00:00', '2023-12-02 22:00:00'),
    ('VC6', '2023-11-01 09:00:00', '2023-11-01 22:00:00'), -- VC6
    ('VC6', '2023-11-02 09:00:00', '2023-11-02 22:00:00'),
    ('VC6', '2023-12-01 09:00:00', '2023-12-01 22:00:00'),
    ('VC6', '2023-12-02 09:00:00', '2023-12-02 22:00:00'); 
    
-- Insert workers
INSERT INTO workers VALUES
	(40, 'VC4', '2023-11-01 09:00:00', '2023-11-01 22:00:00'),
    (40, 'VC4', '2023-11-02 09:00:00', '2023-11-02 22:00:00'),
    (40, 'VC4', '2023-12-01 09:00:00', '2023-12-01 22:00:00'),
    (60, 'VC6', '2023-11-01 09:00:00', '2023-11-01 22:00:00'),
    (60, 'VC6', '2023-11-02 09:00:00', '2023-11-02 22:00:00'),
    (50, 'VC3', '2023-11-01 09:00:00', '2023-11-01 22:00:00'),
    (50, 'VC3', '2023-11-02 09:00:00', '2023-11-02 22:00:00');

-- Insert 4 ballots, each with 3 possible answers
INSERT INTO ballots VALUES
    ('B1', 'What is question 1?', '2023-11-01 12:00:00', '2023-11-01 18:00:00'),
    ('B2', 'What is question 2?', '2023-11-02 10:00:00', '2023-11-02 20:00:00'),
    ('B3', 'What is question 3?', '2023-12-01 09:00:00', '2023-12-01 12:00:00'),
    ('B4', 'What is question 4?', '2023-12-02 14:00:00', '2023-12-02 22:00:00');
    
-- Insert 3 possible answer for 4 of the ballots
INSERT INTO ballot_answers VALUES
	('B1', 'YES'), -- Ballot 1
    ('B1', 'NO'),
	('B1', 'ABSTAIN'),
	('B2', 'YES'), -- Ballot 2
    ('B2', 'NO'),
	('B2', 'ABSTAIN'),
	('B3', 'YES'), -- Ballot 3
    ('B3', 'NO'),
	('B3', 'ABSTAIN'),
	('B4', 'YES'), -- Ballot 4
    ('B4', 'NO'),
	('B4', 'ABSTAIN');

-- Insert 24 voting registrations, distributed among 3 ballots, 3 centers, and 2 months
 INSERT INTO voting_registrations VALUES
	-- Registering for ballot 1 (B1) all at date 11-01-2023
    (11514, 11, 'B1', 'VC4', '2023-11-01'), -- Go to VC 4 (PA)
    (12514, 12, 'B1', 'VC4', '2023-11-01'),
    (13514, 13, 'B1', 'VC4', '2023-11-01'),
    (14716, 14, 'B1', 'VC6', '2023-11-01'), -- Go to VC 6 (PA)
    (15716, 15, 'B1', 'VC6', '2023-11-01'),
    (16716, 16, 'B1', 'VC6', '2023-11-01'),
    (17113, 17, 'B1', 'VC3', '2023-11-01'), -- Go to VC 3 (MD)
    (18113, 18, 'B1', 'VC3', '2023-11-01'),
    
	-- Registering for ballot 2 (B2) all at date 11-02-2023
    (11524, 11, 'B2', 'VC4', '2023-11-02'), -- Go to VC 4 (PA)
    (12524, 12, 'B2', 'VC4', '2023-11-02'),
    (13524, 13, 'B2', 'VC4', '2023-11-02'),
    (14726, 14, 'B2', 'VC6', '2023-11-02'), -- Go to VC 6 (PA)
    (15726, 15, 'B2', 'VC6', '2023-11-02'),
    (16726, 16, 'B2', 'VC6', '2023-11-02'),
    (17123, 17, 'B2', 'VC3', '2023-11-02'), -- Go to VC 3 (MD)
    (18123, 18, 'B2', 'VC3', '2023-11-02'),
    
	-- Registering for ballot 3 (B3) all at date 12-01-2023
    (11534, 11, 'B3', 'VC4', '2023-12-01'), -- Go to VC 4 (PA)
    (12534, 12, 'B3', 'VC4', '2023-12-01'),
    (13534, 13, 'B3', 'VC4', '2023-12-01'),
    (14736, 14, 'B3', 'VC6', '2023-12-01'), -- Go to VC 6 (PA)
    (15736, 15, 'B3', 'VC6', '2023-12-01'),
    (16736, 16, 'B3', 'VC6', '2023-12-01'),
    (17133, 17, 'B3', 'VC3', '2023-12-01'), -- Go to VC 3 (MD)
    (18133, 18, 'B3', 'VC3', '2023-12-01');
    

-- Insert 18 cast votes, distributed among 2 ballots (RegNum, choice, castDate, monitorID)
INSERT INTO cast_votes VALUES
	-- Cast vote for B1 w/ 40 as Monitor (PA)
	(11514, 'YES', '2023-11-01', 40),
    (12514, 'YES', '2023-11-01', 40),
    (13514, 'YES', '2023-11-01', 40),
    -- Cast vote for B1 w/ 60 as Monitor (PA)
    (14716, 'YES', '2023-11-01', 60),
    (15716, 'NO', '2023-11-01', 60),
    (16716, 'ABSTAIN', '2023-11-01', 60),
    -- Cast vote for B1 w/ 50 as Monitor (MD)
    (17113, 'NO', '2023-11-01', 50),
    (18113, 'NO', '2023-11-01', 50),
    
    -- Cast vote for B2 w/ 40 as Monitor (PA)
    (11524, 'YES', '2023-11-02', 40),
    (12524, 'NO', '2023-11-02', 40),
    (13524, 'NO', '2023-11-02', 40),
    -- Cast vote for B2 w/ 60 as Monitor (PA)
    (14726, 'NO', '2023-11-02', 60),
    (15726, 'ABSTAIN', '2023-11-02', 60),
    (16726, 'ABSTAIN', '2023-11-02', 60),
    -- Cast vote for B2 w/ 50 as Monitor (MD)
    (17123, 'YES', '2023-11-02', 50),
    (18123, 'YES', '2023-11-02', 50),
    
    -- Cast vote for B3 w/ 40 as Monitor (PA)
    (11534, 'NO', '2023-12-01', 40),
    (12534, 'NO', '2023-12-01', 40);

