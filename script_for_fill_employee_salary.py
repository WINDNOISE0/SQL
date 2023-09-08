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

employee_id = random.sample(range(1, 71), 30)


for emp_id in employee_id:
    salary_id = random.randint(1, 16)
    query = "INSERT INTO employee_salary (employee_id, salary_id) VALUES (%s, %s)"
    values = (emp_id, salary_id)
    cursor.execute(query, values)

employee_no1 = random.sample(range(70, 100), 10) # 1-30 + 9 = 40

for emp_no1 in employee_no1:
    salary_id = random.randint(1, 16)
    query = "INSERT INTO employee_salary (employee_id, salary_id) VALUES (%s, %s)"
    values = (emp_no1, salary_id)
    cursor.execute(query, values)


conn.commit()
cursor.close()
conn.close()

