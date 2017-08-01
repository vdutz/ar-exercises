require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Smith", hourly_rate:25)
@store1.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 30)
@store1.employees.create(first_name: "Dave", last_name: "Harvey", hourly_rate: 50)

@store2.employees.create(first_name: "Mike", last_name: "Jones", hourly_rate: 30)
@store2.employees.create(first_name: "Fifty", last_name: "Cent", hourly_rate: 45)
@store2.employees.create(first_name: "Biggie", last_name: "Smalls", hourly_rate: 70)

puts Employee.count