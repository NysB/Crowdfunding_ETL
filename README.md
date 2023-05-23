# Project 2: Crowdfunding ETL

ETL (Extract, Transform and Load) is an action where we combine data from different sources into a sizeable central repository. It provides foundation for data analysis because it implements specific needs like monthly reporting and addresses more advance analytics.


![](https://github.com/NysB/Crowdfunding_ETL/blob/main/ETL-intro%20gif.gif)

 
### Many organizations make use of ETL for the following:
1.	Extract data from legacy systems.
* Because legacy systems are implemented on old technologies and platforms, it’s a tedious job to processes high-volume structured and unstructured data due to it being only adapted to deliver specific data-sets. (Often crashes and performs slowly)
* *ETL Solves this issue by being able to handle structure and unstructured data.*

2.	Improve the quality of the data by cleaning the data sets
* ETL can identify data errors (incorrect/incomplete/duplicate). This helps correcting data sets to provide continuous data processing.

3. Importing data into a target database
* Can migrate large amount of data from legacy systems into a data warehouse. 


## **Introduction**<br/>
In this project we’re practicing using ETL pipeline by utilizing Python and Pandas to extract and transform our datasets. Then we’ll use the transformed data to create our CSV file to make our ERD and a table schema. 
: <br/>
* Utilize python/pandas to
  * Create a Category and Subcategory DataFrames <br/>
  * Create a Campaign DataFrame <br/>
  * Create a Contacts DataFrame <br/>
* Utilize postgres to
  * Create a Crowdfunding Database with a pairing ERD (Entity Relationship Diagram) <br/>

## **Data**
For our analysis, we have transformed data extracted from the following datasets available in the Resources folder <br/>
   * contacts.xlsx <br/>
   * crowdfunding.xlsx <br/>


## **How to Run**
* No additional packages have to be installed if `pandas` , `numpy` , `openpyxl` are already in your program. To rerun our analysis, select `Run All` in the "ETL_Mini_Project_Starter_Code.ipynb" file.
* For `PostgresSQL` go to their website https://www.postgresql.org/download/ and follow their instruction for download. 
* For Crowdfunding_db_schema.sql, execute the schema in pgAdmin, and then import csv files in the order of category, subcategory, contacts, and then finally campaign.

* You can recreate our diagram by using https://dbdiagram.io/home
![](https://github.com/NysB/Crowdfunding_ETL/blob/main/ERD.JPG)




## **Outcome**
We were succesfully able to: <br/>
* export our DataFrames as csv files using *Starter_code.ipynb* <br/>
    * category.csv <br/>
    * subcategory.csv <br/>
    * campaign.csv <br/>
    * contacts.csv <br/>
* create a database schema with matching schema, ERD, and database using *crowdfunding_db_schema.sql* <br/>
    * ERD.jpg <br/>
    * crowdfunding_db_schema.sql <br/>


## **Technology/Tools used**
* `Python` <br/>
* `Pandas` <br/>
* `Postgres` <br/>
* https://dbdiagram.io/home <br/>


**Team Members:** <br/>
Zhao, Jessica: https://github.com/zhaojay47 <br/>
Im, Soo Bin: https://github.com/soobin83 <br/>
Lin, Philip: https://github.com/PhilipSJLin <br/>
Nys, Brecht: https://github.com/NysB <br/>
