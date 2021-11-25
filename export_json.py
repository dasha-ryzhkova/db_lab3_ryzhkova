import json
import psycopg2

username = 'ryzhkova_daria'
password = '1111'
database = 'lab2_DB'
host = 'localhost'
port = '5432'

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

data = {}
with conn:

    cur = conn.cursor()

    for table in ('Genres', 'Authors', 'Countries', 'Podcasts', 'Podcasts_New'):
        cur.execute('SELECT * FROM ' + table)
        rows = []
        fields = [x[0] for x in cur.description]
        for row in cur:
            rows.append(dict(zip(fields, row)))
        data[table] = rows
    with open('C:\\Users\Asus\Desktop\\all_data.json', 'w') as outf:
        json.dump(data, outf, default = str)