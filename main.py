import psycopg2
import matplotlib.pyplot as plt

username = 'ryzhkova_daria'
password = '1111'
database = 'lab2_DB'
host = 'localhost'
port = '5432'

query_1 = '''
create view GenreTotal as
select TRIM(genre_name), sum(viewers_quantity) as quantity
from podcasts inner join genres using(genre_id) 
group by genre_name 
order by quantity
'''
query_2 = '''
create view Viewers as 
select pod_name, viewers_quantity 
from Podcasts 
where genre_id = '2000000001' 
order by pod_name
'''

query_3 = '''
create view Rating as
select viewers_quantity, rating
from Podcasts  
where country_id = '003' 
order by viewers_quantity
'''

con = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)
print(type(con))

with con:

    cur = con.cursor()

    cur.execute('DROP VIEW IF EXISTS GenreTotal')

    cur.execute(query_1)

    cur.execute('SELECT * FROM GenreTotal')
    genre = []
    total = []
    for row in cur:
        genre.append(row[0])
        total.append(row[1])
    x_range = range(len(genre))

    plt.bar(genre, total)
    plt.title('Популярність подкастів \nпо жанрам')
    plt.xlabel("Genre")
    plt.ylabel("Viewers")
    plt.show()


    cur.execute('DROP VIEW IF EXISTS Viewers')

    cur.execute(query_2)

    cur.execute('SELECT * FROM Viewers')

    pod_name = []
    total = []
    for row in cur:
        pod_name.append(row[0])
        total.append(row[1])
    x_range = range(len(pod_name))


    plt.pie(total, labels=pod_name, autopct='%1.1f%%')
    plt.title('Кількість слухачів уподкастів в жанрі Technology')
    plt.show()


    cur.execute('DROP VIEW IF EXISTS Rating')

    cur.execute(query_3)

    cur.execute('SELECT * FROM Rating')

    quantity = []
    rating = []
    for row in cur:
        quantity.append(row[0])
        rating.append(row[1])
    x_range = range(len(quantity))

    plt.plot(quantity, rating, marker='o')
    plt.xlabel('Viewers')
    plt.ylabel('Rating')
    plt.title('Графік залежності оцінки від\n кількості слухачів подкастів в USA')
    for qnt, price in zip(quantity, rating):
        plt.annotate(price, xy=(qnt, price), xytext=(7, 2), textcoords='offset points')
    plt.show()
