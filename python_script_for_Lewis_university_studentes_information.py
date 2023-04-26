#!/usr/bin/env python
# coding: utf-8

# In[5]:


#Installing sqlalchemy library
pip install sqlalchemy


# In[7]:


#importing the padas and sqlalchemy packages
import pandas as pd
from sqlalchemy import create_engine
from sqlalchemy.exc import SQLAlchemyError


# In[8]:


# Creating a connection to the database engine
try:
    engine = create_engine('mysql+pymysql://root:@localhost/Lewis')
    print("Connection to MySQL database successful!")
    
except SQLAlchemyError as e:
    print(f"An error occurred while connecting to the database: {e}")


# In[11]:


# Running an SQL query to select all rows from the courseinfo table in the database
course_info_data=pd.read_sql_query('SELECT * FROM courseinfo',engine)

# Displaying the results of the SQL query
course_info_data


# In[13]:


# Export the Data in courseinfo table to an Excel file at the given path, without including the index column
file=r"C:\Users\vjanga\Desktop\course_info_data.xlsx"

try:
    course_info_data.to_excel(file, index=False)
    print("Excel file saved successfully.")
except Exception as e:
    print(f"An error occurred while saving the Excel file: {e}")


# In[ ]:





# In[10]:


# Running an SQL query to show all tables in the database
tables=pd.read_sql('show tables',engine)
tables


# In[16]:


# Export the tables in the database to a txt file at the given path, including the index column
tables_file=r"C:\Users\vjanga\Desktop\tablesinfo.txt"
try:
    tables.to_csv(tables_file)
    print("txt file saved successfully.")
except Exception as e:
    print(f"An error occurred while saving the Excel file: {e}")


# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:




