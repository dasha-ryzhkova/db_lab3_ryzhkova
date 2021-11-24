import csv
import psycopg2

username = 'ryzhkova_daria'
password = '1111'
database = 'lab2_DB'


OUTPUT_FILE_T = 'C:\\Users\Asus\Desktop\lab2_DB_{}.csv'

TABLES = [
    'Podcasts',
    'Genres',
    'Authors',
    'Countries',
    'Podcasts_New',
]

conn = psycopg2.connect(user=username, password=password, dbname=database)

with conn:
    cur = conn.cursor()

    for table_name in TABLES:
        cur.execute('SELECT * FROM ' + table_name)
        fields = [x[0] for x in cur.description]
        with open(OUTPUT_FILE_T.format(table_name), 'w', encoding='utf-8', newline='') as outfile:
            writer = csv.writer(outfile)
            writer.writerow(fields)
            for row in cur:
                writer.writerow([str(x) for x in row])