# db_library.py
import psycopg2

def get_db_connection():
    """Estabelece a conexão com o banco de dados PostgreSQL"""
    conn = psycopg2.connect(
        dbname="seu_banco_de_dados",
        user="seu_usuario",
        password="sua_senha",
        host="localhost",
        port="5432"
    )
    return conn

def execute_query(query):
    """Executa a query no banco de dados"""
    conn = get_db_connection()
    cur = conn.cursor()
    cur.execute(query)
    result = cur.fetchall()
    conn.commit()
    cur.close()
    conn.close()
    return result
