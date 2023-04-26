#importing the pandas and sqlalchemy libraries
import pandas as pd
from sqlalchemy import create_engine
from sqlalchemy.exc import SQLAlchemyError


# Creating a connection to the database engine
try:
    engine = create_engine('mysql+pymysql://root:@localhost/Lewis')
    print("Connection to MySQL database successful!")
    
except SQLAlchemyError as e:
    print(f"An error occurred while connecting to the database: {e}")

# Running an SQL query to select all rows from the courseinfo table in the database
course_info_data=pd.read_sql_query('SELECT * FROM courseinfo',engine)

# Displaying the results of the SQL query
print('')
print('Data in the courseinfo table :')
print('')
print(course_info_data)
print('')

# Saving the Data in courseinfo table to an Excel file at the given path, without including the index column
file=r"C:\Users\vjanga\Desktop\course_data_from_mysql.xlsx"

try:
    course_info_data.to_excel(file, index=False)
    print("Excel file saved successfully.")
except Exception as e:
    print(f"An error occurred while saving the Excel file: {e}")

# Running an SQL query to show all tables in the database
tables=pd.read_sql('show tables',engine)
print('')
print('tables in the LEWIS database :')
print('')
print(tables)
print('')


# Saving the tables in the database to a txt file at the given path, including the index column
tables_file=r"C:\Users\vjanga\Desktop\tablesinfo_from_mysql.txt"
try:
    tables.to_csv(tables_file)
    print("txt file saved successfully.")
except Exception as e:
    print(f"An error occurred while saving the Excel file: {e}")





