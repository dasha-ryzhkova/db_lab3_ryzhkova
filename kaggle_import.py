import psycopg2
import csv


username = 'ryzhkova_daria'
password = '1111'
database = 'lab2_DB'
host = 'localhost'
port = '5432'

INPUT_CSV_FILE = 'C:\\Users\Asus\Desktop\poddf.csv'

query_4 = '''
drop table Podcasts_New
'''

# index,Name,Rating_Volume,Rating,Genre,Description
query_0 = '''
CREATE TABLE Podcasts_New
(
    pod_id             int NOT NULL,
    pod_name           character(200),
    genre        	   character(200),
    rating             character(10),
    viewers_quantity   character(10), 


    CONSTRAINT PK_Podcasts_New PRIMARY KEY (pod_id)
)
'''

query_1 = '''
DELETE FROM Podcasts_New
'''

query_2 = '''
INSERT INTO Podcasts_New(pod_id, pod_name, genre,rating, viewers_quantity)
VALUES (%s, %s, %s, %s, %s)
'''


conn = psycopg2.connect(user=username, password=password, dbname=database)
# index,Name,Rating_Volume,Rating,Genre,Description
with conn:
    cur = conn.cursor()
    cur.execute(query_4)
    cur.execute(query_0)
    cur.execute(query_1)
    with open(INPUT_CSV_FILE, encoding='utf-8', newline='') as inf:
        reader = csv.DictReader(inf)
        for idx, row in enumerate(reader):
            pod_id = (idx+1)
            pod_name = (row['Name'])
            genre = (row['Genre'])
            rating = (row['Rating'])
            viewers_quantity = (row['Rating_Volume'])
            values = (pod_id, pod_name, genre, rating, viewers_quantity)
            cur.execute(query_2, values)

    conn.commit()