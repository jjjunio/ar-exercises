require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

puts "Annual Revenue form all stores: #{Store.sum(:annual_revenue)}"
puts "Annual Revenue Avergae from each store: #{Store.average(:annual_revenue)}"
puts "Top Performing Stores: #{Store.where("annual_revenue > ?", 1000000).size}"
