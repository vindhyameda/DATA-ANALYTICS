#pyodbc from python package (odbc= Open database connectivity- helps to connect application to driver)

# machine name, server name, DB name to connect in SQL- same with Py, Use syntax below- create a connection via teh conn_string
# Connect to it FIRST
#Cursor is teh latest memory of teh SQL server

import pyodbc as odbc
import csv
conn_str = (
    r'Driver=SQL Server;' +
    r'Server=LAPTOP-90IKTFMO\SQLEXPRESS;' +
    r'Database=Fall 2024-NYCTaxi;' +
    r'Trusted_Connection=yes;' )

#cursor concept
conn = odbc.connect(conn_str)

with conn.cursor() as cursor:
    # Read data from database
    sql = "SELECT * FROM Employee"
    cursor.execute(sql)

    # Fetch all rows
    columns = [desc[0] for desc in cursor.description]
    rows = cursor.fetchall()
    for row in rows:
       print(row)
# This code below is from taking data from here and placing in a file. The rows are being put into C which is the handle.
c= csv.writer(open("temp.csv","w"))
c.writerows(rows)

conn.close()

