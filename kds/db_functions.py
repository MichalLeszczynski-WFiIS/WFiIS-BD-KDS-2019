import psycopg2


def insert_value(name, form):
    conn = psycopg2.connect(host="localhost", database="postgres", user="ml", password="docker")
    cur = conn.cursor()
    print("Inserting values")
    into = ""
    values = ""
    for index, field in enumerate(form):
        if field.name not in ['csrf_token', 'submit']:
            separator = ", " if index is not 0 else ""
            into += separator
            into += field.name
            values += separator
            values += "\'" + str(field.data) + "\'"

    insert = "INSERT INTO {} ({}) VALUES ({});".format(name, into, values)
    print(insert)
    cur.execute(insert)
    conn.commit()
    conn.close()


