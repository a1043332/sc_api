import mysql.connector
from mysql.connector import Error

try:
    # ³s±µ MySQL/MariaDB ¸ê®w
    connection = mysql.connector.connect(
        host='localhost',          # ¥D¾÷Ù        d
	database='SC', # ¸ê®w¦WºÙ        u
	user='hdd',        # ±b¸¹
        password='hdd')  # ±K½X

    if connection.is_connected():

        # Å¥ܸê®wª©¥»
        db_Info = connection.get_server_info()
        print("version", db_Info)

        # Å¥ܥثe¨ϥΪº¸ê®w
        cursor = connection.cursor()
        cursor.execute("SELECT DATABASE()")
        record = cursor.fetchone()
        print("now in useing", record)

        cursor.execute("select * from query;")

        for(SCKey) in cursor:
            print("key: %s" %(SCKey))

        sql='insert into query(SCKey,Click,Impressions,CTR,Position) value ("qqqqq",1,2,3,4)'
        cursor.execute(sql)
        connection.commit()

except Error as e:
    print("error", e)

finally:
    if (connection.is_connected()):
        cursor.close()
        connection.close()
        print("closed")
