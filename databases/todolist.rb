require 'sqlite3'

db = SQLite3::Database.new("todolist.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS todo_list(
    id INTEGER PRIMARY KEY,
    location VARCHAR(255),
    item VARCHAR(255)
  )
SQL

db.execute(create_table_cmd)