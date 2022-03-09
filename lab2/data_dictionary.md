# Data Dictionary

### SQLITE Cars table schema

|Timestamp    |Email               |Name             |Year    |Make     |Model    |Car_ID        |Judge_ID                      |Judge_Name|Racer_Turbo  |Racer_Supercharged|Racer_Performance|Racer_Horsepower|Car_Overall  |Engine_Modifications|Engine_Performance|Engine_Chrome|Engine_Detailing|Engine_Cleanliness|Body_Frame_Undercarriage|Body_Frame_Suspension|Body_Frame_Chrome|Body_Frame_Detailing|Body_Frame_Cleanliness|Mods_Paint   |Mods_Body    |Mods_Wrap    |Mods_Rims    |Mods_Interior|Mods_Other   |Mods_ICE     |Mods_Aftermarket|Mods_WIP     |Mods_Overall |
|-------------|--------------------|-----------------|--------|---------|---------|--------------|------------------------------|----------|-------------|------------------|-----------------|----------------|-------------|--------------------|------------------|-------------|----------------|------------------|------------------------|---------------------|-----------------|--------------------|----------------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------|----------------|-------------|-------------|
|Date and time|Email for each entry|Name of car owner|Car year|Car maker|Car model|Unique integer|ID for each judge (non-unique)|Judge name|Integer [0-9]|Integer [0-9]     |Integer [0-9]    |Integer [0-9]   |Integer [0-9]|Integer [0-9]       |Integer [0-9]     |Integer [0-9]|Integer [0-9]   |Integer [0-9]     |Integer [0-9]           |Integer [0-9]        |Integer [0-9]    |Integer [0-9]       |Integer [0-9]         |Integer [0-9]|Integer [0-9]|Integer [0-9]|Integer [0-9]|Integer [0-9]|Integer [0-9]|Integer [0-9]|Integer [0-9]   |Integer [0-9]|Integer [0-9]|

### SQLITE Schema for Cars table
CREATE  TABLE  Cars (
&nbsp;&nbsp;[Timestamp] TIMESTAMP,
&nbsp;&nbsp;[Email] TEXT,
&nbsp;&nbsp;[Name] TEXT,
&nbsp;&nbsp;[Year] INTEGER,
&nbsp;&nbsp;[Make] TEXT,
&nbsp;&nbsp;[Model] TEXT,
&nbsp;&nbsp;[Car_ID] INTEGER  PRIMARY  KEY,
&nbsp;&nbsp;[Racer_Turbo] INTEGER,
&nbsp;&nbsp;[Racer_Supercharged] INTEGER,
&nbsp;&nbsp;[Racer_Performance] INTEGER,
&nbsp;&nbsp;[Racer_Horsepower] INTEGER,
&nbsp;&nbsp;[Car_Overall] INTEGER,
&nbsp;&nbsp;[Engine_Modifications] INTEGER,
&nbsp;&nbsp;[Engine_Performance] INTEGER,
&nbsp;&nbsp;[Engine_Chrome] INTEGER,
&nbsp;&nbsp;[Engine_Detailing] INTEGER,
&nbsp;&nbsp;[Engine_Cleanliness] INTEGER,
&nbsp;&nbsp;[Body_Frame_Undercarriage] INTEGER,
&nbsp;&nbsp;[Body_Frame_Suspension] INTEGER,
&nbsp;&nbsp;[Body_Frame_Chrome] INTEGER,
&nbsp;&nbsp;[Body_Frame_Detailing] INTEGER,
&nbsp;&nbsp;[Body_Frame_Cleanliness] INTEGER,
&nbsp;&nbsp;[Mods_Paint] INTEGER,
&nbsp;&nbsp;[Mods_Body] INTEGER,
&nbsp;&nbsp;[Mods_Wrap] INTEGER,
&nbsp;&nbsp;[Mods_Rims] INTEGER,
&nbsp;&nbsp;[Mods_Interior] INTEGER,
&nbsp;&nbsp;[Mods_Other] INTEGER,
&nbsp;&nbsp;[Mods_ICE] INTEGER,
&nbsp;&nbsp;[Mods_Aftermarket] INTEGER,
&nbsp;&nbsp;[Mods_WIP] INTEGER,
&nbsp;&nbsp;[Mods_Overall] INTEGER
);

### SQLITE Schema for Judges table
|Judge_ID       |Judge_Name    |
|---------------|--------------|
|Judge ID number|Judge name    |

The table is formulated using the Cars table to populate the data

CREATE TABLE Judges (
&nbsp;&nbsp;[Judge_ID] INTEGER,
&nbsp;&nbsp;[Judge_Name] TEXT
);

### SQLITE Schema for Car_Scores table
|Car_ID         |Score                          |
|---------------|-------------------------------|
|Unique ID      |Total score from all categories|

CREATE TABLE Car_Scores (
&nbsp;&nbsp;[Car_ID] INTEGER PRIMARY KEY,
&nbsp;&nbsp;[Score] INTEGER
);



# Files

- extract1.csv
	- Contains the output of the extract1.sql query which outputs the ID for each car, followed by the year, make, and model and displays alongside each entry total for each entry.
- extract2.csv
	- Contains the output of the extract2.sql query which outputs each vehicle entry ranked by top 3 of each make group and their total scores per listed entry.
- lab2.md is the database file
- data.csv contains the data which we used to compile our database, table, and outputted csv files.


