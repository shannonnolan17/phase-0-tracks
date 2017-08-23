#Method to create a list: Hash
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
#define grocery_list of string of items
#Use .split(' ') method to separate into multiple strings which will put it into an array.
# steps:
# put grocery items into a hash and set default quantity.
# print the list to the console [can you use one of your other methods here?]
# output: Hash of items and quantity
#----------------------------------------------------------
# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: define method with 3 parameters, add to hash
# output: Updated item added to hash
#----------------------------------------------------------
# Method to remove an item from the list
# input: Put in item to delete.
# steps: define a method with 2 parameters to delete item
# output: Grocery list no longer has item
#----------------------------------------------------------
# Method to update the quantity of an item
# input: Put in item that needs quantity updated
# steps: Def method with 3 parameters to update quantity
# output: Item quantity is updated
#----------------------------------------------------------
# Method to print a list and make it look pretty
#input:
# steps: Printing the hash with the puts method. Prints quantity first.
# output: A pretty organized list.

def create_a_list(list)
  grocery_list = {}
  split_list = list.split(' ')
  split_list.each do |item|
    grocery_list[item] = 1
  end
  grocery_list
end
# list = "carrots apples cereal pizza"
# grocery_list = create_a_list(list)

def add_items(grocery_list, item, quantity)
  if grocery_list.include? item
    grocery_list[item] += quantity
  else
    grocery_list[item] = quantity
  end
  grocery_list
end
# add_items(grocery_list, "grapes", 2)
# add_items(grocery_list, "pizza", 2)
# p grocery_list

def remove_item(grocery_list, item)
  grocery_list.delete(item)
end


def update_quantity(grocery_list, item, quantity)
  grocery_list[item] = quantity
end
# update_quantity(grocery_list, "carrots", 3)
# p grocery_list


def pretty_list(grocery_list)
  grocery_list.each do |item, quantity|
    puts "#{quantity} #{item}"
  end
end
# pretty_list(grocery_list)
# p grocery_list

#----------------------------------------------------------

new_list = "bananas bread strawberries hummus"
grocery_list = create_a_list(new_list)
p grocery_list

add_items(grocery_list, "lemonade", 2)
add_items(grocery_list, "tomatoes", 3)
add_items(grocery_list, "onions", 1)
add_items(grocery_list, "ice cream", 4)
p grocery_list

remove_item(grocery_list, "lemonade")
p grocery_list

update_quantity(grocery_list, "ice cream", 1)
p grocery_list

pretty_list(grocery_list)

#----------------------------------------------------------

# What did you learn about pseudocode from working on this challenge?
  #I learned that good pseudocoding makes it really easy to code. The more thorough you are and tedious you are, the easier it is to go in and actually do it all!
# What are the tradeoffs of using arrays and hashes for this challenge?
  #For this challenge, it just made sense to use a hash since there were two things we wanted to add to our list. An array would not have been as easy or looked as good. It also would not as easily assigned a value to a key.
# What does a method return?
  #The method returns the last line of code unless otherwise specified.
# What kind of things can you pass into methods as arguments?
  #You can pass almost any object including other methods!
# How can you pass information between methods?
  #You can call other methods on methods and put things in the global scope so other methods can access it.
# What concepts were solidified in this challenge, and what concepts are still confusing?
  #The use of hashes were solidified for me. Also the idea of passing information between methods I understand better. I also see how creating multiple methods makes sense and makes it easier to tackle bigger challenges. I still struggle to understand scope and what can be accessed where sometimes.