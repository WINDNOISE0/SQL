import psycopg2
from faker import Faker
import random

conn = psycopg2.connect(
    database="qa_ddl_35_2",
    user="qa_35_gr_user_2",
    password="Cold101)",
    host="159.69.151.133",
    port="5056"
)

fake = Faker()
cursor = conn.cursor()


employee_id = random.sample(range(1, 71), 40) # мин - 1, макс - 70, количество раз - 40 (список из 40 элем)

for emp_id in employee_id:
    role_id = random.randint(1, 20)
    query = "INSERT INTO roles_employee (employee_id, role_id) VALUES (%s, %s)"
    values = (emp_id, role_id)
    cursor.execute(query, values)


conn.commit()
cursor.close()
conn.close()

