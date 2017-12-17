# Solutions
###  Solution 1 - folder: **AccountingFirmDB** - SQL test
### Solution 2 - please see section **b.** (whole unix command)
### Solution 3 - folder: **ForensicComputer** - finding DNK sequence
### Solution 4 - folder: **Practical** - practical solution (file parser, web table, create table and csv files)
### Solution 4 - addon folder: **DataTableTest** - test that jQuery commponent works inside web page

# Basic test for Junior Developer
**a.**	Create database structure for accounting firm. Keep in mind that accounting firm has to keep records of their clients, clients incoming and outgoing invoices, costs and has to keep receipts for at least 5 years. Most frequent query is by client name and yearly income and second one is getting most profitable client
**Solution**
Please see folder – AccountingFirmDB for create and select test scripts. Files are in sql file format.

**b.**	How would you find all files  that  ends with “.js”  and bundle them together into one file.
**Solution in Bash command:**
find . -type f -name '*.js' -exec cat {} + >> main.js

**c.**	You are a forensic computer scientist, and you have to write a program that finds the right person responsible for a murder. the detective sent you an DNK sample of a murderer and list of 3 suspect. Data sent to you:
**i.	DNK:** HHHKLJ140L98IHYYYN (CODE: HAIR, EYES, RACE)
**ii.	Note for me:** You check that it contains all three attributes, then this is the person! Single object – single person, use properties!
**iii.	Suspects:**
1.	John Novak 
a.	Hair:  Black
b.	Eyes: Green
c.	Race: Asian
2.	Vin Diesel:
 .	Hair: Blonde
a.	Eyes: Brown
b.	Race: Caucasian
3.	 Guy Fawkes:
 .	Hair: Black
a.	Eyes: Brown
b.	Race: Hispanic
**iv.	Legend**
1.	Eyes:
a.	Black:  140L98
b.	Green: 140A98
c.	Brown: 140A88
d.	Blue:    140L97
2.	Hair: 
 .	Brown: HHHKLJ
a.	Black:   HHHKLI
b.	Blonde: HHLH1L
c.	White:  HHLH2L
3.	Race:
 .	Asian: 1HYYYN
a.	Hispanic: IHYYYN
b.	White: IHYYNN

**Solution:**
is in folder **ForensicComputer**. This is Command Prompt/Bash application. Run it command line **»php ForensicComputer.php«**. Solution found neither of listed persons. I have to have create my own **»Perfect Suspect person«**, which matched the case.


**Practical:**

Data: https://admin.b2b-carmarket.com//test/project
1.	Write a parser for provided data, so you get a valid associative array of all the rows
2.	Create appropriate database table and write all the rows into it, be careful there could be a lot of rows
3.	Generate fake Names and Surnames for all of the Buyers in separated table, one for each buyer.
4.	Write php script that prints all of the rows in paginated table
5.	Use jQuery to make pagination async, make sure that URL still changes.
6.	Write simple search functionality, that searched based on Name,Surname and SaleDate

Hint: https://datatables.net/, if you decide to use Datatables, make sure that all searching and paging is done in PHP not in JS!

**Solution**
is in folder **»Practical«**. Solution is in two php files FileParser.php and DataGrid.php. First file is command line tool, which is run by »php FileParser.php«
Second file is web page using DataTables.Net jQuery component. (you have to wait couple of moments/seconds to fully load) 
After running »php FileParser.php«, we have filled data into table stored in MySQL. Please firstly find sql file (DataFileTableAndDB.sql) that is Create table for »datafile« table. Also, you can find testing sql commands »TestData.sql«

For pasing data, there are prepared three CSV files:
-	Project.html
-	Names.csv and Surname.csv (generated from http://listofrandomnames.com/)

For mock up/testing DataTables.Net jQuery component, there is folder named »DataTableTest«
