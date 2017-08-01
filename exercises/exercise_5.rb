require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...


total_revenue = Store.sum('annual_revenue')
puts "Total Revenue"
puts total_revenue

stores = Store.count
puts "Number of Stores"
puts stores

puts "Average Revenue per Store"
puts total_revenue / stores

puts "Nuber of Stores with over $1M in Revenue"
puts Store.where('annual_revenue > 1000000').count