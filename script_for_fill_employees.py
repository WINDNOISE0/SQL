import psycopg2
from faker import Faker

conn = psycopg2.connect(
    database="qa_ddl_35_2",
    user="qa_35_gr_user_2",
    password="Cold101)",
    host="159.69.151.133",
    port="5056"
)

fake = Faker()

employee_names = [fake.name() for _ in range(70)]

cursor = conn.cursor()
for name in employee_names:  # Пример: добавление 10 значений

    query = "INSERT INTO employees (employee_name) VALUES (%s)"
    values = (name,)
    cursor.execute(query, values)


conn.commit()
cursor.close()
conn.close()

