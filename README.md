# sql-challenge

## EmployeeSQL 
The EmployeeSQL folder contains the data on the company's employee/department records. The folder also contains the .sql files that contain the queries used to establsih the tables that the data csv files would be imported into, as well an Entity Relationship Diagram (ERD) that depicts how these tables are related to each other through primary and foreign keys.

### Data
Inside the data folder are several csv files named after the information that is held within them. After the tables for these csv files were created, they would then be imported into table swith similar names, in order to keep the naming conventions organized.

### SQLCode
Within the SQL code folder, there are two .sql files that describe both the table schemata for the tables that were produced through querying, and a file that describes the code used in the queries. The .png file is an image of the ERD file depcting how the tables are related to each other when querying them. 

#### ERD
![ERD file](https://github.com/EdGonz44/sql-challenge/blob/main/EmployeeSQL/SQL_code/ERD.png) 

The Entity Relationship Diagram depicted above describes the 6 tables that were created in order to store the data from the csv files. Each table describes the relevant datatype and limitations used for each column within the tables, as well as their naming within the table. The image of a key next to the name of one of the columns within the table denotes it as the primary key used in said table, with multiple keys in a table used to represent a composite key within the table.


#### SQL queries
The queries used in analyzing the data is contained within this sql file: [SQL Queries](https://github.com/EdGonz44/sql-challenge/blob/main/EmployeeSQL/SQL_code/sql_challenge_queries.sql)
The first half of the query file describes how the tables were created in order to properly import the data, and the second half shows the code used to make queries using said data. Depictions of some of the data received for making each analysis is shown below, and can be found in the [Query_images](https://github.com/EdGonz44/sql-challenge/tree/main/EmployeeSQL/Query_images) folder:

1. List the employee number, last name, first name, sex, and salary of each employee.
![Query 1](https://github.com/EdGonz44/sql-challenge/blob/main/EmployeeSQL/Query_images/Query_1.png)

2. List the first name, last name, and hire date for the employees who were hired in 1986.
![Query_2](https://github.com/EdGonz44/sql-challenge/blob/main/EmployeeSQL/Query_images/Query_2.png)

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
![Query_3](https://github.com/EdGonz44/sql-challenge/blob/main/EmployeeSQL/Query_images/Query_3.png)

4. -List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
![Query_4](https://github.com/EdGonz44/sql-challenge/blob/main/EmployeeSQL/Query_images/Query_4.png)

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
![Query_5](https://github.com/EdGonz44/sql-challenge/blob/main/EmployeeSQL/Query_images/Query_5.png)

6. List each employee in the Sales department, including their employee number, last name, and first name.
![Query_6](https://github.com/EdGonz44/sql-challenge/blob/main/EmployeeSQL/Query_images/Query_6.png)

7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
![Query_7](https://github.com/EdGonz44/sql-challenge/blob/main/EmployeeSQL/Query_images/Query_7.png)

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
![Query_8](https://github.com/EdGonz44/sql-challenge/blob/main/EmployeeSQL/Query_images/Query_8.png)

#### SQL Schema
The table schema of the table created to import the data can be found in the .sql file found in the [sql_challenge_table_schema](https://github.com/EdGonz44/sql-challenge/blob/main/EmployeeSQL/SQL_code/sql_challenge_table_schema.sql).






