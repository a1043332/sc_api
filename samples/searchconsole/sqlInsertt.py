import mysql.connector
from mysql.connector import Error

def sqlInsert(sql):
    try:
        
        connection = mysql.connector.connect(
            host='localhost',         
            database='SC', 
            user='hdd',        
            password='hdd')  

        if connection.is_connected():

            
            db_Info = connection.get_server_info()
            print("version", db_Info)

            

            cursor = connection.cursor()
            cursor.execute(sql)
            connection.commit()
            

    except Error as e:
        print("error", e)

    finally:
        if (connection.is_connected()):
            cursor.close()
            connection.close()
            print("closed")
