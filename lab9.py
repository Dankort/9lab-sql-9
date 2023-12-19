import mysql.connector
config = {
  'user': 'root',
  'password': 'Pantroams23',
  'host': 'localhost',
  'database': 'sakila'}

mydb = mysql.connector.connect(**config)

print("results 1")

cursor1 = mydb.cursor()

cursor1.execute("select  count(rm.rental_id) as rental_count, rm.customer_id, c.first_name, c.last_name from rental_may as rm left join customer as c on rm.customer_id = c.customer_id group by  customer_id")

myresults1 = cursor1.fetchall()

for x in myresults1:
    print(x)
    
print("end of results 1")
print("results 2")


cursor2 = mydb.cursor()

cursor2.execute("select  count(rj.rental_id) as rental_count, rj.customer_id, c.first_name, c.last_name from rental_june as rj left join customer as c on rj.customer_id = c.customer_id group by customer_id")

myresults2 = cursor2.fetchall()

for x in myresults2:
    print(x)