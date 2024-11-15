import pyodbc
import pandas as pd

conn_str = (
    r'Driver=SQL Server;' +
    r'Server=LAPTOP-90IKTFMO\SQLEXPRESS;' +
    r'Database=Fall 2024-NYCTaxi;' +
    r'Trusted_Connection=yes;'
)

def get_data_from_sql(conn_str, sqlcommandrun):
    try:
        conn = pyodbc.connect(conn_str)
        df = pd.read_sql(sqlcommandrun, conn)
        conn.close()
        return df
    except Exception as e:
        print(f"Error: {e}")
        return pd.DataFrame()  # Return an empty DataFrame if error occurs

# SQL queries
sql_query1 = "SELECT EDept_Id, AVG(Emp_Sal) AS AvgSalary, SUM(Emp_Sal) AS SumSalary FROM EMPLOYEE GROUP BY EDept_Id"
sql_query2 = "SELECT Dept_Id, Dept_name FROM Department"

# Fetch data
df1 = get_data_from_sql(conn_str, sql_query1)
df2 = get_data_from_sql(conn_str, sql_query2)

# Return data
df1, df2
