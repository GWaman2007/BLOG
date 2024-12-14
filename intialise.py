import mysql.connector
from mysql.connector import errorcode

# Database configuration
config = {
    'user': 'root',
    'password': '@M@N2007',
    'host': 'localhost',
}

def drop_database_if_exists(cursor):
    try:
        cursor.execute("DROP DATABASE IF EXISTS code_blog")
        print("Database dropped (if it existed).")
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        exit(1)

def create_database(cursor):
    try:
        cursor.execute("CREATE DATABASE code_blog")
        cursor.execute("USE code_blog")
        print("Database created and selected.")
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        exit(1)

def create_tables(cursor):
    tables = {
        'users': (
            "CREATE TABLE users ("
            "id INT AUTO_INCREMENT PRIMARY KEY, "
            "username VARCHAR(50) NOT NULL UNIQUE, "
            "password VARCHAR(255) NOT NULL, "
            "is_admin BOOLEAN DEFAULT FALSE, "
            "created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP"
            ")"
        ),
        'blogs': (
            "CREATE TABLE blogs ("
            "id INT AUTO_INCREMENT PRIMARY KEY, "
            "title VARCHAR(255) NOT NULL, "
            "content TEXT NOT NULL, "
            "username VARCHAR(50), "
            "like_count INT DEFAULT 0, "
            "created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, "
            "FOREIGN KEY (username) REFERENCES users(username)"
            ")"
        ),
        'blog_likes': (
            "CREATE TABLE blog_likes ("
            "id INT AUTO_INCREMENT PRIMARY KEY, "
            "blog_id INT, "
            "user_id INT, "
            "created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, "
            "FOREIGN KEY (blog_id) REFERENCES blogs(id), "
            "FOREIGN KEY (user_id) REFERENCES users(id), "
            "UNIQUE(blog_id, user_id) "
            ")"
        )
    }

    for table_name in tables:
        table_creation_query = tables[table_name]
        try:
            cursor.execute(table_creation_query)
            print(f"Table '{table_name}' created.")
        except mysql.connector.Error as err:
            print(f"Error creating table '{table_name}': {err}")
            exit(1)

def main():
    try:
        conn = mysql.connector.connect(**config)
        cursor = conn.cursor()
        
        drop_database_if_exists(cursor)
        create_database(cursor)
        create_tables(cursor)

    except mysql.connector.Error as err:
        print(f"Error: {err}")
        exit(1)
    
    finally:
        cursor.close()
        conn.close()

if __name__ == "__main__":
    main()
