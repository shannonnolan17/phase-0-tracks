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

def create_new_item(db, location, item)
  db.execute("INSERT INTO todo_list (location, item) VALUES (?, ?)", [location, item])
end

def delete_item(db, item)
  db.execute("DELETE FROM todo_list WHERE item = ?", [item])
end




#----------------USER INTERFACE--------------------------
puts "Welcome to your To Do List!"

loop do
puts "Would you like to add or delete from your list? Or type done if you don't wish to do anything!"
user_input = gets.chomp
break if user_input == 'done'
if user_input == 'add'
  puts "Where does this task take place?"
  new_location = gets.chomp
  puts "What do you need to do?"
  new_item = gets.chomp
  create_new_item(db, new_location, new_item)
elsif user_input == 'delete'
  puts "What task would you like to do delete?"
  deleted_item = gets.chomp
  delete_item(db, deleted_item)
else
  puts "Sorry, we did not get that! Try again!"
end
end

list = db.execute("SELECT * FROM todo_list")
list.each do |sub_array|
  sub_array.each do |item|
    puts item
  end
end
