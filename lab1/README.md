## Description of Content
- **data.csv**
	- Contains the data produced by professor Chuang. The file is separated by commas, and contains a myriad of information regarding vehicles (owners, manufacturer, models, year, etc.), as well columns that determine what each vehicle is ranked in various categories.
- **run.awk**
	- Contains the awk script that will read the data.csv file, parse through the data and reformat into a table with columns, rows, and appropriate headers. This file can be used in conjunction with the **data.csv** file to create the **lab1.csv** file.
	- The file will parse through the data.csv file, and produce an output in table format separated by tabs. Each row in the output will contain a ranking, car_id, year, make, model, as well as a total accrued from the summation of the various categories that each vehicle is judged by.
- **sort.awk**
	- Contains the awk script that will read the csv file outputted from utilizing the **run.awk** file. This script will sift through the **lab1.csv** file, and sort it so that it will display data grouped by the make column and limited to three vehicles per vehicle make.
- **Makefile**
	- This file when ran will use the **run.awk** file and **data.csv** to create the **lab1.csv** file, which will be the parsed data from the data.csv file formatted into a table with columns, rows, and appropriate headers.
	- The file will also use the **sort.awk** file along the produced **lab1.csv** file to create the **sorted.csv** file which formats the output in **lab1.csv** to group vehicles by Make, and limited to three vehicles per make arranged in descending order based on the total column.
- **lab1.csv**
	- This file is produced from the **run.awk** and **data.csv**, which contains the formatted csv data in table format with headers, rows, and columns.
- **sorted.csv**
	- This file is produced from the **sort.awk** and **lab1.csv** files, which contains the formatted csv data separated by tabs in table format.
## Description of Raw Data
- The **data.csv** has a lengthy amount of information separated by commas signifying vehicles. Each vehicle has a specific owner, make, model type, and year made. Each vehicle is also judged on a number of categories such as amount of chrome, engine, looks, etc., with these categories used to develop a total for each vehicle which will be used for ranking during the parsing through awk.
- The latest version of each field is obtained through parsing the data using awk, the outputted **lab1.csv** grabs several columns including but not limited to: Car_ID, Year, Make, and Model. These are printed directly into the output csv file without manipulation or changes.
- Once this is done, the **run.awk** file will then go through the **data.csv** file, and for each vehicle, it will tally up the scores earned in each judge category to calculate a total. This total is then printed along side the aforementioned fields like so:
```
Car_ID   Year    Make      Model      Total
48       2015    Acura     TLX        62   
124      2015    Jeep      Wrangler   124   
222      2015    Lexus     Is250      40  
...
```
- In order to further order/sort the outputted data, we need to also rank the results from highest to lowest based on the total column, this is also done through the **run.awk** file, which in turn will have final output in **lab1.csv** appear as so below
```
Ranking    Car_ID    Year     Make      Model       Total
1          48        2015     Jeep      Wrangler    124  
2          124       2015     Acura     TLX         62   
3          222       2015     Lexus     Is250       40  
... 
```
- Note how the vehicles are ranked from highest total value to lowest total value
- Once that is done, the **sort.awk** file is called to sift through the **lab1.csv** file and produce the **sorted.csv** file which has the vehicles grouped by Makes, and for each make, three of the highest total value cars are printed out. That looks like the sample below
```
Ranking Car_ID  Year    Make    Model   Total
1       112     2008    Acura   TL      110
2       50      2015    Acura   TLX     102
3       127     2013    Acura   Tsx     86
4       15      2014    Audi    S4      120
5       18      2015    Audi    S3      38
6       116     2008    Audi    A4      28
7       2       2016    Bmw     M2      24
8       172     2014    Bmw     4       22
9       111     2007    Bmw     328i    10
```
- Notice how each make has three vehicles, for example: Acura has the TL, TLX, and Tsx printed, and the vehicle of make Acura with higest value in the total column being printed first, followed by the second highest, and the third highest.
	- Notice also how the makes are ranked alphabetically, with A's going first (Acura, Audi), then followed by letters with B (BMW).
- The **sorted.csv** file still has the vehicles ranked as well from 1 onwards, just like how it was done in the **lab1.csv** file.
## Dependencies
- In order for these scripts to run, the **data.csv** file must be included in the folder, as well as the **run.awk** and **sort.awk** awk files.

