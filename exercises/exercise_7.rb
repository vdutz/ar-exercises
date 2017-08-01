require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

#VALIDATION FOR NEW STORE ENTRY
# puts "Enter a name for a new store:"
# new_name = gets.chomp

# store = Store.new(name: new_name, annual_revenue: 255000, mens_apparel: false, womens_apparel: true)
# store.save

# puts store.errors.full_messages


#VALIDATION FOR NEW EMPLOYEE ENTRY
employee = @store1.employees.create(first_name: "James", last_name: "Cook", hourly_rate: 42)

puts employee.errors.full_messages