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

role_name = ["Junior Python developer", "Middle Python developer", "Senior Python developer",
                  "Junior Java developer", "Middle Java developer", "Senior Java developer",
                  "Junior JavaScript developer", "Middle JavaScript developer", "Senior JavaScript developer",
                  "Junior Manual QA engineer", "Middle Manual QA engineer", "Senior Manual QA engineer",
                  "Project Manager", "Designer", "HR", "CEO", "Sales manager", "Junior Automation QA engineer",
                  "Middle Automation QA engineer", "Senior Automation QA engineer"]


cursor = conn.cursor()
for name in role_name:

    query = "INSERT INTO roles (role_name) VALUES (%s)"
    values = (name,)
    cursor.execute(query, values)


conn.commit()
cursor.close()
conn.close()