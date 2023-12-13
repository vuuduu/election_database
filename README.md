# ELECTION DATABASE
## Files Description ##
* The createAll.sql contains all the neccessary SQL code to set up the schema and table for the election database
* The loadAll.sql contains the intial data that the elections database
* The deleteAll.sql DROP all the tables as well as the elections schema.
* The two jupyter notebook go through variaous queries and and setup for the database. For example
  * A clerk working at a voting centers create a necessary ballots.
  * A folks registering for a ballots based on where they live
  * Create a User Procedure that would return the closest Voting Center of a given folks's residence

## Running the Database ##
* Download the file to your database management (E.g MySql Workbench, Microsoft SQL server, etc..)
* Execute the createAll.sql, then loadAll.sql (Optional: execute the deleteAll.sql to test that it work then re-run the createAll.sql and loadAll.sql)
* To test the Database, open up one of the notebook and run each one of the cells. This will test various functionality of the Database.
