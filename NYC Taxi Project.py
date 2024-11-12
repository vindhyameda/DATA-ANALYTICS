import pyodbc as odbc
import csv
def Exercise1(sqlcommandtorun):
conn_str = (
    r'Driver=SQL Server;' +
    r'Server=LAPTOP-90IKTFMO\SQLEXPRESS;' +
    r'Database=Fall 2024-NYCTaxi;' +
    r'Trusted_Connection=yes;' )

conn = odbc.connect(conn_str)

with conn.cursor() as cursor:
    # Read data from database nyctaxi_sample

   #sql = "SELECT * FROM nyctaxi_sample WHERE total_amount<0"
    #sql = "SELECT fare_amount FROM nyctaxi_sample WHERE  fare_amount > $200"
    cursor.execute(sqlcommandtorun)

    # Fetch all rows
    columns = [desc[0] for desc in cursor.description]
    rows = cursor.fetchall()
    for row in rows:
       print(row)

    #c = csv.writer(open("Refund.csv", "w"))
    #c.writerows(rows)

    #c = csv.writer(open("Paid"\.csv", "w"))
   # c.writerows(rows)
    #conn.close()

Exercise1("SELECT fare_amount FROM nyctaxi_sample WHERE  fare_amount > $200")
Exercise1("SELECT * FROM nyctaxi_sample WHERE total_amount<0")
